package org.isj.billetweb.presentation;

import org.isj.billetweb.domaine.Voyage;
import org.isj.billetweb.service.IService;
import org.isj.billetweb.service.ServiceImpl;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;



@WebServlet(name = "ListDestinationServlet", urlPatterns = "/listDestinationServlet")
public class ListDestinationServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        EntityManagerFactory emf = (EntityManagerFactory) getServletContext().getAttribute("emf");
        EntityManager em = emf.createEntityManager();

        IService service = new ServiceImpl(em);

        List<Voyage> listDestinations = service.listDestinationsService();

        //sauvegarde la liste dans la session de l'application web,
        HttpSession session = request.getSession();
        session.setAttribute("listDestinations", listDestinations);

        request.getRequestDispatcher("travel_destination.jsp").forward(request, response);
    }
}
