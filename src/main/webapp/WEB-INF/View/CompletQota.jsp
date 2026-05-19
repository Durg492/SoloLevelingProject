<!DOCTYPE html> 
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Final Awakening</title>

<link href="https://fonts.googleapis.com/css2?family=Orbitron:wght@400;600&display=swap" rel="stylesheet">

<style>

/* ===== BODY ===== */
body {
    margin: 0;
    background: black;
    font-family: 'Orbitron', sans-serif;
    color: #00f7ff;
    overflow: hidden;
}

/* ===== SYSTEM LINES ===== */
.line {
    position: fixed;
    left: 10%;
    width: 80%;
    height: 4px;
    background: #00f7ff;

    box-shadow:
        0 0 20px #00f7ff,
        0 0 40px #00f7ff,
        0 0 80px rgba(0,255,255,0.6);
}

/* START CENTER */
.top-line {
    top: 50%;
    animation: moveUp 1.5s forwards;
}

.bottom-line {
    top: 50%;
    animation: moveDown 1.5s forwards;
}

/* LINE ANIMATION */
@keyframes moveUp {
    from { top: 50%; }
    to { top: 90px; }
}

@keyframes moveDown {
    from { top: 50%; }
    to { top: calc(100% - 90px); }
}

/* ===== BOX ===== */
.box {
    position: absolute;
    top: 50%;
    left: 50%;
    transform: translate(-50%, -50%) scale(0.8);

    width: 450px;
    padding: 40px;
    text-align: center;

    border: 1px solid #00f7ff;
    background: #001a2a;

    box-shadow:
        0 0 20px #00f7ff,
        0 0 60px rgba(0,255,255,0.4),
        inset 0 0 20px rgba(0,255,255,0.2);

    opacity: 0;

    /* SHOW AFTER LINES */
    animation: showBox 1s forwards 1.5s;
}

@keyframes showBox {
    to {
        opacity: 1;
        transform: translate(-50%, -50%) scale(1);
    }
}

/* ===== TITLE ===== */
.title {
    letter-spacing: 4px;
    margin-bottom: 30px;
    text-shadow: 0 0 10px #00f7ff;

    animation: glitch 2s infinite;
}

/* ===== TEXT ===== */
.line-text {
    opacity: 0;
    margin: 15px 0;
    min-height: 25px;
}

/* CURSOR */
.cursor::after {
    content: "|";
    animation: blink 1s infinite;
}

/* HIGHLIGHT */
.highlight {
    color: #00f7ff;
    font-weight: bold;
    text-shadow: 0 0 15px #00f7ff;
}

/* ===== BUTTON ===== */
.btn {
    margin-top: 30px;
    padding: 12px;
    border: 1px solid #00f7ff;
    color: #00f7ff;
    opacity: 0;
    cursor: pointer;

    transition: 0.3s;

    animation: showBtn 3s forwards 8s;
}

.btn:hover {
    background: #00f7ff;
    color: black;
    box-shadow: 0 0 25px #00f7ff;
}

/* ===== ANIMATIONS ===== */
@keyframes blink {
    50% { opacity: 0; }
}

@keyframes glitch {
    0%,100% { text-shadow: 0 0 10px #00f7ff; }
    50% { text-shadow: 0 0 20px #00f7ff, 2px 0 red; }
}

@keyframes showBtn {
    to { opacity: 1; }
}

</style>
</head>

<body>

<!-- 💀 TWO SYSTEM LINES -->
<div class="line top-line"></div>
<div class="line bottom-line"></div>

<!-- 💀 SYSTEM BOX -->
<div class="box">

    <div class="title">SYSTEM AWAKENING</div>

    <div class="line-text cursor" id="line1"></div>
    <div class="line-text highlight cursor" id="line2"></div>

    <div class="btn" onclick="location.href='dailyqota'">ENTER SYSTEM</div>

</div>

<script>

/* TEXT */
const text1 = "Some people quit because it's hard.";
const text2 = "Some people start because it's hard.";

/* TYPE FUNCTION */
function typeText(element, text, speed, callback) {
    let i = 0;
    element.style.opacity = 1;

    function typing() {
        if (i < text.length) {
            element.innerHTML += text.charAt(i);
            i++;
            setTimeout(typing, speed);
        } else if (callback) {
            callback();
        }
    }
    typing();
}

/* START AFTER LINES */
setTimeout(() => {
    typeText(document.getElementById("line1"), text1, 70, () => {
        setTimeout(() => {
            typeText(document.getElementById("line2"), text2, 70);
        }, 700);
    });
}, 1700);

</script>

</body>
</html>