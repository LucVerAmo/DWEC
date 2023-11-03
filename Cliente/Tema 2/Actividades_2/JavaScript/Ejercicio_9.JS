
let numero = parseInt(prompt("Introduce un numero"));
let resultado = 1;
while (numero > 1){
    resultado = numero * resultado;
    numero--;
}
alert(resultado);