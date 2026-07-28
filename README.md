# 🏈 Dynasty Fantasy Football Assistant - League #81689

A portable, standalone web application and data radar built for **Dynasty Football League #81689** (14 Teams, RTSports).

---

## 📦 Quick Installation Guide (For League Members)

1. **Extract the ZIP Archive**:
   - Copy or download `FantasyAssistant_v1.2.zip` to any folder on your Windows PC (e.g., `Desktop` or `C:\FantasyAssistant`).
   - Right-click `FantasyAssistant_v1.2.zip` and select **Extract All...**.

2. **One-Click Setup**:
   - Open the extracted folder and double-click **`Setup.bat`**.
   - This automatically creates a **Fantasy NFL Assistant** shortcut on your Desktop and opens the application in your browser.

---

## ⚡ How to Launch the Application

You can launch the application in any of the following ways:

- **Desktop Shortcut**: Double-click **`Fantasy NFL Assistant`** on your Desktop.
- **Standalone GUI Launcher**: Double-click **`dist\Fantasy_Assistant.exe`** (no Python required!).
- **Web Launcher**: Double-click **`Launch_Fantasy_Assistant.bat`** or **`Launch_Fantasy_Assistant.vbs`**.

Once launched, open your web browser to:
👉 **[http://localhost:8090](http://localhost:8090)**

---

## ✨ Features Included

- **⚙️ My Team Selector**: Select your roster from all 14 Dynasty teams (Bird Gang, Crackers, GoodFellas, Pepe Silvia, etc.). Your selection is saved automatically.
- **📰 Real-Time News Radar**: Aggregates fantasy news from 22 major sources (RotoBaller, 4for4, RotoViz, Player Profiler, Dynasty League Football, Dynasty Nerds, FFToday, Fantasy Football Analytics, The IDP Guru, Walter Football, Dynasty Football Factory, NBC, FOX, CBS, Yahoo, SBNation, PFT, ESPN).
- **🏷️ Roster & Free Agent Badges**: Highlights players on your roster, rival rosters, or available free agents.
- **🔗 RTSports Player Cards**: Click news capsule badges or player names to open direct RTSports player profile cards.
- **📊 14-Team Dynasty Roster Overview**: Filter players by position (QB, RB, WR, TE, K, DL, LB, DB) or team status.

---

## 🔄 Updating Data & News Feeds

Data can be updated on-demand or automatically:

- **GUI Desktop App**: Click the **`🔄 Sync Fresh Data`** button inside `dist\Fantasy_Assistant.exe` or `launch_gui.py`.
- **Command Line**: Run `python src/update_data.py` to refresh all player news and rosters manually.
- **Background Auto-Sync**: Run `python auto_update_service.py` to auto-fetch fresh news every 15 minutes.

---

## 📁 Package Contents

```text
FantasyAssistant/
├── index.html                   # Main Web Dashboard UI
├── app.js                       # Frontend Application Logic
├── styles.css                   # Modern Dark Theme & Component Styles
├── Setup.bat                    # One-Click Setup & Desktop Shortcut Creator
├── Launch_Fantasy_Assistant.bat # Silent Web Server & Browser Launcher
├── Launch_Fantasy_Assistant.vbs # Hidden Background Launcher
├── launch_gui.py                # Python Desktop Control Panel
├── create_shortcut.py           # Dynamic Shortcut Generator
├── auto_update_service.py       # Automated Background Data Refresh Daemon
├── icon.ico / icon.png          # Custom Application Icons
├── dist/
│   └── Fantasy_Assistant.exe    # Portable Standalone Windows Executable
├── src/
│   ├── rtsports_client.py       # RTSports Scraper & Data Extractor
│   └── update_data.py           # Data Consolidation & News Feed Generator
└── data/
    ├── league_data.json         # Processed Roster & League Json
    └── news_feed.json           # Aggregated Player News Feed Json
```
