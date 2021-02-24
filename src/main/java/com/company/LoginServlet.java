package com.company;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "LoginServlet", value = "/LoginServlet")
public class LoginServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String login = req.getParameter("login");
        String password = req.getParameter("password");

        if(login.isEmpty() || password.isEmpty() )
        {
            RequestDispatcher rd = req.getRequestDispatcher("login.jsp");
            PrintWriter out = resp.getWriter();
            out.println("<h1>Username or password is wrong.</h1>");
            rd.include(req, resp);
        }
        else
        {
            HttpSession oldSession = req.getSession(false);
            if (oldSession != null) {
                oldSession.invalidate();
            }
            HttpSession newSession = req.getSession(true);
            newSession.setMaxInactiveInterval(60*60);
            Cookie loginEmail = new Cookie("login", login);
            resp.addCookie(loginEmail);
            resp.sendRedirect("index.jsp");
        }

    }

}
