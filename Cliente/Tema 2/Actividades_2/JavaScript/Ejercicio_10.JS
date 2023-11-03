
let numero = parseInt(prompt("Introduce un numero"));
let acertado = false;
while(acertado == false){
    let numero2 = parseInt(prompt("Introduce un numero"));
    if (numero2 == numero){
        acertado = true;
    }
    else if (numero2 > numero){
        alert("El numero es más pequeño");
    }
    else{
        alert("El numero es más grande");
    }
}
alert("Has ganado");