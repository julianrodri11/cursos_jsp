<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage=""  session = "true"%>

<%@ include file ="./funciones/funciones.jsp" %>





<html>
	<head>

	<title>ingreso</title>
  
	<link rel="stylesheet" type="text/css" href="./estilos/stylo.css"/> 

<SCRIPT language="JavaScript">

function new_win()
{
    window.open("login.jsp","login","width=247,height=380,screenX=50,left=50,screenY=50,top=50,status=yes,menubar=no,resizable=0,noresize+-");
}
 

</SCRIPT>	
</head>
	
	<body  leftmargin="0px" rightmargin="0px" topmargin="0px" bottommargin="0px" > 
<div class="fondo">
<table id="Tabla_01" width="1024" height="464" border="0" cellpadding="0" cellspacing="0">
	<tr>
		<td rowspan="2"><img src="imagenes/principalDown_01.jpg" width="143" height="464" alt=""></td>
		<td style="background-image: url(./imagenes/principalDown_02.jpg)" width="739" height="370" alt="">
		
	<!-- tabla del contenido  -->

		<center><strong>INGRESO</strong></center>
		<center>
		<table border="0" width="70%"  cellspacing="5" >

		<tr>
			<td><center><input type="button" value="Inscipciones" id="inscipciones" name="Inscipciones" onclick= "self.location.href = 'inscipciones.jsp'" /></td>	
			<td><center><INPUT TYPE="button" value="Administradci&oacute;n" onClick="new_win()"> </td>
			</center></tr>
		</table>

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