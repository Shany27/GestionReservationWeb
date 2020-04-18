package org.isj.billetweb.domaine;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@Entity
@Table(name = "voyage")
public class Voyage {

    public enum TypeVoyage {
        Prestige, Premium, Classique
    }

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;

    @Column(name = "date_voyage", nullable = false)
    private Date date;


    @Column(name = "destination", length = 35, nullable = false)
    private String lieu;

    @Column(name = "prix", nullable = false)
    private float prix;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "vehicule_id")
    private Vehicule vehicule;

    @Column(name = "type_voyage", nullable = false)
    @Enumerated(EnumType.STRING)
    private TypeVoyage typeVoyage;

    @OneToMany(mappedBy = "voyage", cascade = {CascadeType.ALL}, fetch = FetchType.LAZY)
    private List<Ticket> listeTickets = new ArrayList<>();

    public Voyage() {
    }

    public Voyage(Date date, String lieu, float prix, TypeVoyage typeVoyage) {
        this.date = date;
        this.lieu = lieu;
        this.prix = prix;
        this.typeVoyage = typeVoyage;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public String getLieu() {
        return lieu;
    }

    public void setLieu(String lieu) {
        this.lieu = lieu;
    }

    public float getPrix() {
        return prix;
    }

    public void setPrix(float prix) {
        this.prix = prix;
    }

    public Vehicule getVehicule() {
        return vehicule;
    }

    public void setVehicule(Vehicule vehicule) {
        this.vehicule = vehicule;
    }

    public TypeVoyage getTypeVoyage() {
        return typeVoyage;
    }

    public void setTypeVoyage(TypeVoyage typeVoyage) {
        this.typeVoyage = typeVoyage;
    }

    @Override
    public String toString() {
        return "Voyage{" +
                "id=" + id +
                ", date=" + date +
                ", lieu='" + lieu + '\'' +
                ", prix=" + prix +
                ", vehicule=" + vehicule +
                ", typeVoyage=" + typeVoyage +
                '}';
    }
}
