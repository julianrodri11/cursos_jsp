<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" session = "true" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ include file ="./funciones/conexion.jsp" %>
<% ResultSet rs=null; %>



<html xmlns="http://www.w3.org/1999/xhtml">
<head>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script type="text/javascript" src="./funciones/validaciones.js"></script>

<title>Listado de Cursos</title>

<style media="print" type="text/css">
	.conOne input, label 
	{	visibility:hidden	}
</style>

</head>


<%
/*
HttpSession ses = request.getSession();
	//out.println("Usuario : " + ses.getAttribute("usuario_ses"));
	if(ses.getAttribute("usuario_ses")!=null){
*/
%>

<body >
<center>

<table id="Tabla_01" width="1024" height="464" border="0" cellpadding="0" cellspacing="0">
	<tr>
		<td rowspan="2">
			</td>
		<td >
		<!-- formulario de ingreso de informacion -->
		
		<%
	if (request.getParameter("buscar")!=null)
	{
		String curId=request.getParameter("curId");
		
		try{

			rs=comando.executeQuery("select * from admon_roles where id='" + request.getParameter("curId") + "'");
			//out.println("select * from curso where curId='" + request.getParameter("curId") + "'");
			if(rs.wasNull())
			{
			
			out.println("<script>alert('No Encontrado');</script>");				
			
			}
			else
			{
				%>
				<div class="conOne">
				<center>
				<%
				out.println("<center><table border=0><tr><td align=center>Codigo Rol</td><td align=center>Nombre Rol</td><td align=center>Descripcion</td><td align=center>Opciones</td></tr>");
				while(rs.next())
				{
					out.println("<tr><td align=center>"+rs.getString(1)+"</td>");
					out.println("<td align=center>"+rs.getString(2)+"</td>");
					out.println("<td align=center>"+rs.getString(3)+"</td>");					
				//	out.println("<td align=justify>"+rs.getString(4)+"</td></tr>");				
				};
				out.println("</table>");
							
				out.println("<form><input type='button' value='Imprimir' id='Print' name='Print' onClick='printit();','window.print();' ><input type='button' value='Inicio'  onclick=parent.location='principal.jsp' ></form>");//imprimo dos funciones en un mismo evento
				
			}	%>
				</div>
				<%
		}catch(SQLException e) {out.println(e);};
		
	}
	
	
	if (request.getParameter("todos")!=null)
	{
		
		
		try{

			rs=comando.executeQuery("select * from admon_roles ");
			if (rs.wasNull())
			{
			out.println("<script>alert('No Encontrado');</script>");				
			}else
			%>
				<div class="conOne">
				<center>
				<%
				out.println("<center><table border=0><tr><td align=center>Codigo Rol</td><td align=center>Nombre Rol</td><td align=center>Descripcion</td><td align=center>Opciones</td></tr>");
				while(rs.next())
				{
					//out.println("<tr><td align=center>"+rs.getString(1)+"</td>");
					out.println("<tr><td><a href=modificarCursos.jsp?curId="+rs.getString(1)+"&modificar=1>"+rs.getString(1)+"</a></td>");
					out.println("<td align=center>"+rs.getString(2)+"</td>");
					out.println("<td align=center>"+rs.getString(3)+"</td>");					
			//		out.println("<td align=justify>"+rs.getString(4)+"</td>");					
					//out.println("<td><textarea name=curDescripcion cols=20 rows=2 maxlength='300'>" +rs.getString(4)+ "</textarea></td>");					
					out.println("<td align=justify><a href=# onclick=eliminar('"+rs.getString(1)+"')>eliminar</a></td></tr>");				
				};

				out.println("</table>");				
				//out.println("<center><form><input type='button' value='Imprimir' name='Print' onClick='printit();','window.print();'><input type='button' value='Inicio'  onclick=parent.location='principal.jsp' ></form>");
				%>
				</div>
				<%
		}catch(SQLException e) {out.println(e);};
		
	}
	
%>





<div class="conOne">
	<center><br>

	<form name="cursos" method="post" action="buscarCursos.jsp">

		<label>Curso Id</label><input type="text" name="curId" />
		<input type="submit" name="buscar" value="buscar"  onMousemove="valida_envia()" />
		<input type="submit" name="todos" value="Listar" />

	</form>
<center><a href="ingresoCursos.jsp">Registrar Nuevo Rol</a></center>

</div>
		
		
		
		<!-- fin del  formulario de ingreso de informacion -->
		</td>
		<td rowspan="2">
			</td>
	</tr>
	<tr>
		<td>
			</td>
	</tr>
</table>

<% /*
}
else{
	out.println("Usuario no registrado <br/><a href=# onclick=parent.location='index.jsp'>[Inicio]</a>");
}*/
%>

</div>
</body>
</html>