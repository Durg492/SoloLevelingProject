<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>System Settings</title>

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
    box-shadow: 0 0 20px #00f7ff, 0 0 40px #00f7ff;
}

.top-line, .bottom-line {
    top: 50%;
}

.top-line {
    animation: moveUp 1.5s forwards;
}

.bottom-line {
    animation: moveDown 1.5s forwards;
}

@keyframes moveUp {
    0% { top: 50%; }
    100% { top: 80px; }
}

@keyframes moveDown {
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
    box-shadow: 0 0 20px #00f7ff, 0 0 60px rgba(0,255,255,0.3);

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
    transition: 0.3s;
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

/* SCROLLBAR */
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

/* ===== SECTION ===== */
.section {
    border: 1px solid #00f7ff;
    padding: 15px;
    margin-bottom: 20px;
}

.section-title {
    margin-bottom: 10px;
}

/* ===== INPUT ===== */
input {
    width: 100%;
    padding: 10px;
    margin: 10px 0;
    background: transparent;
    border: none;
    border-bottom: 2px solid #00f7ff;
    color: white;
    outline: none;
}

/* ===== BUTTON ===== */
.btn {
    padding: 8px 15px;
    border: 1px solid #00f7ff;
    background: transparent;
    color: #00f7ff;
    cursor: pointer;
}

.btn:hover {
    background: #00f7ff;
    color: black;
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
        <div class="menu" onclick="loctaion.href='mission'">Missions</div>
        <div class="menu"onclick="location.href='stats'">Stats</div>
        <div class="menu"onclick="location.href='inventory'">Inventory</div>
        <div class="menu"onclick="location.href='skill'">Skills</div>
        <div class="menu active"onclick="location.href='setting'">Settings</div>
    </div>

    <!-- MAIN CONTENT -->
    <div class="main">

        <div class="title">SYSTEM SETTINGS</div>

     <form action="update" method="post">

    <!-- PROFILE -->
    <div class="section">
        <div class="section-title">PROFILE</div>

        <input type="text"
               name="updateName"
               placeholder="Update Username">

        <input type="email"
               name="updateEmail"
               placeholder="Update Email">

        <input type="number"
               name="updaePhonnumber"
               placeholder="Update Phone">

        <button type="submit" class="btn">
            SAVE
        </button>
    </div>

</form>
        <!-- SECURITY -->
        <div class="section">
            <div class="section-title">SECURITY</div>
            <input type="password" placeholder="New Password">
            <input type="password" placeholder="Confirm Password">
            <button class="btn">UPDATE</button>
        </div>

        <!-- SYSTEM -->
        <div class="section">
            <div class="section-title">SYSTEM</div>
            <button class="btn">SOUND ON / OFF</button>
            <button class="btn">ANIMATION ON / OFF</button>
        </div>

        <!-- RESET -->
        <div class="section">
            <div class="section-title">RESET</div>
            <button class="btn">RESET DAILY PROGRESS</button>
        </div>

    </div>

</div>

</body>
</html>