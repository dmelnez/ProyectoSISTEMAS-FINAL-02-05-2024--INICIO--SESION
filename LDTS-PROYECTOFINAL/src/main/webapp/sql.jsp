<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@page import="mipk.beanDB"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.Connection" %>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
  
    <div class="login">
        <div class="formRegistro">
          <h2>BIENVENIDO</h2>
          <form>
	          <input type="text" placeholder="NOMBRE" name="nombre">
	          <input type="text" placeholder="EMAIL" name="email">
	          <input type="password" placeholder="PASSWORD" name="password">          
         	  <a href="a.jsp"><input type="submit" value="REGISTRARSE" class="submit"></a> 
         </form>
</html>



<% 
String query = "select * from usuarios;";

beanDB baseDeDatos = new beanDB();
baseDeDatos.conectarBD();
String[][] tablares = baseDeDatos.resConsultaSelectA3(query); 
baseDeDatos.desconectarBD();
%>

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