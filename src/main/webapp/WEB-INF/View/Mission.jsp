<!DOCTYPE html>
<html>
<head>
<title>Missions</title>
<link href="https://fonts.googleapis.com/css2?family=Orbitron&display=swap" rel="stylesheet">

<style>
body {
    margin:0;
    font-family:'Orbitron';
    background: radial-gradient(circle, #000814, #021a2a);
    color:#00f7ff;
    overflow:hidden;
}

/* LINES */
.line {
    position:fixed;
    left:10%;
    width:80%;
    height:4px;
    background:#00f7ff;
    box-shadow:0 0 20px #00f7ff;
}

.top-line{top:50%;animation:up 1.5s forwards;}
.bottom-line{top:50%;animation:down 1.5s forwards;}

@keyframes up{to{top:80px;}}
@keyframes down{to{top:calc(100% - 80px);}}

/* CONTAINER */
.container{
    width:80%;
    height:calc(100vh - 220px);
    margin:110px auto;
    display:flex;
    border:1px solid #00f7ff;
    box-shadow:0 0 20px #00f7ff;
    overflow:hidden;
    opacity:0;
    animation:show 1s forwards 1.5s;
}

@keyframes show{to{opacity:1;}}

/* SIDEBAR */
.sidebar{
    width:200px;
    border-right:1px solid #00f7ff;
    padding:20px;
}

.menu{
    padding:12px;
    margin:10px 0;
    border:1px solid #00f7ff;
    text-align:center;
    cursor:pointer;
}

.menu:hover{background:#00f7ff;color:black;}
.active{background:#00f7ff;color:black;}

/* MAIN */
.main{
    flex:1;
    padding:20px;
    overflow:auto;
}

/* QUEST */
.quest{
    border-bottom:1px solid #00f7ff;
    padding:10px;
}
</style>
</head>

<body>

<div class="line top-line"></div>
<div class="line bottom-line"></div>

<div class="container">

<div class="sidebar">
<div class="menu" onclick="location.href='HomeLogin'">Dashboard</div>
<div class="menu active" onclick="loctaion.href='mission'">Missions</div>
<div class="menu" onclick="location.href='stats'">Stats</div>
<div class="menu" onclick="location.href='inventory'">Inventory</div>
<div class="menu" onclick="location.href='skill'">Skills</div>
<div class="menu" onclick="location.href='setting'">Settings</div>
</div>

<div class="main">

<h2>DAILY QUEST</h2>

<div class="quest">25 Push-ups (0/25)</div>
<div class="quest">25 Sit-ups (0/25)</div>
<div class="quest">25 Squats (0/25)</div>
<div class="quest">10,000 Steps (0/10000)</div>

</div>

</div>

</body>
</html>