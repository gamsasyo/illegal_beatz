#!/bin/bash
# ILLEGAL BEATZ 파티 런처 — 더블클릭하면 서버 켜고 크롬 창 두 개를 프로젝터에 띄움.
#   프로젝터 2대가 연결돼 있으면 왼쪽 → skate, 오른쪽 → flight 로 자동 배치.
#   아니면 그냥 노트북 화면에 두 창 열림 (직접 끌어다 놓으면 됨).
# 창에서:  클릭 → F(전체화면) → 패드 ✕   /   M 프레임 조정   /   H HUD 숨김
cd "$(dirname "$0")"
pkill -f "http.server 8899" 2>/dev/null; sleep 0.3
python3 -m http.server 8899 --directory "$(pwd)" >/dev/null 2>&1 &
sleep 1

# 외부 디스플레이 좌표 (swift, 2~3초 걸림)
TMP=$(mktemp -d)
cat > "$TMP/disp.swift" <<'SW'
import CoreGraphics
var ids = [CGDirectDisplayID](repeating: 0, count: 8); var n: UInt32 = 0
CGGetActiveDisplayList(8, &ids, &n)
for i in 0..<Int(n) { let b = CGDisplayBounds(ids[i]); if CGDisplayIsMain(ids[i]) == 0 { print(Int(b.origin.x), Int(b.origin.y), Int(b.size.width), Int(b.size.height)) } }
SW
swift "$TMP/disp.swift" 2>/dev/null | sort -n > "$TMP/ext.txt"
N=$(wc -l < "$TMP/ext.txt" | tr -d ' ')

osascript -e 'tell application "Google Chrome" to close (every tab of every window whose URL contains "localhost:8899")' 2>/dev/null
osascript <<AS
tell application "Google Chrome"
  activate
  set cw to make new window
  set URL of active tab of cw to "http://localhost:8899/control.html"
  set bounds of cw to {0, 40, 1800, 1169}
end tell
AS
sleep 1
if [ "$N" -ge 2 ]; then
  read lx ly lw lh < <(sed -n 1p "$TMP/ext.txt"); read rx ry rw rh < <(sed -n 2p "$TMP/ext.txt")
  osascript <<AS
tell application "Google Chrome"
  activate
  set w1 to make new window
  set URL of active tab of w1 to "http://localhost:8899/dual.html?side=skate"
  set bounds of w1 to {$lx, $ly, $((lx+lw)), $((ly+lh))}
  set w2 to make new window
  set URL of active tab of w2 to "http://localhost:8899/dual.html?side=flight"
  set bounds of w2 to {$rx, $ry, $((rx+rw)), $((ry+rh))}
end tell
AS
  echo "프로젝터 2대 감지 → 왼쪽 skate / 오른쪽 flight. 각 창 클릭 → F → 패드 ✕"
else
  open -a "Google Chrome" "http://localhost:8899/dual.html?side=skate"
  sleep 0.5
  open -a "Google Chrome" --new "http://localhost:8899/dual.html?side=flight"
  echo "외부 디스플레이 $N 개 — 창 두 개 열었음. 프로젝터로 끌어다 놓고 F"
fi
