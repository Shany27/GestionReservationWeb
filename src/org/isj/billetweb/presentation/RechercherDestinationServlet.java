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
import java.sql.Date;
import java.util.List;

@WebServlet(name = "RechercherDestinationServlet", urlPatterns = {"/rechercherDestination"})
public class RechercherDestinationServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Recuperation des valeurs saisies par l'utilisateur
        String lieu;
        Date date;
        float prix = 0;
        Voyage.TypeVoyage type;

        lieu = request.getParameter("lieu");
        date = Date.valueOf(request.getParameter("date"));
        type = Voyage.TypeVoyage.valueOf(request.getParameter("type"));

        EntityManagerFactory emf = (EntityManagerFactory) getServletContext().getAttribute("emf");
        EntityManager em = emf.createEntityManager();

        //Sauvegarde l'objet voyage via la couche service.
        IService service = new ServiceImpl(em);

        Voyage bus = new Voyage(date, lieu, prix, type);
        List<Voyage> listBus = service.searchBusService(bus);

        //sauvegarde la liste dans la session de l'application web,
        HttpSession session = request.getSession();
        session.setAttribute("listDestinations", listBus);

        request.getRequestDispatcher("travel_destination.jsp").forward(request, response);

    }


    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


    }


}
