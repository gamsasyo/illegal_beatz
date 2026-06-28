# ILLEGAL BEATZ

> 음악은 곤조있게! 음악은 야마있게!
> _Too good to be legal._

**ILLEGAL BEATZ** 는 라이브 비트메이킹과 첨단 언더그라운드 클럽 사운드의 밤.
MPC와 에이블톤을 든 고수들이 무대 위에서 직접 부딪히는 라이브 프로덕션 배틀,
그리고 바이닐 셋이 함께하는 파티 시리즈 — by **PLANET TURBO SEOUL**.

A night of live beatmaking and cutting-edge underground club sounds.
Hardware and DAW wizards go head-to-head in real-time production battles,
backed by vinyl sets. A party series by **PLANET TURBO SEOUL**.

📍 The Edge Seoul · 을지로
📷 [@planet_turbo_seoul](https://instagram.com/planet_turbo_seoul) · [@theedgeseoul](https://instagram.com/theedgeseoul)

---

## 🎮 PLANET TURBO — Browser Arcade

이 레포는 ILLEGAL BEATZ / PLANET TURBO 의 디지털 놀이터다.
불꽃 후광을 두른 지구본 마스코트가 안내하는 단일 HTML · Three.js 브라우저 게임 모음.

**▶ Play: https://gamsasyo.github.io/illegal_beatz/**

| 게임 | 설명 | 조작 |
|------|------|------|
| ✈️ **FLIGHT** | PLANET TURBO 링 비행 — 링을 통과하며 터보를 채워라 (오디오 리액티브) | `WASD` 조향 · `SPACE` 부스트 · `E` 오토파일럿 |
| 🛹 **SKATE** | STREET SESSION — 런던 사우스뱅크 끝없는 다운힐, 그라인드·킥플립·콤보 | `WASD` 이동 · `SPACE` 올리 · `E` 오토파일럿 · `F` 전체화면 |
| 🎮 **DUAL** | ONE CONTROLLER — 한 키보드로 스케이트 + 비행기 동시에 (한 입력 = 두 게임) | `WASD` · `SPACE` · `E` 오토파일럿 |

각 게임 직접 링크:
- [FLIGHT](https://gamsasyo.github.io/illegal_beatz/flight.html)
- [SKATE](https://gamsasyo.github.io/illegal_beatz/skate.html)
- [DUAL](https://gamsasyo.github.io/illegal_beatz/dual.html)

---

## 🛠 Tech

- **단일 HTML 파일** per game — 빌드 없음, 그냥 열면 실행.
- **[Three.js](https://threejs.org/)** (unpkg CDN, importmap) 로 렌더링.
- 절차적 무한 러너 / 셰이더 도로 마킹 / 2-본 IK 캐릭터 리그 / 시네마틱 하이라이트.
- 호스팅: **GitHub Pages** (`main` 브랜치 루트). `git push` 하면 자동 갱신.

로컬 실행:

```bash
python3 -m http.server 8731
# → http://localhost:8731/
```

## 📁 Structure

```
index.html      PLANET TURBO 셀렉트 화면 (마스코트 랜딩)
flight.html     FLIGHT
skate.html      SKATE — STREET SESSION
dual.html       DUAL — 한 컨트롤러 두 게임
docs/           설계 노트
```

## 🎁 Merch

ILLEGAL BEATZ 후디 — 파티 현장 한정.

---

_ILLEGAL BEATZ · PLANET TURBO SEOUL_
