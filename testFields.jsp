<%@ page language="java" contentType="text/html;
charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="javagroup18.*, java.util.List"%>

<%
  request.setCharacterEncoding("UTF-8");
  String s = request.getParameter("sport");
  String r = request.getParameter("region");
  if(s == null || r == null){
    response.sendRedirect("mainpage.jsp");
    return;
}
  int sport = Integer.parseInt(s);
  int region = Integer.parseInt(r);
  Client client = (Client)session.getAttribute("clientObj2020");
  FieldDao fdao = new FieldDao();
  out.println(sport);
  out.println(region);
  List<Field> fields = fdao.getFields(sport, region);
  for (Field k : fields){
    out.println(k.getTitle());
  }
%>