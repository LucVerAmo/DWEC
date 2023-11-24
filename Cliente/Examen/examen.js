let ordenadores = new Array;


function CrearOrdenador(marca, modelo, ram, disco, pulgadas, fecha, ...accesorios){
    if(typeof marca == 'string'){
        this.marca = marca;
    }
    else{
        this.marca = 'no definida';
    }

    if(typeof modelo == 'string'){
        this.modelo = modelo;
    }
    else{
        this.marca = 'no definido';
    }

    if(isNaN(ram) == true){
        this.ram = ram;
    }
    else{
        this.ram = 16;
    }
    
    if(isNaN(disco) == true){
        this.disco = disco;
    }
    else{
        this.disco = 256;
    }

    if(isNaN(pulgadas) == true){
        this.pulgadas = pulgadas;
    }
    else{
        this.pulgadas = 15.6;
    }

    if (fecha == undefined || typeof fecha != 'string' || isNaN(Date.parse(fecha)) == false) {
        let fecha1 = new Date();
        this.fecha = Date.parse(fecha1);
    }
    else {
        this.fecha = Date.parse(fecha);
    }
    
    this.accesorios = new Array;
    if(accesorios.length < 0){
        for(let i = 0; i < accesorios.length; i++){
            this.accesorios.push(accesorios[i]);
        }
    }
    
    this.mostrarOrdenador = function(){
        let texto = `ORDENADOR: ${this.marca} ${this.modelo}\n`;
        texto += `RAM: ${this.ram}GB\n`;
        texto += `DISCO: ${this.disco}\n`;
        texto += `PULGADAS: ${this.pulgadas}"\n`;
        texto += `ALTA ${new Date(this.fecha).toLocaleString()}\n`;
        texto += `ACCESORIOS:\n`;
        for(let i = 0; i < this.accesorios.length; i++){
            texto += `- ${this.accesorios[i]}\n`;
        }
        return texto;
    }

    this.actualizarMarcaModelo = function(marcaNew, modNew){
        if(typeof marcaNew == 'string'){
            this.marca = marcaNew;
        }

        if(typeof modNew == 'string'){
            this.modelo = modNew;
        }
    }

    this.actualizarRamDiscoPulgadas = function(ramNew, disNew, pulNew){
        if(isNaN(ramNew) == true){
            this.ram = ramNew;
        }
        
        if(isNaN(disNew) == true){
            this.disco = disNew;
        }

        if(isNaN(pulNew) == true){
            this.pulgadas = pulNew;
        }

    }

    this.actualizarFecha = function(fechaNew){
        if(fechaNew != undefined && typeof fechaNew == 'string' && isNaN(Date.parse(fechaNew)) == true){
            this.fecha = Date.parse(fechaNew);
        }
    }

    this.anyadirAccesorios = function(...acceNew){
        for (let i = 0; i < [...acceNew].length; i++) {
            if (!this.accesorios.includes(acceNew[i])) {
                this.accesorios.push(acceNew[i]);
            }
        }
    }

    this.borrarAccesorios = function(...acceDel){
        for (let i = 0; i < acceDel.length; i++) {
            let index = this.accesorios.indexOf(acceDel[i]);
            if (index > -1) {
                this.accesorios.splice(index, 1);
            }
        }
    }
}

let ordenador1 = CrearOrdenador('lenovo', 'legion', 32, 256, 15.6, '2022-11-09', 'ratón', 'teclado');
let ordenador2 = CrearOrdenador('hp', 'omen', 32, 256, 15.6, '2022-11-09', 'ratón', 'teclado');
let ordenador3 = CrearOrdenador('acer', 'ferrari', 32, 256, 15.6, '2022-09-09', 'ratón', 'teclado');
let ordenador4 = CrearOrdenador('msi', 'modern', 32, 256, 15.6, '2022-08-09', 'ratón', 'teclado');

ordenadores.push(ordenador1);
ordenadores.push(ordenador2);
ordenadores.push(ordenador3);
ordenadores.push(ordenador4);

function mostrarOrdenadores(){
    let cadena = ``;
    for(let i = 0; i < ordenadores.length; i++){
        let ordenador = ordenadores[i];
        cadena += `${ordenador.mostrarOrdenador()}`
    }
}
function ultimoejercicio(){
    return ordenadores.reduce(function(acc, ordenador){
        let fecha = new Date(ordenador.fecha);
        fecha = fecha.toLocaleDateString();
        acc[fecha] = (acc[fecha] ||0) + 1;
        return acc;
    },{})
}

console.log("patata");