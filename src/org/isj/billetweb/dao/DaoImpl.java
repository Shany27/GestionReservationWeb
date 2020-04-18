package org.isj.billetweb.dao;

import org.isj.billetweb.domaine.Ticket;
import org.isj.billetweb.domaine.Voyage;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import java.util.ArrayList;
import java.util.List;

public class DaoImpl implements IDao {

    private EntityManager em;

    public DaoImpl(EntityManager em) {
        this.em = em;
    }

    @Override
    public List<Voyage> listDestinationsDao() {
        List<Voyage> maListVoyages = new ArrayList<Voyage>();

        try {
            EntityTransaction tx = em.getTransaction();
            tx.begin();
            maListVoyages = em.createQuery("from Voyage", Voyage.class).getResultList();
            tx.commit();

        } catch (Exception e) {
            e.printStackTrace();
        }

        return maListVoyages;
    }

    @Override
    public List<Voyage> searchBusDao(Voyage voyage) {
        List<Voyage> maListVoyage = new ArrayList<Voyage>();
        try {

            EntityTransaction tx = em.getTransaction();
            tx.begin();
            maListVoyage = em.createQuery("from Voyage v where v.lieu = :lieu and v.date = :date and v.typeVoyage = :typeVoyage", Voyage.class)
                    .setParameter("lieu", voyage.getLieu())
                    .setParameter("date", voyage.getDate())
                    .setParameter("typeVoyage", voyage.getTypeVoyage())
                    .getResultList();
            tx.commit();

        } catch (Exception e) {
            e.printStackTrace();
        }
        return maListVoyage;
    }

    @Override
    public int reservationDao(Ticket ticket) {
        try {
            // 2 : Ouverture transaction
            EntityTransaction tx = em.getTransaction();
            tx.begin();

            // 4 : Persistance Objet/Relationnel : cr�ation d'une reservation d'un Objet m�tier en base
            em.persist(ticket);

            // 5 : Fermeture transaction
            tx.commit();
        } catch (Exception e) {
            e.printStackTrace();

            return 0;

        }

        return 1;
    }

    @Override
    public int envoyerMessageDao() {
        return 0;
    }
}
