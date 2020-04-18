package org.isj.billetweb.service;


import org.isj.billetweb.dao.DaoImpl;
import org.isj.billetweb.dao.IDao;
import org.isj.billetweb.domaine.Ticket;
import org.isj.billetweb.domaine.Voyage;

import javax.persistence.EntityManager;
import java.util.List;

public class ServiceImpl implements IService {

    private IDao dao;

    public ServiceImpl(EntityManager em) {
        this.dao = new DaoImpl(em);
    }

    @Override
    public List<Voyage> searchBusService(Voyage voyage) {
        return dao.searchBusDao(voyage);
    }

    @Override
    public List<Voyage> listDestinationsService() {
        return dao.listDestinationsDao();
    }

    @Override
    public int reservationService(Ticket ticket) {
        return dao.reservationDao(ticket);
    }

    @Override
    public int envoyerMessageService() {
        return 1;
    }
}
