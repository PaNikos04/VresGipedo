<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="javagroup18.*, java.util.List"%>

<%
Client client = (Client)session.getAttribute("clientObj2020");
  if (client == null) {
    request.setAttribute("message","Δεν έχετε πρόσβαση σε αυτή τη σελίδα!");
%>
  <jsp:forward page="danger.jsp"/>
<%
  }
%>

<%
//get parameter from request
request.setCharacterEncoding("UTF-8");
String myrating = request.getParameter("rating");
out.println(myrating);

%>