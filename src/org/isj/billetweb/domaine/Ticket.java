package org.isj.billetweb.domaine;

import javax.persistence.*;

@Entity
@Table(name = "ticket")
public class Ticket {

    public enum Statut {
        vendu, enregistrer
    }

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;

    @Column(name = "numero_place", length = 5)
    private String numeroPlace;

    @Column(name = "etat_ticket", nullable = false)
    @Enumerated(EnumType.STRING)
    private Statut Statut;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "voyage_id", nullable = false)
    private Voyage voyage;

    @OneToOne(mappedBy = "ticket", fetch = FetchType.EAGER)
    @JoinColumn(name = "personne_id", unique = true, nullable = false)
    private Personne personne;

    public Ticket() {
    }

    public Ticket(String numeroPlace, Ticket.Statut statut, Voyage voyage, Personne personne) {
        this.numeroPlace = numeroPlace;
        Statut = statut;
        this.voyage = voyage;
        this.personne = personne;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getNumeroPlace() {
        return numeroPlace;
    }

    public void setNumeroPlace(String numeroPlace) {
        this.numeroPlace = numeroPlace;
    }

    public Ticket.Statut getStatut() {
        return Statut;
    }

    public void setStatut(Ticket.Statut statut) {
        Statut = statut;
    }

    public Voyage getVoyage() {
        return voyage;
    }

    public void setVoyage(Voyage voyage) {
        this.voyage = voyage;
    }

    public Personne getPersonne() {
        return personne;
    }

    public void setPersonne(Personne personne) {
        this.personne = personne;
    }

    @Override
    public String toString() {
        return "Ticket{" +
                "id=" + id +
                ", numeroPlace='" + numeroPlace + '\'' +
                ", Statut=" + Statut +
                '}';
    }
}
