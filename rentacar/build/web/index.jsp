 <%-- 
    Document   : index
    Author     : CELAL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
     
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link href="Styles/stylee.css" rel="stylesheet" type="text/css"/>
</head>
<body>
        <img class="logo" src="photo/mali.png" alt="logo" width="30%" height="15%">

        <div class="ust">
            <p>RENT A CAR</p>
        </div>

        <div class="d-iç">

        <form action="yonetici_giris.jsp" method="get"> <!-- Yönlendirir -->
            <input id="admin_btn" type="submit" value="YÖNETİCİ GİRİŞİ" />
        </form>

        
        <form action="kullanici_giris.jsp" method="get">
            <input  id="user_btn" type="submit" value="OTURUM AÇ" />
        </form>

        <form action="kayit_formu.jsp" method="get">
            <input  id="kayit_btn" type="submit" value="KAYDOL" />
        </form>
        </div>

    <div class="baslik"></div>

        <div class="metin">
            <p>İhtiyacın olan araba bu portal’da!</p>
        </div>

        <img class="backgr" src="photo/backgr.jpg" alt="backgr" width="100%" height="100%">

        <div class="alt_cizgi"></div>

        <div class="alt_baslik">
            <h1>SİZİN İÇİN KİRALIK ARAÇLAR</h1>
            <div class="cizgi1"></div>
            <div class="cizgi2"></div>
        </div>

        <div class="kira_box" >
            <img class="car1" src="photo/car1.png" alt="car1">
            <center>
            <p class="car1p">MERCEDES GLS 450<br><br>2012</p>
            <p class="car1p2">250 TL</p>
            <form action="kullanici_giris.jsp" method="get">
            <button class="car1btn">KİRALA</button>
            </form>
            </center>
        </div>

        <div class="kira_box2" >
            <img class="car1" src="photo/car2.png" alt="car1">
            <center>
            <p class="car1p">RENAULT CLİO<br><br>2019</p>
            <p class="car1p2">135 TL</p>
            <form action="kullanici_giris.jsp" method="get">
            <button class="car1btn">KİRALA</button>
            </form>
            </center>
        </div>

        <div class="kira_box3" >
            <img class="car1" src="photo/car3.png" alt="car1">
            <center>
            <p class="car1p">MASERATİ GHİBLİ<br><br>2021</p>
            <p class="car1p2">500 TL</p>
            <form action="kullanici_giris.jsp" method="get">
            <button class="car1btn">KİRALA</button>
            </form>
            </center>
        </div>

        <div class="kira_box4" >
            <img class="car1" src="photo/car4.png" alt="car1">
            <center>
            <p class="car1p">FİAT EGEA<br><br>2021</p>
            <p class="car1p2">80 TL</p>
            <form action="kullanici_giris.jsp" method="get">                <button class="car1btn">KİRALA</button>
            </form>
            </center>
        </div>

        <div class="kira_box5" >
            <img class="car1" src="photo/car5.png" alt="car1">
            <center>
            <p class="car1p">VW GOLF<br><br>2019</p>
            <p class="car1p2">150 TL</p>
            <form action="kullanici_giris.jsp" method="get">
            <button class="car1btn">KİRALA</button>
            </form>
            </center>
        </div>

        <div class="kira_box6" >
            <img class="car1" src="photo/car6.png" alt="car1">
            <center>
            <p class="car1p">MAZDA MX-5<br><br>2021</p>
            <p class="car1p2">400 TL</p>
            <form action="kullanici_giris.jsp" method="get">
            <button class="car1btn">KİRALA</button>
            </form>
            </center>
        </div>
</body>
</html>

