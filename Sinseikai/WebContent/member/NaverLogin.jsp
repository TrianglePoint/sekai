<%@page import="java.net.URLDecoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%session.setAttribute("id", request.getParameter("id"));
session.setAttribute("age", request.getParameter("age"));
String Name= request.getParameter("name");
String name = URLDecoder.decode(Name, "UTF-8") ;
session.setAttribute("name", name);
session.setAttribute("Email", request.getParameter("email"));
System.out.println(session.getAttribute("email"));
%>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%=request.getParameter("id") %>
<%=session.getAttribute("id") %>
<%=request.getParameter("name") %>
<%=session.getAttribute("name") %>


<%response.sendRedirect("http://localhost:8090/Sinseikai/naverlogin.me"); %>

</body>
</html>