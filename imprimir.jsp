<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<!--<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" session = "true" %>-->
<%@ include file="./funciones/conexion.jsp" %>
<%@ include file="./funciones/funciones.jsp" %>
<%! ResultSet rs=null; %>

<head>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>AUTONOMA DE NARINO</title>
<link rel="stylesheet" type="text/css" href="./estilos/estilo1.css">
<script type="text/javascript" src="./funciones/validaciones.js"></script>



</head>

	<%	//asiganar las varibles de la otra pagina e imprimirlas abajo	
		//request.getParameter trae informacion de la caja 		
		//perNombre=Integer.parseInt(request.getParameter("perNombre"));
		//	curEstado=request.getParameter("curEstado");
		String curId=request.getParameter("curId");
		String curNombre=request.getParameter("curNombre");
		String curValor=request.getParameter("curValor");
		String curDescripcion=request.getParameter("curDescripcion");
	%>
	
<center>
<body>
<%
/*HttpSession ses = request.getSession();
	//out.println("Usuario : " + ses.getAttribute("usuario_ses"));
	if(ses.getAttribute("usuario_ses")!=null){*/
%>

<center>
<table id="Tabla_01" width="1024" height="464" border="0" cellpadding="0" cellspacing="0">
	<tr>
		<td rowspan="2">
			<img src="imagenes/principalDown_01.jpg" width="143" height="464" alt=""></td>
		<td style="background-image: url(./imagenes/principalDown_02.jpg)" width="739" height="370" alt="">
			<!-- formulario de ingreso de informacion -->
			<!--el div en este caso solo sirve para ocultar el boton-->	
					
			<form name="cursos" method="post" >						
				<center><strong>IMPRIMIR CURSOS</strong></center>
				<hr /><!--linea del medio-->
				<center>
				<table >
					<tr><td width='30%'>codigo del Curso</td><td><input type="text" name="curId" value="<%=curId %>" /> </td></tr>
					<tr><td width='30%'>Nombre del Curso</td><td><input type="text" name="curNombre" value="<%=curNombre %>" /> </td></tr>
					<tr><td width='30%'>Valor del Curso</td><td><input type="text" name="curValor" value="<%=curValor%>" /> </td></tr>
					<tr><td width='30%'>Descripci&oacute;n Curso</td><td><textarea name="curDescripcion" onmousemove="value='<%=curDescripcion%>'" cols="28" rows="5"  ></textarea> </td></tr>					
				</table>
				<style media="print" type="text/css">
				.conOne input{	visibility:hidden	}</style>
					<div class="conOne">
						<input type=button value="imprimir" name="print" onclick="printit()">
						<input type="button" value='Atras'  onClick="volverAingresar()"; >		
					</div>
			</form>	
		
		<!-- fin del  formulario de ingreso de informacion -->
		</td>
		<td rowspan="2">
			<img src="imagenes/principalDown_03.jpg" width="142" height="464" alt="">
		</td>
	</tr>
	<tr>
		<td>
			<img src="imagenes/principalDown_04.jpg" width="739" height="94" alt="">
		</td>
	</tr>
</table>




<%
/*}
else{
	out.println("Usuario no registrado <br/><a href=# onclick=parent.location='index.jsp'>[Inicio]</a>");
}*/
%>

</body>
</html>
