package javagroup18;

public class Payment {
    private String date;
    private double cost;
    private String credit_number;
    private int exp_month;
    private int exp_year;
    private int cvv;
    private String fullname;
    private String email;
    private int id;

    public Payment(String date, double cost, String credit_number, int exp_month, int exp_year, int cvv, String fullname, String email) {
        this.date = date;
        this.cost = cost;
        this.credit_number = credit_number;
        this.exp_month = exp_month;
        this.exp_year = exp_year;
        this.cvv = cvv;
        this.fullname = fullname;
        this.email = email;
    }

    public Payment(String date, double cost, String credit_number, int exp_month, int exp_year, int cvv,
            String fullname, String email, int id) {
        this.date = date;
        this.cost = cost;
        this.credit_number = credit_number;
        this.exp_month = exp_month;
        this.exp_year = exp_year;
        this.cvv = cvv;
        this.fullname = fullname;
        this.email = email;
        this.id = id;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public double getCost() {
        return cost;
    }

    public void setCost(double cost) {
        this.cost = cost;
    }

    public String getCredit_number() {
        return credit_number;
    }

    public void setCredit_number(String credit_number) {
        this.credit_number = credit_number;
    }

    public int getExp_month() {
        return exp_month;
    }

    public void setExp_month(int exp_month) {
        this.exp_month = exp_month;
    }

    public int getExp_year() {
        return exp_year;
    }

    public void setExp_year(int exp_year) {
        this.exp_year = exp_year;
    }

    public int getCvv() {
        return cvv;
    }

    public void setCvv(int cvv) {
        this.cvv = cvv;
    }

    public String getFullname() {
        return fullname;
    }

    public void setFullname(String fullname) {
        this.fullname = fullname;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }
    
    
}
