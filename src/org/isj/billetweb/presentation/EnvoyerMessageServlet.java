package org.isj.billetweb.presentation;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "EnvoyerMessageServlet")
public class EnvoyerMessageServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String message, sender, fullname, object;

        message = request.getParameter("message");
        sender = request.getParameter("sender");
        fullname = request.getParameter("fullname");
        object = request.getParameter("object");

        /*todo a mail
            sender
             fonction

         */

        request.getRequestDispatcher("index.jsp").forward(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
