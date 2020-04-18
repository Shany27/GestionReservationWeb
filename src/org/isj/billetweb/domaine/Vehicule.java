package org.isj.billetweb.domaine;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Entity
public class Vehicule {

    private enum TypeBus {
        COASTER, BUS
    }

    @Transient
    private static final int COASTER = 7;

    @Transient
    private static final int BUS = 15;

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;

    @Column(name = "immatriculation", nullable = false)
    private String immatriculation;


    @OneToMany(mappedBy = "vehicule", cascade = {CascadeType.ALL})
    private List<Voyage> ListVoyages = new ArrayList<>();

    @Column(name = "type_bus", nullable = false)
    @Enumerated(EnumType.STRING)
    private TypeBus typeBus;

    @Transient
    private static Map<String, Boolean> places = new HashMap<>();

    public Vehicule() {
    }


    public Vehicule(String immatriculation) {
        this.immatriculation = immatriculation;
        for (int i = 0; i <= COASTER; i++) {
            places.put("A" + i, Boolean.FALSE);
            places.put("B" + i, Boolean.FALSE);
            places.put("C" + i, Boolean.FALSE);
            places.put("D" + i, Boolean.FALSE);
            places.put("E" + i, Boolean.FALSE);
        }
    }

    public Vehicule(String immatriculation, TypeBus typeBus) {
        this.immatriculation = immatriculation;
        this.typeBus = typeBus;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getImmatriculation() {
        return immatriculation;
    }

    public void setImmatriculation(String immatriculation) {
        this.immatriculation = immatriculation;
    }

    public List<Voyage> getListVoyages() {
        return ListVoyages;
    }

    public void setListVoyages(List<Voyage> listVoyages) {
        ListVoyages = listVoyages;
    }

    public TypeBus getTypeBus() {
        return typeBus;
    }

    public void setTypeBus(TypeBus typeBus) {
        this.typeBus = typeBus;
    }

    @Override
    public String toString() {
        return "Vehicule{" +
                "id=" + id +
                ", immatriculation='" + immatriculation + '\'' +
                ", typeBus=" + typeBus +
                '}';
    }
}
