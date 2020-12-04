<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="javagroup18.*, java.util.List"%>


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

        session.setAttribute("clientObj2020",client); 
        if (status.equals("fields.jsp") || status.equals("fields_rate.jsp")) {
            int sport = (Integer) session.getAttribute("sport");
            String region = (String) session.getAttribute("region");
%>

        <jsp:forward page="<%=status%>">
        <jsp:param name="sport" value="<%=sport%>" ></jsp:param>
        <jsp:param name="region" value="<%=region%>" ></jsp:param>
        </jsp:forward>
<%
        }
%>

        <jsp:forward page="<%=status%>"/>
<%  
    }catch(Exception e){

        request.setAttribute("message", "Wrong username or password");
%>
        <jsp:forward page="failed_con.jsp"/>  
<%
    }
%>