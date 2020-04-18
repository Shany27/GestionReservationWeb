package org.isj.billetweb.domaine;

import javax.persistence.*;

@Entity
@Table(name = "personne")
public class Personne {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;

    @Column(name = "nom", length = 30, nullable = false)
    private String nom;

    @Column(name = "prenom", length = 30, nullable = false)
    private String prenom;

    @Column(name = "telephone", length = 15, nullable = false)
    private String telephone;

    @Column(name = "type_piece")
    private String typePiece;

    @OneToOne(cascade = CascadeType.ALL, fetch = FetchType.LAZY)
    @JoinColumn(name = "ticket_id", unique = true)
    private Ticket ticket;

    public Personne() {
    }

    public Personne(String nom, String prenom, String telephone, String typePiece) {
        this.nom = nom;
        this.prenom = prenom;
        this.telephone = telephone;
        this.typePiece = typePiece;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getNom() {
        return nom;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }

    public String getPrenom() {
        return prenom;
    }

    public void setPrenom(String prenom) {
        this.prenom = prenom;
    }

    public String getTelephone() {
        return telephone;
    }

    public void setTelephone(String telephone) {
        this.telephone = telephone;
    }

    public String getTypePiece() {
        return typePiece;
    }

    public void setTypePiece(String typePiece) {
        this.typePiece = typePiece;
    }

    public Ticket getTicket() {
        return ticket;
    }

    public void setTicket(Ticket ticket) {
        this.ticket = ticket;
    }

    @Override
    public String toString() {
        return "Personne{" +
                "id=" + id +
                ", nom='" + nom + '\'' +
                ", prenom='" + prenom + '\'' +
                ", telephone='" + telephone + '\'' +
                ", typePiece=" + typePiece +
                ", ticket=" + ticket +
                '}';
    }
}
