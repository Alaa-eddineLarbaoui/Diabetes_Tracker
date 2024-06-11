package com.beans;

import javax.persistence.*;

@Entity
@Table(name = "Nourriture")
public class Nourriture {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column
    private Integer idNourriture;

    @Column
    private String nom_Nourriture;

    @Column
    private String avantages_Nourriture;

    @Column
    private Integer valeur_de_Sucre100g;

    @Column
    private Integer valeur_de_Sucre1g;

    @Column
    private String photo_url;

    @Column
    private Integer Protein;

    @Column
    private Integer Fats;

    @Column
    private Integer Carbs;

    @Column
    private Integer Kcal;

    @Column
    private Integer cal;

    @Column
    private String genre;


    // Constructeur sans paramètres
    public Nourriture() {}

    // Getters et Setters
    public Integer getIdNourriture() {
        return idNourriture;
    }

    public void setIdNourriture(Integer idNourriture) {
        this.idNourriture = idNourriture;
    }

    public String getNom_Nourriture() {
        return nom_Nourriture;
    }

    public void setNom_Nourriture(String nom_Nourriture) {
        this.nom_Nourriture = nom_Nourriture;
    }

    public String getAvantages_Nourriture() {
        return avantages_Nourriture;
    }

    public void setAvantages_Nourriture(String avantages_Nourriture) {
        this.avantages_Nourriture = avantages_Nourriture;
    }

    public Integer getValeur_de_Sucre100g() {
        return valeur_de_Sucre100g;
    }

    public void setValeur_de_Sucre100g(Integer valeur_de_Sucre100g) {
        this.valeur_de_Sucre100g = valeur_de_Sucre100g;
    }

    public Integer getValeur_de_Sucre1g() {
        return valeur_de_Sucre1g;
    }

    public void setValeur_de_Sucre1g(Integer valeur_de_Sucre1g) {
        this.valeur_de_Sucre1g = valeur_de_Sucre1g;
    }

    public String getPhoto_url() {
        return photo_url;
    }

    public void setPhoto_url(String photo_url) {
        this.photo_url = photo_url;
    }

    public Integer getProtein() {
        return Protein;
    }

    public void setProtein(Integer Protein) {
        this.Protein = Protein;
    }

    public Integer getFats() {
        return Fats;
    }

    public void setFats(Integer Fats) {
        this.Fats = Fats;
    }

    public Integer getCarbs() {
        return Carbs;
    }

    public void setCarbs(Integer Carbs) {
        this.Carbs = Carbs;
    }

    public Integer getKcal() {
        return Kcal;
    }

    public void setKcal(Integer Kcal) {
        this.Kcal = Kcal;
    }

    public Integer getCal() {
        return cal;
    }

    public void setCal(Integer cal) {
        this.cal = cal;
    }

    public String getGenre() {
        return genre;
    }

    public void setGenre(String genre) {
        this.genre = genre;
    }

    @Override
    public String toString() {
        return "Nourriture{" +
                "idNourriture=" + idNourriture +
                ", nom_Nourriture='" + nom_Nourriture + '\'' +
                ", avantages_Nourriture='" + avantages_Nourriture + '\'' +
                ", valeur_de_Sucre100g=" + valeur_de_Sucre100g +
                ", valeur_de_Sucre1g=" + valeur_de_Sucre1g +
                ", photo_url='" + photo_url + '\'' +
                ", Protein=" + Protein +
                ", Fats=" + Fats +
                ", Carbs=" + Carbs +
                ", Kcal=" + Kcal +
                ", cal=" + cal +
                '}';
    }
}
