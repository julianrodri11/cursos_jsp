<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ include file ="./funciones/conexion.jsp" %>
<% ResultSet rs=null; %>



<html xmlns="http://www.w3.org/1999/xhtml">
<head>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script type="text/javascript" src="./funciones/validaciones.js"></script>
<link rel="stylesheet" type="text/css" href="./estilos/estilo1.css">
<title>Listado de Cursos</title>

<style media="print" type="text/css">
	.contenidoiImprIndivudual input 
	{
		visibility:hidden
	}
	.contBuscar input, label 
	{
		visibility:hidden
	}
</style>

</head>

<br><br>



<%
	if (request.getParameter("buscar")!=null)
	{
		String curId=request.getParameter("curId");
		
		try{

			rs=comando.executeQuery("select * from curso where curId='" + request.getParameter("curId") + "'");
			if (rs.wasNull())
			{out.println("<script>alert('No Encontrado');</script>");
				
			}else
				%>
				<div class="contenidoiImprIndivudual">
				<%
				out.println("<center><table border=0><tr><td align=center>Codigo Curso</td><td align=center>Nombre Curso</td><td align=center>Valor</td><td align=center>Descripcion del Curso</td></tr>");
				while(rs.next())
				{
					out.println("<tr><td align=center>"+rs.getString(1)+"</td>");
					out.println("<td align=center>"+rs.getString(2)+"</td>");
					out.println("<td align=center>"+rs.getString(3)+"</td>");					
					out.println("<td align=justify>"+rs.getString(4)+"</td></tr>");				
				};
				out.println("</table>");
							
				out.println("<form><input type='button' value='Imprimir' id='Print' name='Print' onClick='printit();','window.print();' ></form>");//imprimo dos funciones en un mismo evento
				%>
				</div>
				<%
		}catch(SQLException e) {out.println(e);};
		
	}
	
	//////////////////////////////
	if (request.getParameter("todos")!=null)
	{
		
		
		try{

			rs=comando.executeQuery("select * from curso y");
			if (rs.wasNull())
			{out.println("<script>alert('No Encontrado');</script>");
				
			}else
			%>
				<div class="contenidoiImprIndivudual">
				<%
				out.println("<table border=0><tr><td align=center>Codigo Curso</td><td align=center>Nombre Curso</td><td align=center>Valor</td><td align=center>Descripcion del Curso</td></tr>");
				while(rs.next())
				{
					//out.println("<tr><td align=center>"+rs.getString(1)+"</td>");
					out.println("<tr><td><a href=ingresar.jsp?curId="+rs.getString(1)+"&modificar=1>"+rs.getString(1)+"</a></td>");
					out.println("<td align=center>"+rs.getString(2)+"</td>");
					out.println("<td align=center>"+rs.getString(3)+"</td>");
					out.println("<td align=center>"+rs.getString(4)+"</td>");
					out.println("<td align=justify><a href=eliminarCursos.jsp?curId="+rs.getString(1)+"&eliminar=1>eliminar</a></td></tr>");				
				};
				out.println("</table>");				
				out.println("<center><form><input type='button' value='Imprimir' name='Print' onClick='printit();','window.print();'></form>");
				%>
				</div>
				<%
		}catch(SQLException e) {out.println(e);};
		
	}
	
%>
<body bgcolor="#F4FA58">




<div class="contBuscar">
<form name="cursos" method="post" action="buscarCursos.jsp">

<center>
<label>Curso Id</label></td><td><input type="text" name="curId" />



</form>

<% String listar=null; %>

<% 
if (listar==null){ %>
<input type="submit" name="todos" value="Listar" />
<input type="submit" name="buscar" value="buscar" onMousemove="valida_envia()"/>
<% }else {%>
<input type="submit" name="todos" value="Listar" disabled="true"/>
<input type="submit" name="buscar" value="buscar" onMousemove="valida_envia()" disabled="true"/>

<% }%>
</div>

</font>
</strong>
</p>  




</body>
</html>