//  “getElementById'  solo  puede  ejecutarse  sobre  'document' 
//  La  variable  'principal'  apunta  al  elemento  con  “id = principal' 
let  principal  =  document.getElementById('principal'); 

//  Obtenemos  todos  los  párrafos  del  documento 
let  parrafos  =  document.getElementsByTagName('p') ; 

//  “primerImportante”  apunta  al  primer  elemento  de  los  que  cumpla  la condición 
//  dada  por  el  selector  CSS 
let  primerImportante  =  document.querySelector('#principal  p.importante'); 

//  “querySelectorAll”  puede  ejecutarse  sobre  'document'  o  sobre  otro elemento 
//  Estas  dos  líneas  realizan  la  misma  búsqueda 
let  importantes1  =  document.querySelectorAll('#principal  p.importante');  
// Se  busca  en  todo  el  documento 
let  importantes2  =  principal.querySelectorAll('p.importante');  
//  Se  busca dentro  de  'iprincipal' 
let nuevoElemento = document.createElement("p");
let nuevoElemento2 = document.createElement("p");
let otromas = document.createElement('span');
let titulo = document.createElement('H1');

nuevoElemento.textContent = "Bienvenidos a mi página web";
nuevoElemento2.textContent = "Otra línea";
otromas.textContent = "Otro MÁS";

importantes1[0].append(nuevoElemento); 
importantes1[1].append(nuevoElemento2); 

titulo.textContent = "EL MEJOR DIV";

document.getElementById('mejor').append(titulo);

document.getElementById('mejor').append(otromas);

//  “querySelectorAll'  devuelve  una  colección. 
//  Recorremos  dicha  colección 
for  (let  importante  of  importantes1) {  
console.log(importante); 
}

