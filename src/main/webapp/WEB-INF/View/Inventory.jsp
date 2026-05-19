<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>System Inventory</title>

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

/* ===== ITEM BOX ===== */
.item {
    border: 1px solid #00f7ff;
    padding: 15px;
    margin-bottom: 15px;
}

.item-name {
    font-size: 14px;
    margin-bottom: 5px;
}

.item-desc {
    font-size: 12px;
    opacity: 0.8;
}

.item-status {
    margin-top: 5px;
    font-size: 11px;
}

/* STATUS COLORS */
.available { color: #00ffcc; }
.used { color: #888; }

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
        <div class="menu active" onclick="location.href='inventory'">Inventory</div>
        <div class="menu" onclick="location.href='skill'">Skills</div>
        <div class="menu" onclick="location.href='setting'">Settings</div>
    </div>

    <!-- MAIN -->
    <div class="main">

        <div class="title">SYSTEM INVENTORY</div>

        <!-- ITEM 1 -->
        <div class="item">
            <div class="item-name">Energy Potion</div>
            <div class="item-desc">Boosts your energy to complete missions faster.</div>
            <div class="item-status available">Available</div>
        </div>

        <!-- ITEM 2 -->
        <div class="item">
            <div class="item-name">XP Boost</div>
            <div class="item-desc">Grants extra XP for the next completed mission.</div>
            <div class="item-status available">Available</div>
        </div>

        <!-- ITEM 3 -->
        <div class="item">
            <div class="item-name">Streak Reward</div>
            <div class="item-desc">Unlocked after maintaining a daily streak.</div>
            <div class="item-status used">Used</div>
        </div>

        <!-- ITEM 4 -->
        <div class="item">
            <div class="item-name">Reset Token</div>
            <div class="item-desc">Resets your daily quest progress.</div>
            <div class="item-status available">Available</div>
        </div>

    </div>

</div>

</body>
</html>