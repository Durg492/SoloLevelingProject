<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>System Skills</title>

<link href="https://fonts.googleapis.com/css2?family=Orbitron:wght@400;600&display=swap" rel="stylesheet">

<style>

/* ===== BODY ===== */
body {
    margin: 0;
    font-family: 'Orbitron', sans-serif;
    background: radial-gradient(circle, #000814, #021a2a);
    color: #00f7ff;
    overflow: hidden;
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

.top-line, .bottom-line {
    top: 50%;
}

.top-line { animation: up 1.5s forwards; }
.bottom-line { animation: down 1.5s forwards; }

@keyframes up {
    0% { top: 50%; }
    100% { top: 80px; }
}

@keyframes down {
    0% { top: 50%; }
    100% { top: calc(100% - 80px); }
}

/* ===== CONTAINER ===== */
.container {
    width: 80%;
    height: calc(100vh - 220px);
    margin: 110px auto;
    display: flex;

    border: 1px solid #00f7ff;
    box-shadow: 0 0 20px #00f7ff;

    overflow: hidden;

    opacity: 0;
    transform: scale(0.9);
    animation: show 1s forwards 1.5s;
}

@keyframes show {
    to {
        opacity: 1;
        transform: scale(1);
    }
}

/* ===== SIDEBAR ===== */
.sidebar {
    width: 220px;
    border-right: 1px solid #00f7ff;
    padding: 20px;
}

.menu {
    padding: 15px;
    margin: 15px 0;
    border: 1px solid #00f7ff;
    text-align: center;
    cursor: pointer;
}

.menu:hover {
    background: #00f7ff;
    color: black;
}

.active {
    background: #00f7ff;
    color: black;
}

/* ===== MAIN ===== */
.main {
    flex: 1;
    padding: 20px;
    overflow-y: auto;
}

/* SCROLL */
.main::-webkit-scrollbar {
    width: 6px;
}
.main::-webkit-scrollbar-thumb {
    background: #00f7ff;
}

/* ===== TITLE ===== */
.title {
    text-align: center;
    margin-bottom: 20px;
    letter-spacing: 3px;
}

/* ===== SKILL BOX ===== */
.skill {
    border: 1px solid #00f7ff;
    padding: 15px;
    margin-bottom: 15px;
}

.skill-title {
    font-size: 14px;
    margin-bottom: 5px;
}

.skill-desc {
    font-size: 12px;
    opacity: 0.8;
}

/* ===== STATUS ===== */
.unlocked {
    color: #00ffcc;
}

.locked {
    color: #888;
}

</style>
</head>

<body>

<!-- LINES -->
<div class="line top-line"></div>
<div class="line bottom-line"></div>

<div class="container">

    <!-- SIDEBAR -->
    <div class="sidebar">
        <div class="menu" onclick="location.href='HomeLogin'">Dashboard</div>
        <div class="menu" onclick="location.href='mission'">Missions</div>
        <div class="menu" onclick="location.href='stats'">Stats</div>
        <div class="menu" onclick="location.href='inventory'">Inventory</div>
        <div class="menu active"onclick="location.href='skill'">Skills</div>
        <div class="menu" onclick="location.href='setting'">Settings</div>
    </div>

    <!-- MAIN -->
    <div class="main">

        <div class="title">SYSTEM SKILLS</div>

        <!-- SKILL 1 -->
        <div class="skill">
            <div class="skill-title unlocked">Strength Boost (Unlocked)</div>
            <div class="skill-desc">Improves push-up efficiency and strength.</div>
        </div>

        <!-- SKILL 2 -->
        <div class="skill">
            <div class="skill-title unlocked">XP Boost (Unlocked)</div>
            <div class="skill-desc">Gain extra XP from completed missions.</div>
        </div>

        <!-- SKILL 3 -->
        <div class="skill">
            <div class="skill-title locked">Daily Streak (Locked)</div>
            <div class="skill-desc">Unlock by maintaining 3-day streak.</div>
        </div>

        <!-- SKILL 4 -->
        <div class="skill">
            <div class="skill-title locked">Overdrive Mode (Locked)</div>
            <div class="skill-desc">Complete all quests to activate bonus XP.</div>
        </div>

    </div>

</div>

</body>
</html>