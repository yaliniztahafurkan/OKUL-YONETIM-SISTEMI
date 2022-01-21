<%-- 
    Document   : logout
    Created on : 17.Oca.2022, 20:01:37
    Author     : Taha Furkan Yalınız
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width">
        <link href="bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <title>Çıkış Sayfası</title>
        <style> 
            body {
                min-height: 100vh;
                background-image: linear-gradient(120deg,black,white);
            }
            input[type=button], input[type=submit], input[type=reset] {
            background-color: #4CAF50;
            border: none;
            color: white;
            padding: 16px 32px;
            text-decoration: none;
            margin: 4px 2px;
            cursor: pointer;
            margin-top: 300px;
            border-radius: 15px;
            
            
            }
        }
</style>
    </head>
    <form method="link" action="logoutprocess.jsp">
    <body>
    <center><input type="submit" value="Çıkış Yap"></center>
    <div style="margin-top: 310px;">
        <center>
        <p>Tüm Telif Hakkı &copy; 2022 Taha Furkan YALINIZ. Tüm Hakları Saklıdır.</p>
        </center>
    </div>
    </body>
</html>
