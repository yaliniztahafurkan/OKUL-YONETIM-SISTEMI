<%-- 
    Document   : index
    Created on : 12.Oca.2022, 22:57:53
    Author     : Taha Furkan Yalınız
    
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        
    <title>ANASAYFA</title>
    
    <style>
    #slider {
    font: 19px sans-serif;
    margin: 0px auto;
    position: relative;
    width: 600px;
    height: 300px;
    overflow: hidden;
    margin-top: 100px;
    
  }

  #kontrol {
    position: absolute;
    right: 0px;
    bottom: 10px;
    
  }

  #kontrol a {
    color: #ffffff;
    background-color: rgba(0, 0, 0, 0.5);
    padding: 10px;
    text-decoration: none;
  }
  .tabBlok
        {
            background-color:#57574f;
            border:solid 0px #FFA54F;
            border-radius:5px; -moz-border-radius:5px; -webkit-border-radius:5px;
            max-width:200px;
            width:100%;
            overflow:hidden;
            display:block;
        }
        .dijitalSaat
        {
            vertical-align:middle;
            font-family:Orbitron;
            font-size:40px;
            font-weight:normal;
            color:#FFF;
            padding:0 10px;
        }
        .saat
        {
            vertical-align:middle; 
            font-family:Orbitron;
            font-size:20px;
            font-weight:normal;
            color:#FFF;
        }
        .zemin{
            background-color:#F3F3F3;
            max-width:220px;
            width:100%;
            margin:0 auto;
            padding:20px;
            margin-top: 50px;
        }
    </style>
</head>
<body onload="dijitalSaat();">
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
    <a class="navbar-brand" href="adminIndex.jsp">Okul Yönetim Sistemi</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNav">
        <ul class="navbar-nav">
            
            <li class="nav-item">
                <a class="nav-link" href="DAO/ders/ders.jsp">Ders Ekle</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="DAO/grup/grup.jsp">Grup Ekle</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="DAO/ogrenci/ogrenci.jsp">Öğrenci Kayıt</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="DAO/ogretmen/ogretmen.jsp">Öğretmen Kayıt</a>
            </li>
            <li class="nav-item" style="display:none;">
                <a class="nav-link disabled" href="DAO/not/not.jsp">Not Giriş</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="cookie.jsp">Girilen  Notları Görüntüle</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="logout.jsp">Çıkış Yap</a>
            </li>
            <li class="nav-item" style="display:none;">
                <div style="margin-left:490px;" >
                <input type="submit" id="renk" name="renk" value="Renk Değiştir" class="btn  btn-info">
                </div>  
            </li>
        </ul>
    </div>
    </nav>
    <%
        String username=(String)session.getAttribute("username");
    %>
    <marquee behavior="alternate" bgcolor="lightgreen" height="50px"><h1>Okul Yönetim Sistemine Hoşgeldiniz. ( Kullanıcı : <%=username%> ) </h1></marquee>
    <div>
    <!-- <img src="images/ogrnc.png" alt=""/> -->
    </div>
        
    
    <script>
        var dizi=["#D24D57","#e74c3c","#f1c40f","#2c3e50","#8e44ad","#bdc3c7","#1abc9c","#3498db","#95a5a6"];
        var renk=document.getElementById("renk");
 
 
        renk.onclick=function(){
 
        var rasgele=Math.floor(Math.random()*dizi.length);
 
        document.body.style.backgroundColor=dizi[rasgele];
 
        }
 
 
</script>
    <div id="slider">
        <div class="slayt"><img src="https://listelist.com/wp-content/uploads/2018/09/bbbb.jpg" /></div>
        <div class="slayt"><img src="https://www.mardinlife.com/uploads/2021/04/ruyada-ders-calistigini-gormenin-tabiri-nedir-ruyada-ders-calismak-ne-anlama-gelir-56777.jpeg" /></div>
        <div class="slayt"><img src="https://unsplash.it/600/300?image=2" /></div>
        <div class="slayt"><img src="https://www.unirehberi.com/wp-content/uploads/2018/06/ders-calismakk-az.jpg" /></div>
        <div id="kontrol">
        <a href="javascript:oncekiSlayt()">Önceki</a>
        <a href="javascript:sonrakiSlayt()">Sonraki</a>
        </div>
    </div>
    
    <script>
        "use strict";
        var _slayt = document.getElementsByClassName("slayt");
        var slaytSayisi = _slayt.length;
        var slaytNo = 0;
        var i = 0;

        slaytGoster(slaytNo);

        function sonrakiSlayt() {
            slaytNo++;
            slaytGoster(slaytNo);
        }

        function oncekiSlayt() {
            slaytNo--;
            slaytGoster(slaytNo);
        }

        function slaytGoster(slaytNumarasi) {
            slaytNo = slaytNumarasi;

            if (slaytNumarasi >= slaytSayisi) slaytNo = 0;

            if (slaytNumarasi < 0) slaytNo = slaytSayisi - 1;

            for (i = 0; i < slaytSayisi; i++) {
            _slayt[i].style.display = "none";
            }

            _slayt[slaytNo].style.display = "block";

        }
    </script>
    <div class="zemin" >
 
        <table class="tabBlok" align="center" cellspacing="0" cellpadding="0" border="0">
            <tr><td class="dijitalSaat" id="dt"></td> 
                <td>
                    <table cellpadding="0" cellspacing="0" border="0">
 
                        <tr><td class="saat" id="dt_saat">😴</td></tr>
 
                        <!-- SHOWING SECONDS. -->
                        <tr><td class="saat" id="dt_saniye"></td></tr>
                    </table>
                </td>
            </tr>
        </table>
    </div>
    <div style="margin-top: 167px;">
        <center>
        <p>Tüm Telif Hakkı &copy; 2022 Taha Furkan YALINIZ. Tüm Hakları Saklıdır.</p>
        </center>
    </div>
</body>
<script>

    function dijitalSaat() {
        var dt = new Date(); 
        var saat = dt.getHours();
        var dakika = dt.getMinutes();
        var saniye = dt.getSeconds();
 
        dakika = Tik(dakika);
        saniye = Tik(saniye);
 
        document.getElementById('dt').innerHTML = saat + ":" + dakika;
        document.getElementById('dt_saniye').innerHTML = saniye;
 
        if (saat > 12) { 
            document.getElementById('dt_saat').innerHTML = '😊'; 
        }
        else { 
            document.getElementById('dc_hour').innerHTML = '😴'; 
        }
 

        var time
        time = setInterval('dijitalSaat()', 1000);
    }
 
    function Tik(tikDegeri) {
        if (tikDegeri < 10) {
            tikDegeri = "0" + tikDegeri;
        }
        return tikDegeri;
    }
</script>
</html>
