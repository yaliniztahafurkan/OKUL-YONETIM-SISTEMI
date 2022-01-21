<%-- 
    Document   : logoutprocess
    Created on : 17.Oca.2022, 20:01:43
    Author     : Taha Furkan Yalınız
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Çıkış</title>
    <style>
        body {
            min-height: 100vh;
            background-image: linear-gradient(120deg,black,white);
        }
        h1 {
            margin-top: 300px;
        }
        a {
            margin-top: 300px;
        }
        div {
            background-color: #4CAF50;
            border: none;
            color: white;
            padding: 16px 32px;
            margin: 4px 2px;
            cursor: pointer;
            margin-top: 10px;
            border-radius: 15px;
            width: 150px;
        }
    </style>
</head>
<body>
    <%
        session.invalidate();
    %>
    <center>
    <h1><font color="Red">Başarıyla çıkış yaptınız...</font></h1>
    <div style="text-decoration: none;">
    <a href="login.jsp">Ana Sayfaya Geri Dön</a>
    </div>
    </center>
    
</body>
</html>
