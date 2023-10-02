let nombre = prompt("Introduce tu nombre");
let apellido = prompt("Introduce tu apellido");
let salario = parseFloat(prompt("Introduce tu salario"));
let edad = parseInt(prompt("Introduce tu edad"));

if (salario >= 1000 && salario <= 2000){
    if(edad >= 45){
        salario = salario + (salario * 0.03);
    }
    else{
        salario = salario + (salario * 0.1);
    }
}
else if (salario < 1000){
    if(edad < 30){
        salario = 1100;
    }
    else if(edad >= 30 && edad <= 45){
        salario = salario + (salario * 0.03);
    }
    else{
        salario = salario + (salario * 0.45);
    }
}

alert("Nombre: " + nombre + "\n" + "Apellido: " + apellido + "\n" + "Edad: " + edad + "\n" + "Salario: " + salario + "€");