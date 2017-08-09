<%@page import="java.text.*"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Titolo Finestra</title>

<%
String id = request.getParameter("id");
DateFormat formattatore = new SimpleDateFormat("dd/MM/yyyy");
Date data = new Date();
%>
<!-- Il prossimo tag chiama metodo toString... va tutto in output -->
<%=
formattatore.parse("09/08/2017")
%>

<% if(id.equals("Marco")) { %>

<jsp:include page="trovato.txt"></jsp:include>
</br>
<%} else {%>
<jsp:include page="nontrovato.txt"></jsp:include>
<% } %>

<% getServletContext().getRequestDispatcher("").forward(request, response); %>

</head>
<body>

</body>
</html>