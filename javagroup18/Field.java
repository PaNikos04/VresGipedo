package javagroup18;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class Field {
    private int id;
    private String street;
    private String number;
    private String region;
    private String title;
    private double cost;
    private String url;
    private String phone;
    private int idCategory;
    private int idOwner;

    public Field(int id, String street, String number, String region, String title, double cost, String url,
            String phone, int idCategory, int idOwner) {
        this.id = id;
        this.street = street;
        this.number = number;
        this.region = region;
        this.title = title;
        this.cost = cost;
        this.url = url;
        this.phone = phone;
        this.idCategory = idCategory;
        this.idOwner = idOwner;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getStreet() {
        return street;
    }

    public void setStreet(String street) {
        this.street = street;
    }

    public String getNumber() {
        return number;
    }

    public void setNumber(String number) {
        this.number = number;
    }

    public String getRegion() {
        return region;
    }

    public void setRegion(String region) {
        this.region = region;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public double getCost() {
        return cost;
    }

    public void setCost(double cost) {
        this.cost = cost;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public int getIdCategory() {
        return idCategory;
    }

    public void setIdCategory(int idCategory) {
        this.idCategory = idCategory;
    }

    public int getIdOwner() {
        return idOwner;
    }

    public void setIdOwner(int idOwner) {
        this.idOwner = idOwner;
    }

    

}