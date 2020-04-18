package org.isj.billetweb.domaine;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Place {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;

    private int numero;

    private boolean estPris = false;


    public Place() {
    }

    public Place(int numero, boolean estPris) {
        this.numero = numero;
        this.estPris = estPris;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public int getNumero() {
        return numero;
    }

    public void setNumero(int numero) {
        this.numero = numero;
    }

    public boolean isEstPris() {
        return estPris;
    }

    public void setEstPris(boolean estPris) {
        this.estPris = estPris;
    }

    @Override
    public String toString() {
        return "Place{" +
                "id=" + id +
                ", numero=" + numero +
                ", estPris=" + estPris +
                '}';
    }
}
