function listarClientes(cliente)
{	
	var cadena="nombres="+cliente;
	var divMensaje1=document.getElementById("contenedor");
	var ajax=nuevoAjax();
		ajax.open("POST", "proc_listar.jsp", true);
		ajax.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
		ajax.send(cadena);
		ajax.onreadystatechange=function()
		{
			if (ajax.readyState==3)
			{
				// Habilito nuevamente botones e inputs
				divMensaje1.innerHTML="Espere un momento";
			}
			if (ajax.readyState==4)
			{
				// Habilito nuevamente botones e inputs
				divMensaje1.innerHTML=ajax.responseText;
			}
		}
}
function nuevoAjax()
{ 
	/* Crea el objeto AJAX. Esta funcion es generica para cualquier utilidad de este tipo, por
	lo que se puede copiar tal como esta aqui */
	var xmlhttp=false; 
	try 
	{ 
		// Creacion del objeto AJAX para navegadores no Internet Explorer
		xmlhttp=new ActiveXObject("Msxml2.XMLHTTP"); 
	}
	catch(e)
	{ 
		try
		{ 
			// Creacion del objet AJAX para IE 
			xmlhttp=new ActiveXObject("Microsoft.XMLHTTP"); 
		} 
		catch(E) { xmlhttp=false; }
	}
	if (!xmlhttp && typeof XMLHttpRequest!="undefined") { xmlhttp=new XMLHttpRequest(); } 

	return xmlhttp; 
}



//Héctor - Mensaje que sigue al puntero del ratón  
//  
//Soporte navegadores DOM por El Codigo  
//Este script y otros muchos pueden  
//descarse on-line de forma gratuita  
//en El Código: www.elcodigo.com  
  
var x,y  
var tempo = 10  
var espera = 0  
  
//texto a visualizar  
var texto = "Tecnologia En Sistemas Julian Rodriguez"  
  
//obtiene un array de letras  
texto = texto.split("")  
  
//crea arrays de posiciones  
var xpos = new Array()  
for (i = 0; i <= texto.length - 1; i++) {  
    xpos[i] = -50  
}  
var ypos = new Array()  
for (i = 0; i <= texto.length - 1; i++) {  
    ypos[i] = -50  
}  
  
function seguir(e){  
  
    //si no es NS4, usa objeto window.event  
    if (!e) var e = window.event  
  
    //NS4  
    if (e.pageX || e.pageY)     {  
        x = e.pageX  
        y = e.pageY  
        window.status = x + ' : ' + y  
    //IE y compatibles con DOM  
    } else if (e.clientX || e.clientY)  {  
        x = e.clientX + document.body.scrollLeft + document.documentElement.scrollLeft  
        y = e.clientY + document.body.scrollTop + document.documentElement.scrollTop  
        window.status = x + ' : ' + y  
    //no soportado, no hace nada  
    } else {  
        return  
    }  
      
    espera = 1  
}  
  
function animar_cursor() {  
      
    if ( espera == 1 ) {  
        for ( i = texto.length - 1; i >= 1; i--) {  
            xpos[i] = xpos[i-1] + tempo  
            ypos[i] = ypos[i-1]  
        }  
        xpos[0] = x + tempo  
        ypos[0] = y  
    }  
  
    //para el IE 4.x  
    if ( espera==1 && document.all ) {  
        for (i = 0; i <= texto.length - 1; i++) {  
            var letra = eval("span" + i + ".style")  
            letra.posLeft = xpos[i]  
            letra.posTop = ypos[i]  
        }  
    }  
    //para el Netscape 4.x  
    else if ( espera==1 && document.layers ) {  
        for (i = 0; i <= texto.length - 1; i++) {  
            var letra = eval("document.span" + i)  
            letra.left = xpos[i]  
            letra.top = ypos[i]  
        }  
    }  
      
    //para navegadores compatibles DOM  
    else if ( espera==1 && document.getElementById ) {  
  
        for (i = 0; i <= texto.length - 1; i++) {  
            var letra = document.getElementById( "span" + i)  
              
            letra.style.left = xpos[i] + 'px'  
            letra.style.top = ypos[i] + 'px'  
        }  
    }     
  
    var timer = setTimeout("animar_cursor()", 30)  
}  
  
if (document.layers)  
    document.captureEvents(Event.MOUSEMOVE)  
document.onmousemove = seguir  
  
  
  






<script language="javascript" type="text/javascript">  
if (document.layers) {  
  for (i=0;i<=texto.length-1;i++) {  
    document.write('<span id="span' + i + '" class="animado">')  
    document.write(texto[i])  
    document.write('</span>')  
  }  
} else if (document.all || document.getElementById) {  
  for (i=0;i<=texto.length-1;i++) {  
    document.write('<div id="span' + i + '" class="animado">')  
    document.write(texto[i])  
    document.write('</div>')  
  }  
}  
animar_cursor()  

