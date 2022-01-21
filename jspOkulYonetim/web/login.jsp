<%-- 
    Document   : login
    Created on : 12.Oca.2022, 22:16:58
    Author     : Taha Furkan Yalınız
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/style3.css" rel="stylesheet" type="text/css"/>
    <title>Giriş Sayfası</title>
    
</head>
<body>
    
    
    <div class="loginbox">
        <img src="images/images.png" alt=""class="avatar">
        <h1>Giriş  Yapınız</h1>
            <form method="POST" action="DAO/loginv.jsp">
                    <label class="form-label">Kullanıcı Adı : </label>
                    <input type="text" id="username" name="username" class="form-control" placeholder="Username" size="30px" required>
                
                
                    <label class="form-label">Şifre : </label>
                    <input type="password" id="password" name="password" class="form-control" placeholder="Password" size="30px" required>
                
                </br>
                <input type="submit" value="Giriş">
                
            </form>
            <form method="POST" action="register.jsp">
                </br>
                <div align="left">
                    <input type="submit" id="submit" name="submit" value="Kayıt Ol" class="btn  btn-info">
                </div>
                
            </form>
    
    <div style="margin-top: 290px;">
        <center>
        <p>Tüm Telif Hakkı &copy; 2022 Taha Furkan YALINIZ. Tüm Hakları Saklıdır.</p>
        </center>
    </div>
</body>
</html>
