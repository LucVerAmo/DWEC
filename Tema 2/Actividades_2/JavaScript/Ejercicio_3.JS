let hermanos = prompt("Introduce cuanto hermanos tienes");
let precio = parseFloat(prompt("Introduce el precio"));
if(hermanos < 3 && hermanos > 0){
    precio = precio - (precio * 0.05);
}
else if(hermanos >= 3){
    precio = precio - (precio * 0.15);
}
alert("El precio final es " + precio);