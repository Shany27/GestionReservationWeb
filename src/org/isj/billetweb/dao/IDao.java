package org.isj.billetweb.dao;


import org.isj.billetweb.domaine.Ticket;
import org.isj.billetweb.domaine.Voyage;

import java.util.List;

public interface IDao {

    public List<Voyage> listDestinationsDao();

    public List<Voyage> searchBusDao(Voyage voyage);

    public int reservationDao(Ticket ticket);

    public int envoyerMessageDao();

}
