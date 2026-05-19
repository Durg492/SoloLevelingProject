<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>System Stats</title>

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

/* ===== STAT BOX ===== */
.stat {
    border: 1px solid #00f7ff;
    padding: 15px;
    margin-bottom: 15px;
}

.stat-name {
    margin-bottom: 5px;
}

/* BAR */
.bar {
    height: 10px;
    background: #003344;
    margin-top: 5px;
}

.fill {
    height: 100%;
    background: #00f7ff;
    box-shadow: 0 0 10px #00f7ff;
}

/* DIFFERENT LEVELS */
.strength { width: 70%; }
.stamina { width: 60%; }
.agility { width: 50%; }
.intelligence { width: 40%; }

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
        <div class="menu active"onclick="location.href='stats'">Stats</div>
        <div class="menu" onclick="location.href='inventory'">Inventory</div>
        <div class="menu" onclick="location.href='skill'">Skills</div>
        <div class="menu" onclick="location.href='setting'">Settings</div>
    </div>

    <!-- MAIN -->
    <div class="main">

        <div class="title">SYSTEM STATS</div>

        <!-- STRENGTH -->
        <div class="stat">
            <div class="stat-name">Strength</div>
            <div class="bar"><div class="fill strength"></div></div>
        </div>

        <!-- STAMINA -->
        <div class="stat">
            <div class="stat-name">Stamina</div>
            <div class="bar"><div class="fill stamina"></div></div>
        </div>

        <!-- AGILITY -->
        <div class="stat">
            <div class="stat-name">Agility</div>
            <div class="bar"><div class="fill agility"></div></div>
        </div>

        <!-- INTELLIGENCE -->
        <div class="stat">
            <div class="stat-name">Intelligence</div>
            <div class="bar"><div class="fill intelligence"></div></div>
        </div>

    </div>

</div>

</body>
</html>