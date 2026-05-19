
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Hunter System</title>

<!-- FONT -->
<link href="https://fonts.googleapis.com/css2?family=Orbitron:wght@400;600&display=swap" rel="stylesheet">

<style>

/* ===== BACKGROUND ===== */
body {
    margin: 0;
    font-family: 'Orbitron', sans-serif;
    background: radial-gradient(circle, #000814, #021a2a);
    color: #00f7ff;
    overflow: hidden;
}

/* ===== ANIMATED LINES ===== */
.line {
    position: fixed;
    left: 10%;
    width: 80%;
    height: 4px;
    background: #00f7ff;
    box-shadow: 0 0 20px #00f7ff, 0 0 40px #00f7ff;
}

/* start from center */
.top-line, .bottom-line {
    top: 50%;
}

/* animations */
.top-line {
    animation: moveUp 1.5s forwards;
}

.bottom-line {
    animation: moveDown 1.5s forwards;
}

@keyframes moveUp {
    0% { top: 50%; }
    100% { top: 85px; }
}

@keyframes moveDown {
    0% { top: 50%; }
    100% { top: calc(100% - 55px); }
}

/* ===== MAIN CONTAINER (HIDDEN INITIALLY) ===== */
.container {
    width: 80%;
    margin: 130px auto;
    display: flex;
    border: 1px solid #00f7ff;
    box-shadow: 0 0 20px #00f7ff, 0 0 60px rgba(0,255,255,0.3);

    opacity: 0;
    transform: scale(0.8);
    animation: showDashboard 1s forwards 1.5s;
}

@keyframes showDashboard {
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
    transition: 0.3s;
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


.menu:hover {
    background: #00f7ff;
    color: black;
    box-shadow: 0 0 10px #00f7ff;
}

/* ===== MAIN ===== */
.main {
    flex: 1;
    padding: 20px;
}

/* ===== HUNTER BOX ===== */
.hunter-box {
    border: 1px solid #00f7ff;
    padding: 15px;
    margin-bottom: 15px;
    font-size: 18px;
    letter-spacing: 2px;
}

/* ===== GLOW NAME ===== */
.hunter-name {
    color: #00f7ff;
    text-shadow:
        0 0 5px #00f7ff,
        0 0 10px #00f7ff,
        0 0 20px #00f7ff,
        0 0 40px rgba(0,255,255,0.8);
}

/* ===== XP ===== */
.xp-box {
    border: 1px solid #00f7ff;
    padding: 10px;
    margin-bottom: 20px;
}

.xp-bar {
    height: 10px;
    background: #003344;
    margin-top: 5px;
}

.xp-fill {
    width: 60%;
    height: 100%;
    background: #00f7ff;
    box-shadow: 0 0 10px #00f7ff;
}

/* ===== QUEST ===== */
.quest-box {
    border: 1px solid #00f7ff;
    padding: 20px;
}

.quest-title {
    margin-bottom: 15px;
    font-size: 18px;
}

.quest-item {
    padding: 8px 0;
    border-bottom: 1px solid #00f7ff;
}

/* ===== BUTTON ===== */
.btn {
    width: 100%;
    margin-top: 15px;
    padding: 10px;
    border: 1px solid #00f7ff;
    background: transparent;
    color: #00f7ff;
    cursor: pointer;
}

.btn:hover {
    background: #00f7ff;
    color: black;
}

/* ===== STATUS ===== */
.status {
    text-align: center;
    margin-top: 10px;
    opacity: 0.7;
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
        <div class="menu">Dashboard</div>
        <div class="menu" onclick="location.href='mission'">Missions</div>
        <div class="menu"onclick="location.href='stats'">Stats</div>
        <div class="menu"onclick="location.href='inventory'">Inventory</div>
        <div class="menu"onclick="location.href='skill'">Skills</div>
        <div class="menu" onclick="location.href='setting'">Settings</div>
    </div>

    <!-- MAIN -->
    <div class="main">

        <!-- DYNAMIC USER -->
        <div class="hunter-box">
            HUNTER NAME:
            <span class="hunter-name">${r.userName}</span><br>
            LEVEL: ${r.level}
        </div>

        <!-- XP -->
        <div class="xp-box">
            XP
            <div class="xp-bar">
                <div class="xp-fill"></div>
            </div>
        </div>

        <!-- QUEST -->
        <div class="quest-box">

            <div class="quest-title">DAILY QUEST</div>

            <div class="quest-item">25 Push-ups</div>
            <div class="quest-item">25 Sit-ups</div>
            <div class="quest-item">25 Squats</div>
            <div class="quest-item">10,000 Steps</div>

            <button class="btn" onclick="location.href='completquest'">COMPLETE QUEST</button>

            <div class="status">SYSTEM READY</div>

        </div>

    </div>

</div>

</body>
</html>