let numero = parseInt(prompt("Introduce un numero"));
let texto = "";
texto = (numero % 2 == 0) ? ("El número " + numero + " es par, ") : ("El número " + numero + " es impar, ");
if (numero % 3 == 0){
    texto = texto + "es múltiplo de 3, ";
}
if (numero % 5 == 0){
    texto = texto + "es múltiplo de 5";
}
alert(texto);