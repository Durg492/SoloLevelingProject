<!DOCTYPE html>
<html xmlns:th="http://www.thymeleaf.org">
<head>

<meta charset="UTF-8">
<title>System SignUp</title>

<!-- FONT -->
<link href="https://fonts.googleapis.com/css2?family=Orbitron:wght@400;600&display=swap" rel="stylesheet">

<style>

/* ===== BACKGROUND ===== */
body {
    margin: 0;
    height: 100vh;
    font-family: 'Orbitron', sans-serif;
    background: radial-gradient(circle, #000814, #021a2a);
    display: flex;
    justify-content: center;
    align-items: center;
    overflow: hidden;
}

/* ===== TWO LINE ANIMATION ===== */
.line {
    position: absolute;
    width: 80%;
    height: 4px;
    background: #00f7ff;
    box-shadow: 0 0 20px #00f7ff, 0 0 40px #00f7ff;
}

/* START FROM CENTER */
.top-line, .bottom-line {
    top: 50%;
}

/* MOVE UP */
.top-line {
    animation: moveUp 1.5s forwards;
}

/* MOVE DOWN */
.bottom-line {
    animation: moveDown 1.5s forwards;
}

/* ONLY USE TOP (IMPORTANT) */
@keyframes moveUp {
    0% { top: 50%; }
    100% { top: 70px; }
}

@keyframes moveDown {
    0% { top: 50%; }
    100% { top: calc(100% - 70px); }
}
/* ===== BOX ===== */
.box {
    width: 1200px;
    height: 500px;
    background: #001a2a;
    border: 1px solid #00f7ff;
    box-shadow:
        0 0 20px #00f7ff,
        0 0 60px rgba(0,255,255,0.4);

    display: flex;
    justify-content: center;
    align-items: center;

    opacity: 0;
    transform: scale(0.8);
    animation: showBox 1s forwards 1.5s;
}

@keyframes showBox {
    to {
        opacity: 1;
        transform: scale(1);
    }
}

/* ===== FORM ===== */
.form-box {
    width: 320px;
    text-align: center;
}

/* ===== TITLE ===== */
.title {
    color: #00f7ff;
    margin-bottom: 25px;
    letter-spacing: 4px;
    text-shadow: 0 0 10px #00f7ff;
}

/* ===== INPUT ===== */
input {
    width: 100%;
    padding: 10px;
    margin: 12px 0;
    background: transparent;
    border: none;
    border-bottom: 2px solid #00f7ff;
    color: white;
    outline: none;
    font-family: 'Orbitron', sans-serif;
}

/* ===== BUTTON ===== */
.btn {
    width: 100%;
    padding: 12px;
    margin-top: 20px;
    border: 1px solid #00f7ff;
    background: transparent;
    color: #00f7ff;
    cursor: pointer;
    letter-spacing: 2px;
}

.btn:hover {
    background: #00f7ff;
    color: black;
    box-shadow: 0 0 10px #00f7ff;
}

/* ===== LOGIN LINK ===== */
.link {
    margin-top: 15px;
    font-size: 12px;
    color: #aaa;
}

.link a {
    color: #00f7ff;
    text-decoration: none;
}

.link a:hover {
    text-shadow: 0 0 10px #00f7ff;
}

</style>
</head>

<body>

<!-- ANIMATION LINES -->
<div class="line top-line"></div>
<div class="line bottom-line"></div>

<!-- BOX -->
<div class="box">

    <div class="form-box">

        <div class="title">SYSTEM SIGNUP</div>

        <form action="SignLogin" method="post">

            <input type="text" name="hunterName" placeholder="USERNAME">
            <input type="email" name ="email" placeholder="EMAIL">
            <input type="number" name="phoneNumber" placeholder="PHONE">
            <input type="password" name="password" placeholder="PASSWORD">
             
            <input type="password" name="confirmPassword" placeholder="CONFIRM PASSWORD">
           <p style="color:#ff4d4d; font-weight:bold; margin-top:5px;"
   th:if="${error}" 
   th:text="${error}">
</p>

            <button class="btn">CREATE ACCOUNT</button>

        </form>

        <!-- LOGIN TEXT LINK -->
        <div class="link">
            Already a Hunter? <a href="login">Login</a>
        </div>

    </div>

</div>

</body>
</html>