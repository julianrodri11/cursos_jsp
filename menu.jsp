<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" session = "true"%>
<%@ include file ="./funciones/conexion.jsp" %>
<%@ include file ="./funciones/funciones.jsp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Inicio</title>
<link rel="stylesheet" type="text/css" href="./estilos/stylo2.css">
</head>

<body  >
<center>
<td colspan="9">
			<img src="imagenes/tituloUp.jpg" width="756" height="78" alt=""></td>
			

<ul id="menu-horizontal" align="center"> 
    
	<li><a href=# onclick="parent.location='http://www.aunar.edu.co/presentacion.html'">Aunar</a></li> 
    <li><a href="#">Cursos</a> 
      <ul> 
          <li><a href="./ingresoCursos.jsp" target="centro">Registrar</a></li> 
        <li><a href="./buscarCursos.jsp" target="centro">Actualizar</a></li> 
		<li><a href="./eliminarCursos.jsp" target="centro">Eliminar</a></li>  
      </ul> 
    </li> 
    <li><a href="#">Usuarrios</a> 
      <ul> 
        <li><a href="./inscipciones.jsp" target="centro">Registrar</a></li> 
		<li><a href="./adminUsuario.jsp" target="centro">Actualizar</a></li> 
        <li><a href="./eliminarP.jsp" target="centro">Cambiar Estado</a></li> 
      </ul> 
    </li>

    <li><a href="#">Reportes</a> 
      <ul> 
        <li><a href="./reporteUsuInscritos.jsp" target="centro">Usuarios Inscritos</a></li> 
        <li><a href="./eliminarR.jsp" target="centro">Usuarios Admitidos</a></li>
        <li><a href="./eliminarR.jsp" target="centro">Cursos Disponibles</a></li>		
		<li><a href="./eliminarR.jsp" target="centro">Cursos Terminados</a></li>		
      </ul> 
    </li>
	<li><a href="./cerrarsesion.jsp" target="centro"> Cerrar Sesion</a></li> 


</center>
<%
HttpSession ses = request.getSession();
out.println("Usuario : " + ses.getAttribute("usuario_ses"));
%>
</body>
</html>
