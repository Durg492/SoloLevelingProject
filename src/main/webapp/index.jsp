<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Hunter System</title>

<!-- GOOGLE FONTS -->
<link href="https://fonts.googleapis.com/css2?family=Orbitron:wght@400;700&family=Rajdhani:wght@400;600&display=swap" rel="stylesheet">

<style>

/* ===== BACKGROUND ===== */
body {
    margin: 0;
    height: 100vh;
    background: radial-gradient(circle, #000814, #021a2a);
    color: #00f7ff;
    overflow: hidden;
}

/* ===== LINES ===== */
.line {
    position: absolute;
    width: 80%;
    height: 4px;
    left: 10%;
    top: 50%;
    background: #00f7ff;
    box-shadow: 0 0 20px #00f7ff;
}

.top-line { animation: up 2s forwards; }
.bottom-line { animation: down 2s forwards; }

@keyframes up {
    0% { top: 50%; }
    100% { top: 10%; }
}

@keyframes down {
    0% { top: 50%; }
    100% { top: 90%; }
}

/* ===== BOX ===== */
.box {
    position: absolute;
    left: 10%;
    width: 80%;
    top: 20%;
    height: 60%;

    border: 1px solid #00f7ff;
    background: rgba(0,20,30,0.7);
    box-shadow: 0 0 25px #00f7ff;

    opacity: 0;
    transform: scale(0.6);
    animation: show 1s forwards 2s;
}

@keyframes show {
    to {
        opacity: 1;
        transform: scale(1);
    }
}

/* ===== CONTENT ===== */
.content {
    padding: 40px;
    text-align: center;
}

/* TITLE */
.title {
    font-family: 'Orbitron', sans-serif;
    font-size: 28px;
    letter-spacing: 4px;
    margin-bottom: 25px;
    text-shadow: 0 0 10px #00f7ff;
}

/* DESCRIPTION */
.desc {
    font-family: 'Rajdhani', sans-serif;
    font-size: 16px;
    line-height: 1.8;
    color: #cceeff;
}

/* BUTTON */
.btn {
    margin-top: 30px;
    padding: 12px 25px;
    border: 1px solid #00f7ff;
    background: transparent;
    color: #00f7ff;
    font-family: 'Orbitron', sans-serif;
    letter-spacing: 2px;
    cursor: pointer;
}

.btn:hover {
    background: #00f7ff;
    color: black;
    box-shadow: 0 0 10px #00f7ff;
}

</style>
</head>

<body>

<!-- LINES -->
<div class="line top-line"></div>
<div class="line bottom-line"></div>

<!-- BOX -->
<div class="box">

    <div class="content">

        <div class="title">HUNTER SYSTEM</div>

        <div class="desc">
        <form action="Signup">
            Welcome to the Hunter System. <br><br>

            In this world, hunters battle powerful monsters emerging from mysterious gates.
            Each hunter has a rank, but only a few can grow beyond limits.
            <br><br>
            You are one of the chosen. Complete quests, gain experience,
            level up, and unlock hidden abilities.
            <br><br>
            Only the strongest will survive and rise to the top.
        </div>

        <button class="btn" onclick="location.href='Dashboard'">
            ENTER SYSTEM
        </button>
</form>
    </div>

</div>

</body>
</html>