package org.isj.billetweb.presentation;

import org.isj.billetweb.domaine.Personne;
import org.isj.billetweb.domaine.Ticket;
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
import java.io.IOException;

@WebServlet(name = "EnregistrerReservationServlet", urlPatterns = "/enregistrerrereservationservlet")
public class EnregistrerReservationServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        //récupération des valeurs saisies par l'utilisateur
        String numero, nom, prenom, telephone;
        String typePiece;

        numero = request.getParameter("numero");
        nom = request.getParameter("nom");
        prenom = request.getParameter("prenom");
        telephone = request.getParameter("telephone");
        typePiece = request.getParameter("piece");

        long id_voyage = Long.valueOf(request.getParameter("idvoyage"));

        //creation et initialisation de notre objet ticket
        Ticket ticket = new Ticket();
        Personne personne = new Personne(nom, prenom, telephone, typePiece);

        ticket.setNumeroPlace(numero);
        ticket.setPersonne(personne);
        ticket.setStatut(Ticket.Statut.enregistrer);


        //Obtention d'un entitymanager à partir de EntityManagerFatory
        EntityManagerFactory emf = (EntityManagerFactory) getServletContext().getAttribute("emf");
        EntityManager em = emf.createEntityManager();
        em.persist(personne);
        Voyage voyage = emf.createEntityManager().find(Voyage.class, id_voyage);
        ticket.setVoyage(voyage);


        //Sauvegarde l'objet resa via la couche service.
        IService service = new ServiceImpl(em);
        service.reservationService(ticket);

        request.getRequestDispatcher("index.jsp").forward(request, response);

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
