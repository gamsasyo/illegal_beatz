# ILLEGAL BEATZ

> _Too good to be legal._

**ILLEGAL BEATZ** is a night of live beatmaking and cutting-edge underground club sounds.
Hardware and DAW wizards go head-to-head in real-time production battles, backed by vinyl sets.
A party series by **PLANET TURBO SEOUL**.

📍 The Edge Seoul
📷 [@planet_turbo_seoul](https://instagram.com/planet_turbo_seoul) · [@theedgeseoul](https://instagram.com/theedgeseoul)

---

## 🎮 PLANET TURBO — Browser Arcade

This repo is the digital playground of ILLEGAL BEATZ / PLANET TURBO.
A collection of single-file HTML · Three.js browser games, hosted by a flame-haloed globe mascot.

**▶ Play: https://gamsasyo.github.io/illegal_beatz/**

| Game | Description | Controls |
|------|-------------|----------|
| ✈️ **FLIGHT** | PLANET TURBO ring flyer — fly through rings and charge your turbo (audio reactive) | `WASD` steer · `SPACE` boost · `E` autopilot |
| 🛹 **SKATE** | STREET SESSION — endless downhill through London Southbank; grinds, kickflips, combos | `WASD` move · `SPACE` ollie · `E` autopilot · `F` fullscreen |
| 🎮 **DUAL** | ONE CONTROLLER — play skate + flight at the same time on one keyboard (one input = two games) | `WASD` · `SPACE` · `E` autopilot |

Direct links:
- [FLIGHT](https://gamsasyo.github.io/illegal_beatz/flight.html)
- [SKATE](https://gamsasyo.github.io/illegal_beatz/skate.html)
- [DUAL](https://gamsasyo.github.io/illegal_beatz/dual.html)

---

## 🛠 Tech

- **One self-contained HTML file** per game — no build step, just open it.
- Rendered with **[Three.js](https://threejs.org/)** (unpkg CDN, importmap).
- Procedural endless runner / shader road markings / 2-bone IK character rig / cinematic highlights.
- Hosting: **GitHub Pages** (`main` branch root). `git push` auto-deploys.

Run locally:

```bash
python3 -m http.server 8731
# → http://localhost:8731/
```

## 📁 Structure

```
index.html      PLANET TURBO select screen (mascot landing)
flight.html     FLIGHT
skate.html      SKATE — STREET SESSION
dual.html       DUAL — one controller, two games
docs/           design notes
```

## 🎁 Merch

ILLEGAL BEATZ hoodie — party-night exclusive.

---

_ILLEGAL BEATZ · PLANET TURBO SEOUL_
