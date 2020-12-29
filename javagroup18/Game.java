package javagroup18;

import java.sql.Date;

public class Game{

private int idGame;
private String game_date;
private String game_hour;
private int participants;
private int idField;
private int idPayment;

public Game(int idGame, String game_date, String game_hour, int participants, int idField, int idPayment) {
    this.idGame = idGame;
    this.game_date = game_date;
    this.game_hour = game_hour;
    this.participants = participants;
    this.idField = idField;
    this.idPayment = idPayment;
}

public int getIdGame() {
    return idGame;
}

public void setIdGame(int idGame) {
    this.idGame = idGame;
}

public String getGame_date() {
    return game_date;
}

public void setGame_date(String game_date) {
    this.game_date = game_date;
}

public String getGame_hour() {
    return game_hour;
}

public void setGame_hour(String game_hour) {
    this.game_hour = game_hour;
}

public int getParticipants() {
    return participants;
}

public void setParticipants(int participants) {
    this.participants = participants;
}

public int getIdField() {
    return idField;
}

public void setIdField(int idField) {
    this.idField = idField;
}

public int getIdPayment() {
    return idPayment;
}

public void setIdPayment(int idPayment) {
    this.idPayment = idPayment;
}

}