package org.isj.billetweb.service;

import org.isj.billetweb.domaine.Ticket;
import org.isj.billetweb.domaine.Voyage;

import java.util.List;

public interface IService {

    public List<Voyage> searchBusService(Voyage voyage);

    public List<Voyage> listDestinationsService();

    public int reservationService(Ticket ticket);

    public int envoyerMessageService();
}
