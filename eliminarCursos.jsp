<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*"  errorPage="" %>
<%@ include file="./funciones/conexion.jsp" %>
<%@ include file="./funciones/funciones.jsp" %>


<head>
<script type="text/javascript" src="./validaciones.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Documento sin título</title>
</head>

<body onload="timeMsg()">

<%

/*
HttpSession ses = request.getSession();
	//out.println("Usuario : " + ses.getAttribute("usuario_ses"));
	if(ses.getAttribute("usuario_ses")!=null){

*/
	
		String curId=request.getParameter("curId");
		ResultSet rs=null;
		try{
							
			if (request.getParameter("eliminar")!=null)
			{
				%>
				<script>
				var res=confirm("Esta Seguro ");
				if(res==true)
				{</script>
				<%
			
				if(request.getParameter("curId")!=null && request.getParameter("curId")!="");
				String cad_bus="select * from admon_roles where id='" + request.getParameter("curId") + "'";
				rs=comando.executeQuery(cad_bus);
				if(rs.next())				{
						comando.executeUpdate("delete from admon_roles where id='" + request.getParameter("curId") + "'");						
						out.println("<script>alert('Registro eliminado con exito');</script>");																		      
				}else
					out.println("<script>alert('Registro no encontrado');</script>");
				%>	
				}<script>
			}
				</script>
				<%
					
			}
			
		}catch(SQLException e) {out.println(e);};
		
	
%>
<!-- esta funcion no se uso pero sirve-->
<script type="text/javascript">
function timeMsg()
{var t=setTimeout("alertMsg()",500);}
function alertMsg()
{parent.location.href="buscarCursos.jsp" }
</script>


</form>

<% /*
}
else{
	out.println("Usuario no registrado <br/><a href=# onclick=parent.location='index.jsp'>[Inicio]</a>");
}*/
%>

</body>
</html>