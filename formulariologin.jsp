<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Documento sin t&iacute;tulo</title>
</head>

<body>
<form name="ingreso" method="post" action="login.jsp">



<table id="Tabla_01" width="230" height="350" border="0" cellpadding="0" cellspacing="0">
	<tr>
		<td colspan="5">
			<img src="imagenes/login_01.gif" width="230" height="51" alt=""></td>
	</tr>
	<tr>
		<td rowspan="4">
			<img src="imagenes/login_02.gif" width="13" height="299" alt=""></td>
		
		<td style="background-image: url(./imagenes/login_03.gif)" colspan="3" width="204" height="150" alt="">
		<center><table border="0">
<tr><td>Usuario: </td></tr><tr><td align="center"><input type="text" name="usuario" value="julian"/></td></tr>
<tr><td>Contrasena: </td></tr><tr><td><input type="password" name="contrasena" value="123" /></td></tr>
<tr><td colspan="2" align="center"><input type="submit" name="ok" value="Ingresar" /></td></tr>
</table>
		
		</td>


	</tr>

</table>
</form>
</body>
</html>
