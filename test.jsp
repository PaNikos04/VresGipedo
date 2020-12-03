<%@ page language="java" contentType="text/html;
charset=UTF-8" pageEncoding="UTF-8"%>

<%
    int id = Integer.parseInt(request.getParameter("sport"));
    String region = request.getParameter("region");

  out.println(id);
  out.println(region);
%>