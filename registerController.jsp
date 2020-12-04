<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="javagrou18.*, java.util.List"%>

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
    Client client = new Client(name, surname, username, password, email, phone, region);
    out.println(client.getName());
    out.println(client.getId());
    ClientDao cldao = new ClientDao();
    out.println(cldao.hello());
    cldao.register(client);
%>
  <jsp:forward page="mainpage.jsp"/> 
<%  
} else {
%>
<jsp:forward page="registerform.jsp"/>

<%
}

%>



