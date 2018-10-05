<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!--DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"-->


<%@ include file="./funciones/conexion.jsp" %>
<%@ include file="./funciones/funciones.jsp" %>

<%! String curId=null;
	String curNombre=null;
	String curValor=null;
	ResultSet rs=null;
	String curDescripcion=null;
	String curEstado=null;
	
	
%>

<head>
		<script type="text/javascript" src="./funciones/validaciones.js"></script>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<title>AUTONOMA DE NARI&Ntilde;O </title>

<link rel="stylesheet" type="text/css" href="./estilos/estilo1.css">
<script type="text/javascript" src="./validaciones.jsp"></script>

 

</head>

		<%

	//String curId=request.getParameter("curId");
	

	//ingresar nueva informacion
	if (request.getParameter("ingresoCursos")!=null)
	{
		/////////request.getParameter trae informacion de la caja 
		
		curId=request.getParameter("curId");
		//perNombre=Integer.parseInt(request.getParameter("perNombre"));
		curNombre=request.getParameter("curNombre");
		curValor=request.getParameter("curValor");
		curDescripcion=request.getParameter("curDescripcion");
		curEstado=request.getParameter("curEstado");
		
		
		try{
			int n=comando.executeUpdate("insert into curso (curId,curNombre,curValor,curDescripcion,curEstado) values('"+curId+"','"+curNombre+"','"+curValor+"','"+curDescripcion+"','"+curEstado+"')");
			out.println("<script>alert('Curso Adicionado');</script>");
			response.sendRedirect("./imprimir.jsp?curId="+curId+"&curNombre="+curNombre+"&curValor="+curValor+"&curDescripcion="+curDescripcion);  
		}catch(SQLException e) {out.println(e);};
		
	}		
	
		
	
	%>
	<body > 
	<p>Página de ejemplo del script Mensaje de texto que sigue al puntero del ratón.</p>  
 

<center>
<table id="Tabla_01" width="1024" height="464" border="0" cellpadding="0" cellspacing="0">
	<tr>
		<td rowspan="2">
			<img src="imagenes/principalDown_01.jpg" width="143" height="464" alt=""></td>
		<td style="background-image: url(./imagenes/principalDown_02.jpg)" width="739" height="370" alt="">
		<!-- formulario de ingreso de informacion -->

	








<center>
<form name="cursos" method="post" action="ingresoCursos.jsp" >
<h3 align="center">REGISTRO DE CURSOS</h3>
<hr width="60%" />
<table >
<tr><td width='30%'>codigo del Curso</td><td><input type="text" name="curId" value="<%=curId %>" maxlength='3'/> </td></tr>
<tr><td width='30%'>Nombre del Curso</td><td><input type="text" name="curNombre" value="<%=curNombre %>"/> </td></tr>
<tr><td width='30%'>Valor del Curso</td><td><input type="text" name="curValor" value="<%=curValor%>" /> </td></tr>
<tr><td width='30%'>Descripci&oacute;n del Curso</td><td><textarea name="curDescripcion" value="<%=curDescripcion%>" cols="28" rows="5" onclick="value=''"  maxlength='300'>Ingresa un mensaje para el estudiante!</textarea> </td></tr>
</table>
<center>
<input name="ingresoCursos" type="submit" onMousemove="valida_envia()"  value="Enviar"  />


</form>
		<!-- fin del  formulario de ingreso de informacion -->
		</td>
		<td rowspan="2">
			<img src="imagenes/principalDown_03.jpg" width="142" height="464" alt=""></td>
	</tr>
	<tr>
		<td>
			<img src="imagenes/principalDown_04.jpg" width="739" height="94" alt=""></td>
	</tr>
</table>


</div>
</body>
</html>