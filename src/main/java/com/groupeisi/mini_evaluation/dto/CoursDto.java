package com.groupeisi.mini_evaluation.dto;

import java.io.Serializable;

public class CoursDto implements Serializable {

    private long id;
    private String matiere;
    private String professeur;
    private String classe;

    public CoursDto(long id, String matiere, String professeur, String classe) {
        this.id = id;
        this.matiere = matiere;
        this.professeur = professeur;
        this.classe = classe;
    }

    public CoursDto() {
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getMatiere() {
        return matiere;
    }

    public void setMatiere(String matiere) {
        this.matiere = matiere;
    }

    public String getProfesseur() {
        return professeur;
    }

    public void setProfesseur(String professeur) {
        this.professeur = professeur;
    }

    public String getClasse() {
        return classe;
    }

    public void setClasse(String classe) {
        this.classe = classe;
    }

    @Override
    public String toString() {
        return "CoursDto{" +
                "id='" + id + '\'' +
                ", matiere='" + matiere + '\'' +
                ", professeur=" + professeur +'\'' +
                ", classe=" + classe +
                '}';
    }
}
