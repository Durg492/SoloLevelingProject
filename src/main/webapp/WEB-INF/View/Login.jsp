<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>System Login</title>

<link href="https://fonts.googleapis.com/css2?family=Orbitron:wght@400;700&family=Rajdhani:wght@400;600&display=swap" rel="stylesheet">

<style>

/* BACKGROUND */
body {
    margin: 0;
    height: 100vh;
    background: radial-gradient(circle, #000814, #021a2a);
    color: #00f7ff;
    overflow: hidden;
}

/* LINES */
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

/* BOX */
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

/* CONTENT */
.content {
    width: 350px;
    margin: auto;
    margin-top: 40px;
    text-align: center;
}

/* TITLE */
.title {
    font-family: 'Orbitron';
    font-size: 24px;
    margin-bottom: 25px;
}

/* INPUT */
input {
    width: 100%;
    padding: 10px;
    margin: 12px 0;
    background: transparent;
    border: none;
    border-bottom: 2px solid #00f7ff;
    color: white;
    font-family: 'Rajdhani';
}

/* BUTTON */
.btn {
    width: 100%;
    padding: 12px;
    margin-top: 15px;
    border: 1px solid #00f7ff;
    background: transparent;
    color: #00f7ff;
    font-family: 'Orbitron';
    cursor: pointer;
}

.btn:hover {
    background: #00f7ff;
    color: black;
}

/* LINK */
.link {
    margin-top: 15px;
    font-family: 'Rajdhani';
}

.link a {
    color: #00f7ff;
    text-decoration: none;
}

</style>
</head>

<body>

<div class="line top-line"></div>
<div class="line bottom-line"></div>

<div class="box">
    <div class="content">

        <div class="title">SYSTEM LOGIN</div>

        <form action="HomeLogin" method="post">
            <input type="text" name="HunterName" placeholder="Hunter Name">
            <input type="password" name="Password" placeholder="Password">

            <button class="btn">ENTER SYSTEM</button>
        </form>

        <div class="link">
            New Hunter? <a href="Signup">Register Now</a>
        </div>

    </div>
</div>

</body>
</html>