<%@ include file="header.jsp"  %>
<form action="LoginServlet" method="post">
    <input type="text" name="login" placeholder="Login" /><br />
    <input type="password" name="password" placeholder="Password" /><br />
    <input type="submit" name="submit" value="Submit" />
</form>
<div class="output">
    <%
        if (request.getMethod().equals("post")) {
            if (!request.getParameter("login").equals("")) {
                System.out.print("<p>Login: " + request.getParameter("login") + "</p>");
            }
            if (!request.getParameter("password").equals("")) {
                System.out.print("<p>Password: " + request.getParameter("password") + "</p>");
            }

        }
    %>
</div>

