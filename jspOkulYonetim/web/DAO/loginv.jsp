
<%
    String username = request.getParameter("username");
    String password = request.getParameter("password");
    
    
    if(username.equals("admin") && password.equals("123")) {
        String redirect = "../adminIndex.jsp";
        
        response.sendRedirect(redirect);
        session.setAttribute("username", username);
        Cookie cookie =new Cookie("username",username);
        cookie.setMaxAge(60*60);
        response.addCookie(cookie);
    }
    if (username.equals("ogretmen") && password.equals("123")){
        String redirect = "../ogretmenIndex.jsp";
        response.sendRedirect(redirect);
        session.setAttribute("username", username);
        Cookie cookie =new Cookie("username",username);
        cookie.setMaxAge(60*60);
        response.addCookie(cookie);
    }
    if (username.equals("ogrenci") && password.equals("123")){
        String redirect = "../ogrenciIndex.jsp";
        response.sendRedirect(redirect);
        session.setAttribute("username", username);
        Cookie cookie =new Cookie("username",username);
        cookie.setMaxAge(60*60);
        response.addCookie(cookie);
    }
    
    
    
    
    
    
%>