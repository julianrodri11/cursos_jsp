<%@ page contentType="text/html; charset=utf-8" language="java" import="java.io.*,java.sql.*" errorPage="" %>
<%!
	public String llenarCombo(String cad,String vr_d, Statement comando, ResultSet rs)
	{
		String opciones="";	
		try
		{
			rs=comando.executeQuery(cad);
			if (rs.next())
			{
				rs.beforeFirst();
				while(rs.next())
				{
					opciones+="<option value="+rs.getString(1)+">"+rs.getString(2)+"</option>";	
				}
			}else
				opciones="<option>No hay Registros</option>";
		}catch(SQLException e){}catch(Exception e){}
		return opciones;
	}
	
	public String CrearTabla(String cad,Statement comando, ResultSet rs)
	{
		String tabla="<table border=1>";	
		
		try
		{
			rs=comando.executeQuery(cad);
			
			rs = comando.getResultSet( );
			ResultSetMetaData mdata = rs.getMetaData();  // Obtener Metadatos
				int num_columnas = mdata.getColumnCount();
				//imprimimos encabezados
				tabla+="<tr>";
				for(int i=1;i<=num_columnas;i++)
				{
					tabla+="<td>"+mdata.getColumnLabel(i)+"</td>";
				}
				tabla+="</tr><tr>";
			if (rs.next())
			{
				rs.beforeFirst();
				while(rs.next())
				{
					tabla+="<tr>";
					for(int i=1;i<=num_columnas;i++)
					{	
						tabla+="<td>"+rs.getString(i)+"</td>";	
					}
					tabla+="</tr>";
				}
			}else
				tabla="</table>";
		}catch(SQLException e){}catch(Exception e){}
		tabla+="</table>";
		return tabla;
	}
%>