<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page import="java.io.*,java.util.*,java.net.*,java.sql.*" %>
<%@ include file="./funciones/conexion.jsp" %>

<% ResultSet tabla= null; %>

// declarando y creando objetos globales

<%
String usuario=null;
String cont=null;


// abriendo canal o enlace en su propio try-catch
 usuario=request.getParameter("usuario");
 cont=request.getParameter("contrasena");
//leyendo tabla en disco y pasandola al resultset

try { 
tabla=comando.executeQuery("select * from admon_roles where id='"+usuario+"' and nombre='"+cont+"'");
if (!tabla.next())
	out.println("<script>alert('Usuario o contrase�a incorrecta');window.location='login.jsp';</script>");
else
{
	HttpSession ses = request.getSession();   //Crea el objeto sesion
	ses.setAttribute("usuario_ses", usuario); //"variable que le quiera dar"  esta varialbe viene desde arriba es decir desde loguearse y manda a las demas paginas
		out.println("<script> alert('Bienvenido "+tabla.getString(2)+"');window.opener.location='principal.jsp'; window.close();</script>");
		//eviar a la principal
}

// cerrando resultset
tabla.close(); comando.close();cn.close();
} //fin try no usar ; al final de dos o mas catchs
catch(SQLException e) {};

}

// construyendo forma dinamica


%>


<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Login</title>
<link rel="stylesheet" type="text/css" href="./estilos/stylo.css"> 	
</head>

<body>
<div class="fondo">

</div>
</body>
</html>