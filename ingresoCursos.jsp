<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" session = "true" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<%@ include file="./funciones/conexion.jsp" %>
<%! String curId=null;
	String curNombre=null;
	String curValor=null;
	ResultSet rs=null;
	String curDescripcion=null;
	String curEstado=null;	
%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>INGRESAR USUARIOS</title>
<!--script type="text/javascript" src="./funciones/validaciones.js"></script-->


</head>

<%	/*HttpSession ses = request.getSession();
	//out.println("Usuario : " + ses.getAttribute("usuario_ses"));
	if(ses.getAttribute("usuario_ses")!=null){
*/
	//String curId=request.getParameter("curId");
	//ingresar nueva informacion
	if (request.getParameter("ingresoCursos")!=null)	{
		/////////request.getParameter trae informacion de la caja 		
		curId=request.getParameter("curId");
		//perNombre=Integer.parseInt(request.getParameter("perNombre"));
		curNombre=request.getParameter("curNombre");
		curValor=request.getParameter("curValor");
		curDescripcion=request.getParameter("curDescripcion");
		curEstado=request.getParameter("curEstado");	
		
		try{
			int n=comando.executeUpdate("insert into admon_roles  values('"+curId+"','"+curNombre+"','"+curValor+"')");
			out.println("<script>alert('Registro Adicionado');</script>");
			//response.sendRedirect("./imprimir.jsp?curId="+curId+"&curNombre="+curNombre+"&curValor="+curValor+"&curDescripcion="+curDescripcion);  
		}catch(SQLException e) {out.println(e);};		
	}	
	
	%>
	<center>
<body>
<h3 align="center">REGISTRO DE ROLES</h3>

	<table id="Tabla_01" width="100%" height="100%" border="0" cellpadding="0" cellspacing="0">
		<tr>
			<td rowspan="2">
			</td>
			<td>

		
				<form name="cursos" method="post" action="ingresoCursos.jsp" >
				

					<hr width="60%" />
						<CENTER>
				<TABLE>
					<tr><td>ID ROL</td><td><input type="text" name="curId" value="" maxlength='3'/></td></tr>
					<tr><td>NOMBRE ROL</td><td><input type="text" name="curNombre" value="" maxlength='35' /></td></tr>
					<tr><td>DESCRIPCION</td><td><textarea name="curValor" cols="28" rows="5" onclick="value=''" maxlength='300' ></textarea><!--input type="text" name="curValor" value=""  maxlength='10'/--></td></tr>

				</TABLE>
				<center>
				<input name="ingresoCursos" type="submit" onMousemove="valida_envia()"  value="Enviar"  />
				<input type="button" value='Listar Roles'  onclick="parent.location='buscarCursos.jsp'" >	
				
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
<!-- End Save for Web Slices -->




</form>
</div>
<% /*
}
else{
	out.println("Usuario no registrado <br/><a href=# onclick=parent.location='index.jsp'>[Inicio]</a>");
}*/
%>
</body>
</html>