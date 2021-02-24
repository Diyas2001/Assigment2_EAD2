
<%@ include file="header.jsp"  %>
<form action="RegisterServlet" method="post">
    <input type="text" name="fname" placeholder="First Name" /><br />
    <input type="text" name="lname" placeholder="Last Name" /><br />
    <input type="text" name="login" placeholder="Login" /><br />
    <input type="password" name="password" placeholder="Password" /><br />
    <input type="submit" name="submit" value="Submit" />
</form>
<div class="output">
    <%
        if (request.getMethod().equals("post")) {
            if (!request.getParameter("fname").equals("")) {
                System.out.print("<p>Login: " + request.getParameter("fname") + "</p>");
            }
            if (!request.getParameter("lname").equals("")) {
                System.out.print("<p>Login: " + request.getParameter("lname") + "</p>");
            }
            if (!request.getParameter("login").equals("")) {
                System.out.print("<p>Login: " + request.getParameter("login") + "</p>");
            }
            if (!request.getParameter("password").equals("")) {
                System.out.print("<p>Password: " + request.getParameter("password") + "</p>");
            }
        }
    %>
</div>

