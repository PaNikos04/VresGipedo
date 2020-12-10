<%@ page language="java" contentType="text/html;
charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="javagroup18.*, java.util.List"%>

<%
    int people = Integer.parseInt(request.getParameter("members"));
    String date = (request.getParameter("date"));

    out.println(people);
    out.println(date);
    ReserveDao mydao = new ReserveDao();
    List<List<String>> avails = mydao.getAvail(1, date);
    for(int i= 0; i<avails.size(); i++){
      out.println(avails.get(i).get(0));
      out.println(avails.get(i).get(1));
    }

    
%>