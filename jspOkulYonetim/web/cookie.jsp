<%-- 
    Document   : notlar
    Created on : 17.Oca.2022, 19:35:16
    Author     : Taha Furkan Yalınız
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String cookieName = "username";
        Cookie cookies [] = request.getCookies ();
        Cookie myCookie = null;
        if (cookies != null){
            for (int i = 0; i < cookies.length; i++){
                if (cookies [i].getName().equals (cookieName)){
                myCookie = cookies[i];
            break;}}}

%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Girilen Notlar Cookie</title>
</head>
<body>
    
    <h1>Girilen Notlar Cookie</h1>
    <%
         
        String dersAdi="";
        String dersNotu="";
        String ogrenciAdi="";
        String ders="";
        if (request.getCookies()!= null) {
            for (Cookie cookie : request.getCookies()){
                if (cookie.getName().equals("")){
                    dersAdi = cookie.getValue();
                } 
            }   
        }
        if (request.getCookies()!= null) {
            for (Cookie cookie : request.getCookies()){
                if (cookie.getName().equals("")){
                    dersNotu = cookie.getValue();
                } 
            }   
        } 
        if (request.getCookies()!= null) {
            for (Cookie cookie : request.getCookies()){
                if (cookie.getName().equals("")){
                    ogrenciAdi = cookie.getValue();
                } 
            }   
        }
        if (request.getCookies()!= null) {
            for (Cookie cookie : request.getCookies()){
                if (cookie.getName().equals("")){
                    ders = cookie.getValue();
                } 
            }   
        } 
        for(int i=0; i < request.getCookies().length; i++) {
            out.println("Name : " + request.getCookies()[i].getName() + "</br>  Value : " + request.getCookies()[i].getValue() + "</br>");
        }
        
    %>
    
    <% if (myCookie == null) {     %>
        Ders adıyla çerez bulunamadı <%=cookieName%>
    <%  } else {   %>
        <p>Notu <%=myCookie.getValue()%>.
    <% } %>
<div style="margin-top: 290px;">
        <center>
        <p>Tüm Telif Hakkı &copy; 2022 Taha Furkan YALINIZ. Tüm Hakları Saklıdır.</p>
        </center>
    </div>
</body>
</html>
