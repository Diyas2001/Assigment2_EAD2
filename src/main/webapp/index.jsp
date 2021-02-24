<%@ include file="header.jsp"  %>

<h1 style="text-align: center; margin-top: 60px">Welcome to Home </h1>
<%
    String login = null;
    String sessionID = null;
    Cookie[] cookies = request.getCookies();
    if(cookies != null){
        for(Cookie cookie : cookies){
            if(cookie.getName().equals("login")) login = cookie.getValue();
            if(cookie.getName().equals("JSESSIONID")) sessionID = cookie.getValue();
        }
    }
%>
<h1 style="text-align: center; margin-top: 60px">Login: <%=login%> successfully logged!</h1>

