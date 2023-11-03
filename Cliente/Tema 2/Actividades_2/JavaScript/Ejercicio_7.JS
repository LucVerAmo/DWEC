let numero = parseInt(prompt("Introduce un numero"));
let suma = 0;
while(numero != 0){
    suma += numero;
    numero = parseInt(prompt("Introduce un numero"));
}
alert(suma);