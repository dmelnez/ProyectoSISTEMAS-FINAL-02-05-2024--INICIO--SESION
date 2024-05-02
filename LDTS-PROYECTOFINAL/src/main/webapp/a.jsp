<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@page import="mipk.beanDB"%>
<%@page import="java.sql.SQLException"%>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <button onclick="consulta()">CONSULTA QUERY</button>
</body>
</html>

<% String nombre = request.getParameter("nombre"); %>
<% String email = request.getParameter("email"); %>
<% String password = request.getParameter("password"); %>
<p>Me han pasado <%= nombre %></p>
<p>Me han pasado <%= email %></p>
<p>Me han pasword <%= password %></p>


<script>

function consulta{


	<% 
	String query = "select * from usuarios;";

	beanDB baseDeDatos = new beanDB();
	baseDeDatos.conectarBD();
	String[][] tablares = baseDeDatos.resConsultaSelectA3(query); 
	baseDeDatos.desconectarBD();
	%>

}

</script>

<table>

	<% for(int i = 0; i < tablares.length;i++){
		
		%><tr><% 
		for(int j=0; j< tablares[i].length; j++){
		%><td><%=tablares[i][j] %></td><%
		}
		%></tr><%
	}
	%>
</table>


