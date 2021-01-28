<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="javagroup18.*, java.util.List"%>

<%
//get parameter from request
request.setCharacterEncoding("UTF-8");
String name = request.getParameter("first_name");
String surname = request.getParameter("last_name");
String email = request.getParameter("email");
String username = request.getParameter("username");
String password = request.getParameter("password");
String confirm = request.getParameter("password_confirmation");
String region = request.getParameter("region");
String phone = request.getParameter("phone");

if (password.equals(confirm)) {
  try{
    Client client = new Client(name, surname, username, password, email, phone, region);
    ClientDao cldao = new ClientDao();
    cldao.register(client);
  } catch(Exception e){
    request.setAttribute("message","Το username ή το email είναι ήδη καταχωρημένα!");
    %>
    <jsp:forward page="registerform.jsp"/>
    <%
  }
%>
  <jsp:forward page="VresGipedo"/> 
<%  
} else {
  request.setAttribute("message","Λάθος επιβεβαίωση κωδικού!");
%>
<jsp:forward page="registerform.jsp"/>

<%
}

%>



