<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="javafiles.*, java.util.List"%>


<%
request.setCharacterEncoding("UTF-8");

String username = request.getParameter("username");
String password = request.getParameter("password");
String status = request.getParameter("status");


if(username == null || password == null){
    response.sendRedirect("mainpage.jsp");
    return;
}

try{
    ClientDao cldao = new ClientDao();
    Client client = cldao.authenticate(username, password);


    session.setAttribute("cldao",client);
    if (client.equals(null)){
        throw new Exception("e");
    } else{

        session.setAttribute("clientObj2020",client);

%>
        <jsp:forward page="<%=status%>"/>
<%
    }
    
    }catch(Exception e){

        request.setAttribute("message", "Wrong username or password");
%>
        <jsp:forward page="mainpage.jsp"/>  
<%
    }
%>