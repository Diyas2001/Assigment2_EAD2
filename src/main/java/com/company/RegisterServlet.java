package com.company;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "RegisterServlet", value = "/RegisterServlet")

public class RegisterServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String fname = req.getParameter("fname");
        String lname = req.getParameter("lname");
        String login = req.getParameter("login");
        String password = req.getParameter("password");

        if(fname.isEmpty() || lname.isEmpty() || login.isEmpty() ||
                password.isEmpty())
        {
            RequestDispatcher request = req.getRequestDispatcher("register.jsp");
            request.include(req, resp);
        }
        else

        {
            RequestDispatcher request = req.getRequestDispatcher("main.jsp");
            request.forward(req, resp);
        }
    }
}
