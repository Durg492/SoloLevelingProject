
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>System Boot</title>

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

/* ===== LEVEL UP BUTTON ===== */
.level-btn {
    margin-top: 25px;
    padding: 14px;
    text-align: center;
    border: 2px solid #00f7ff;
    color: #00f7ff;
    font-weight: bold;
    letter-spacing: 2px;
    cursor: pointer;
    position: relative;

    /* GLOW */
    box-shadow:
        0 0 10px #00f7ff,
        0 0 30px rgba(0,255,255,0.5);

    /* PULSE ANIMATION */
    animation: pulse 1.5s infinite;
}

/* ===== HOVER EFFECT ===== */
.level-btn:hover {
    background: #00f7ff;
    color: black;

    box-shadow:
        0 0 20px #00f7ff,
        0 0 60px #00f7ff;
}
.level-btn:active {
    transform: scale(0.95);
    box-shadow:
        0 0 40px #00f7ff,
        0 0 100px #00f7ff;
}
/* ===== PULSE ===== */
@keyframes pulse {
    0% {
        box-shadow:
            0 0 10px #00f7ff,
            0 0 20px rgba(0,255,255,0.3);
    }
    50% {
        box-shadow:
            0 0 20px #00f7ff,
            0 0 50px rgba(0,255,255,0.8);
    }
    100% {
        box-shadow:
            0 0 10px #00f7ff,
            0 0 20px rgba(0,255,255,0.3);
    }
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

/* ANIMATION */
.top-line {
    animation: moveUp 1.5s forwards;
}

.bottom-line {
    animation: moveDown 1.5s forwards;
}

@keyframes moveUp {
    from { top: 50%; }
    to { top: 80px; }
}

@keyframes moveDown {
    from { top: 50%; }
    to { top: calc(100% - 80px); }
}

/* ===== CENTER BOOT TEXT ===== */
.boot-text {
    position: fixed;
    top: 50%;
    left: 50%;
    transform: translate(-50%, -50%);
    text-align: center;
    opacity: 0;

    animation: showBoot 3s forwards 1.5s, hideBoot 1s forwards 4.5s;
}

.boot-text p {
    margin: 10px;
    opacity: 0;
}

/* TEXT SEQUENCE */
.boot-text p:nth-child(1) { animation: textShow 1s forwards 1.8s; }
.boot-text p:nth-child(2) { animation: textShow 1s forwards 2.6s; }
.boot-text p:nth-child(3) { animation: textShow 1s forwards 3.4s; }

@keyframes textShow {
    to { opacity: 1; }
}

@keyframes showBoot {
    to { opacity: 1; }
}

@keyframes hideBoot {
    to { opacity: 0; }
}

/* ===== MAIN UI ===== */
.container {
    width: 80%;
    height: calc(100vh - 220px);
    margin: 110px auto;
    display: flex;
    border: 1px solid #00f7ff;
    opacity: 0;
    box-shadow: 0 0 20px #00f7ff, 0 0 60px rgba(0,255,255,0.3);
    overflow: hidden;
    transform: scale(0.9);
    animation: showUI 1s forwards 5.5s;
}

@keyframes showUI {
    to { opacity: 1; }
}

/* ===== SIDEBAR ===== */
.sidebar {
    width: 220px;
    border-right: 1px solid #00f7ff;
    padding: 20px;
}

.menu {
    padding: 12px;
    margin: 10px 0;
    border: 1px solid #00f7ff;
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
}

/* ===== WARNING ===== */
.warning {
    color: red;
    text-align: center;
    margin-bottom: 20px;
}

/* ===== QUEST ===== */
.quest {
    border: 1px solid #00f7ff;
    padding: 15px;
    margin-bottom: 15px;
    display: flex;
    justify-content: space-between;
}

/* ===== CHECKBOX ===== */
input { display: none; }

.tick {
    display: none;
    color: #00ffcc;
}

input:checked + label .tick {
    display: inline;
}

/* ===== LEVEL BUTTON ===== */
.level-btn {
    display: none;
    margin-top: 20px;
    padding: 12px;
    border: 1px solid #00f7ff;
    text-align: center;
}

#q1:checked ~ #q2:checked ~ #q3:checked ~ #q4:checked ~ .level-btn {
    display: block;
}

</style>
</head>

<body>

<!-- LINES -->
<div class="line top-line"></div>
<div class="line bottom-line"></div>

<!-- 💀 TEXT BETWEEN LINES -->
<div class="boot-text">
    <p>SYSTEM INITIALIZING...</p>
    <p>LOADING USER DATA...</p>
    <p>DAILY QUEST READY</p>
</div>

<!-- MAIN UI -->
<div class="container">

<div class="sidebar">
<div class="menu" onclick="location.href='HomeLogin'">Dashboard</div>
        <div class="menu" onclick="loctaion.href='mission'">Missions</div>
        <div class="menu"onclick="location.href='stats'">Stats</div>
        <div class="menu"onclick="location.href='inventory'">Inventory</div>
        <div class="menu"onclick="location.href='skill'">Skills</div>
        <div class="menu active"onclick="location.href='setting'">Settings</div>
</div>

<div class="main">

<h3 style="text-align:center;">DAILY SYSTEM QUEST</h3>

<div class="warning">
COMPLETE ALL TASKS OR FACE PENALTY
</div>

<input type="checkbox" id="q1">
<label for="q1" class="quest">
<span>Push-ups (25/25)</span>
<span class="tick">DONE</span>
</label>

<input type="checkbox" id="q2">
<label for="q2" class="quest">
<span>Sit-ups (25/25)</span>
<span class="tick">DONE</span>
</label>

<input type="checkbox" id="q3">
<label for="q3" class="quest">
<span>Squats (25/25)</span>
<span class="tick">DONE</span>
</label>

<input type="checkbox" id="q4">
<label for="q4" class="quest">
<span>Steps (10000/10000)</span>
<span class="tick">DONE</span>
</label>

<div class="level-btn" onclick="location.href='levelup'">
LEVEL UP AVAILABLE
</div>

</div>

</div>

</body>
</html>