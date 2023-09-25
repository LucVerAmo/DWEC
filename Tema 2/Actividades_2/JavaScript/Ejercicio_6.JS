let numero1 = parseInt(prompt("Introduce un numero"));
let numero2 = parseInt(prompt("Introduce un numero"));
let signo = prompt("Introduce uno de los siguiente signos: +, -, *, /");
if (signo == "+"){
    let resultado = numero1 + numero2;
    alert(resultado);
}
else if (signo == "-"){
    let resultado = numero1 - numero2;
    alert(resultado);
}
else if (signo == "/"){
    let resultado = numero1 / numero2;
    alert(resultado);
}
else if (signo == "*"){
    let resultado = numero1 * numero2;
    alert(resultado);
}

else{
    alert("Ese signo no esta disponible o numero no valido");
}
