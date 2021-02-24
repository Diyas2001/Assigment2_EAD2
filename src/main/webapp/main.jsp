<%@ include file="header.jsp"  %>

<h1 style="text-align: center; margin-top: 60px">Welcome to Main </h1>
<%String fname = request.getParameter("fname");
    String lname = request.getParameter("lname");
    String login = request.getParameter("login");
    String password = request.getParameter("password");%>
<h1 style="text-align: center; margin-top: 60px">Login successfully Registered!</h1>
<h1 style="text-align: center; margin-top: 60px">Your account information:</h1>
<h1><%=fname%></h1>
<h1><%=lname%></h1>
<h1><%=login%></h1>
<h1><%=password%></h1>
