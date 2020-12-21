package javagroup18;

public class Rating {
    private int idClient;
    private int idField;
    private int stars;
    private String comments;

    public Rating(int idClient, int idField, int stars, String comments) {
        this.idClient = idClient;
        this.idField = idField;
        this.stars = stars;
        this.comments = comments;
    }

    public int getIdClient() {
        return idClient;
    }

    public void setIdClient(int idClient) {
        this.idClient = idClient;
    }

    public int getIdField() {
        return idField;
    }

    public void setIdField(int idField) {
        this.idField = idField;
    }

    public int getStars() {
        return stars;
    }

    public void setStars(int stars) {
        this.stars = stars;
    }

    public String getComments() {
        return comments;
    }

    public void setComments(String comments) {
        this.comments = comments;
    }

    
    
}