


function validarEntero(valor){ 
      //intento convertir a entero. 
     //si era un entero no le afecta, si no lo era lo intenta convertir 
     valor = parseInt(valor) 

      //Compruebo si es un valor numérico 
      if (isNaN(valor)) { 
            //entonces (no es numero) devuelvo el valor cadena vacia 
            return "" 
      }else{ 
            //En caso contrario (Si era un número) devuelvo el valor 
            return valor 
      } 
}

function valida_envia(){

//valido la curId. tiene que ser entero mayor que 18
	curId = document.clientes.curId.value
	curId = validarEntero(curId)
	document.clientes.curId.value=curId
	if (curId==""){
		alert("Tiene que introducir un número entero en su Codigo.")
		document.clientes.curId.focus()
		return 0;
	}
	//valido el vecliNombre
	if (document.clientes.vecliNombre.value.length==0){
		alert("Tiene que escribir su Nombre")
		document.clientes.vecliNombre.focus()
		return 0;
	}
		
	//el formulario se envia
	//alert("Muchas gracias por enviar el formulario");
	//document.clientes.submit();
}

//para imprimir

function printit(){  
if (NS) {
    window.print() ;  
} else {
    var WebBrowser = '<OBJECT ID="WebBrowser1" WIDTH=0 HEIGHT=0 CLASSID="CLSID:8856F961-340A-11D0-A96B-00C04FD705A2"></OBJECT>';
document.body.insertAdjacentHTML('beforeEnd', WebBrowser);
    WebBrowser1.ExecWB(6, 2);//Use a 1 vs. a 2 for a prompting dialog box    WebBrowser1.outerHTML = "";  
}
}

var NS = (navigator.appName == "Netscape");
var VERSION = parseInt(navigator.appVersion);
if (VERSION > 3) {
    //document.write('<form><input type=button value="Imprimir" name="Print" onClick="printit()"></form>');        
}





function validarEntero(valor){ 
      //intento convertir a entero. 
     //si era un entero no le afecta, si no lo era lo intenta convertir 
     valor = parseInt(valor) 

      //Compruebo si es un valor numo 
      if (isNaN(valor)) { 
            //entonces (no es numero) devuelvo el valor cadena vacia 
            return "" 
      }else{ 
            //En caso contrario (Si era un n devuelvo el valor 
            return valor 
      } 
}

function valida_envia(){

//valida numero enter0 del curso
	curId = document.cursos.curId.value
	curId = validarEntero(curId)
	document.cursos.curId.value=curId
	if (curId==""){
		alert("Tiene que introducir un numero entero en el Codigo del curso.")
		document.cursos.curId.focus()
		return 0;
	}
	

//valido el nombre del curso
	if (document.cursos.curNombre.value.length==0){
		alert("Ingrese el Nombre del Curso")
		document.cursos.curNombre.focus()
		return 0;
	}
	
	curValor = document.cursos.curValor.value
	curValor = validarEntero(curValor)
	document.cursos.curValor.value=curValor
	if (curValor==""){
		alert("Tiene que introducir una cantidad monetaria $ sin puntos.")
		document.cursos.curValor.focus()
		return 0;
	}
	
	if (document.cursos.curDescripcion.value.length==0){
		alert("Describa el Curso")
		document.cursos.curDescripcion.focus()
		return 0;
	}
	
if (document.cursos.curEstado.selectedIndex==0){
		alert("Debe seleccionar el Estado del Curso.")
		document.cursos.curEstado.focus()
		return 0;
	}
	
		
}



