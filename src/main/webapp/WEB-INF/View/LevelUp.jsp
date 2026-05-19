<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Solo System</title>

<link href="https://fonts.googleapis.com/css2?family=Orbitron:wght@400;600&display=swap" rel="stylesheet">

<style>

/* ===== BODY ===== */
body {
    margin: 0;
    font-family: 'Orbitron', sans-serif;
    background: black;
    color: #00f7ff;
    overflow: hidden;
}

.system {
    opacity: 0;
    width: 80%;
    margin: 120px auto;
    border: 1px solid #00f7ff;
    display: flex;

    /* 🔥 STRONG GLOW */
    box-shadow:
        0 0 20px #00f7ff,
        0 0 60px rgba(0,255,255,0.4),
        inset 0 0 20px rgba(0,255,255,0.2);

    animation: showSystem 1s forwards 1.5s;
}

.line {
    position: fixed;
    left: 10%;
    width: 80%;
    height: 4px;
    background: #00f7ff;

    /* 💀 STRONG LINE GLOW */
    box-shadow:
        0 0 20px #00f7ff,
        0 0 40px #00f7ff,
        0 0 80px rgba(0,255,255,0.6);
}
.menu {
    border: 1px solid #00f7ff;
    padding: 12px;
    margin: 12px 0;
    cursor: pointer;

    /* glow */
    box-shadow:
        0 0 10px rgba(0,255,255,0.4);
}

.menu:hover {
    box-shadow:
        0 0 15px #00f7ff,
        0 0 30px rgba(0,255,255,0.8);
}

.menu.active {
    background: #00f7ff;
    color: black;

    box-shadow:
        0 0 20px #00f7ff,
        0 0 50px #00f7ff;
}

.quest {
    border: 1px solid #00f7ff;
    padding: 15px;
    margin: 15px 0;
    box-shadow:
        0 0 10px rgba(0,255,255,0.3);
}
/* ===== LINES ===== */
.line {
    position: fixed;
    left: 10%;
    width: 80%;
    height: 4px;
    background: #00f7ff;
    box-shadow: 0 0 20px #00f7ff;
}

/* LINE ANIMATION */
.top-line { animation: up 1.5s forwards; }
.bottom-line { animation: down 1.5s forwards; }

@keyframes up {
    from { top: 50%; }
    to { top: 90px; }
}

@keyframes down {
    from { top: 50%; }
    to { top: calc(100% - 90px); }
}

/* ===== SYSTEM (HIDDEN INITIALLY) ===== */
.system {
    opacity: 0;
    width: 80%;
    margin: 120px auto;
    border: 1px solid #00f7ff;
    display: flex;

    /* SHOW AFTER LINES */
    animation: showSystem 1s forwards 1.5s;
}

@keyframes showSystem {
    to { opacity: 1; }
}

/* ===== SIDEBAR ===== */
.sidebar {
    width: 220px;
    border-right: 1px solid #00f7ff;
    padding: 20px;
}

/* MENU */
.menu {
    border: 1px solid #00f7ff;
    padding: 12px;
    margin: 12px 0;
    cursor: pointer;
}

.menu.active {
    background: #00f7ff;
    color: black;
}

/* ===== MAIN ===== */
.main {
    flex: 1;
    padding: 20px;
}

/* TITLE */
.title {
    text-align: center;
    margin-bottom: 10px;
}

/* WARNING */
.warning {
    color: red;
    text-align: center;
    margin-bottom: 20px;
}

/* QUEST */
.quest {
    border: 1px solid #00f7ff;
    padding: 15px;
    margin: 15px 0;
}

</style>
</head>

<body>

<!-- LINES -->
<div class="line top-line"></div>
<div class="line bottom-line"></div>

<!-- 💀 SYSTEM DASHBOARD -->
<div class="system">

    <!-- SIDEBAR -->
    <div class="sidebar">
        <div class="menu">Dashboard</div>
        <div class="menu">Missions</div>
        <div class="menu active">Stats</div>
        <div class="menu">Inventory</div>
        <div class="menu">Skills</div>
        <div class="menu">Settings</div>
    </div>

    <!-- MAIN -->
    <div class="main">

        <div class="title">DAILY SYSTEM QUEST</div>

        <div class="warning">
            COMPLETE ALL TASKS OR FACE PENALTY
        </div>

        <div class="quest">Push-ups (25/25)</div>
        <div class="quest">Sit-ups (25/25)</div>
        <div class="quest">Squats (25/25)</div>
        <div class="quest">Steps (10000/10000)</div>

    </div>

</div>

</body>
</html>