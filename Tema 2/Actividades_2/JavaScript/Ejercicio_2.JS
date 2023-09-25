let edad = prompt("Introduce tu edad");
let ciudad = prompt("Introduce la ciudad en la que vives");
let carnet = ((edad >= 18 && edad <= 35) && (ciudad == "Alicante" || ciudad == "alicante")) ? "Puede acceder al carnet de empresarios emprendedores" : "No puede acceder al carnet de empresarios emprendedores"
alert(carnet);