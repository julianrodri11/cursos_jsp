<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" session = "true" %>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Cerrar Sesion</title>
</head>
<body>
<%
	HttpSession	ses = request.getSession();
	ses.invalidate();
	//response.parent.sendRedirect("./index.jsp");
	out.println("<script> alert('Sesiòn Cerrada'); parent.location='index.jsp'; </script>");
	//out.println("Sesion Cerrada <br/><a href=# onclick=parent.location='index.jsp'>[Inicio]</a>");
%>
</body>
</html>