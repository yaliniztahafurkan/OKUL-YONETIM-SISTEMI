<%-- 
    Document   : register
    Created on : 17.Oca.2022, 19:41:31
    Author     : Taha Furkan Yalınız
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Kayıt Olma</title>
    <style>
        body{
            background-image: linear-gradient(120deg,orange,blue);
        }
        * {box-sizing: border-box}
        
        .container {
            padding: 16px;
        }
        input[type=text], input[type=password] {
            width: 100%;
            padding: 15px;
            margin: 5px 0 22px 0;
            display: inline-block;
            border: none;
            background: #f1f1f1;
        }
        input[type=text]:focus, input[type=password]:focus {
            background-color: #ddd;
            outline: none;
        }
        hr {
            border: 1px solid #f1f1f1;
            margin-bottom: 25px;
        }
        .registerbtn {
            background-color: #04AA6D;
            color: white;
            padding: 16px 20px;
            margin: 8px 0;
            border: none;
            cursor: pointer;
            width: 100%;
            opacity: 0.9;
        }
        .registerbtn:hover {
            opacity:1;
        }
        a {
            color: dodgerblue;
        }

        .signin {
            background-color: #f1f1f1;
            text-align: center;
        }
    </style>
</head>
<body>
    <form action="DAO/reg-process.jsp" method="post">
        <div class="container">
            <h1>Kayıt Ol</h1>
            <p>Bir hesap oluşturmak için lütfen bu formu doldurun.</p>
            <hr>

            <label for="email"><b>Adınız</b></label>
            <input type="text" placeholder="Adınız" name="fname" id="fname" required>

            <label for="psw"><b>Soyadınız</b></label>
            <input type="text" placeholder="Soyadınız" name="lname" id="lname" required>

            <label for="psw-repeat"><b>E-mail</b></label>
            <input type="text" placeholder="E-mail" name="email" id="email" required>
                
            <label for="psw-repeat"><b>Kullanıcı Adı</b></label>
            <input type="text" placeholder="Kullanıcı Adı" name="userid" id="userid" required>
            
            <label for="psw-repeat"><b>Şifre</b></label>
            <input type="password" placeholder="Şifre" name="password" id="password" required>   
            
            <hr>

            <p>Bir hesap oluşturarak, <a href="#">Şartlar ve Gizlilikleri</a> Kabul etmiş olursunuz.</p>
            <button type="submit" class="registerbtn">Kayıt Ol</button>
        </div>

        <div class="container signin">
            <p>Zaten hesabınız var mı? <a href="login.jsp">Giriş Yapın</a>.</p>
        </div>
    </form>
    <div style="margin-top: 290px;">
        <center>
        <p>Tüm Telif Hakkı &copy; 2022 Taha Furkan YALINIZ. Tüm Hakları Saklıdır.</p>
        </center>
    </div>
</body>
</html>
