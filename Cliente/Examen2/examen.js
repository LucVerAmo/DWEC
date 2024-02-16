let id = 0;
let empleados = [];

function CrearEmpleado(inNombre, inApellidos, inNif, inEdad, inPuesto, inSalario, inAnti){
    this.nombre = inNombre;
    this.apellidos = inApellidos;
    this.nif = inNif;
    this.edad = inEdad;
    this.puesto = inPuesto;
    this.salario = inSalario;
    this.antiguedad = inAnti;
    
}

function anyadirEmpleado(empleado){
    empleado.id = id;
    empleados.push(empleado);
    id++;
}

let emple1 = new CrearEmpleado("Juan", "Pérez", "12345678A", 30, "Programador", 2000, 5);
let emple2 = new CrearEmpleado("Ana", "García", "87654321B", 25, "Programador", 2000, 2);
anyadirEmpleado(emple1);
anyadirEmpleado(emple2);

function muestraEmpleado(empleado){
    console.log (empleado.id);
    let divEm = document.createElement("div");
    divEm.setAttribute("class", "empleado");
    divEm.setAttribute("id", empleado.id);

    let lista = document.createElement("li");
    lista.setAttribute("id", `li${empleado.id}`);

    let nombre = document.createElement("p");
    nombre.setAttribute("style", "font-size:1em; font-weight:bold;")
    nombre.textContent =`${empleado.nombre}  ${empleado.apellidos}`;
    divEm.append(nombre);

    let nif = document.createElement("p");
    nif.textContent = `NIF: ${empleado.nif}`;
    divEm.append(nif);

    let edad = document.createElement("p");
    edad.textContent = `Edad: ${empleado.edad}`;
    divEm.append(nif);

    let puesto = document.createElement("p");
    puesto.textContent = `Puesto: ${empleado.puesto}`;
    divEm.append(edad);

    let salario = document.createElement("p");
    salario.textContent = `Salario: ${empleado.salario}`;
    divEm.append(salario);

    let antiguedad = document.createElement("p");
    antiguedad.textContent = `Antigüedad: ${empleado.antiguedad}`;
    divEm.append(antiguedad);

    let btnEd = document.createElement("button");
    btnEd.setAttribute("id", `bEditar${empleado.id}`);
    btnEd.textContent = "Editar";
    divEm.append(btnEd);

    let editEm = new EditarHandleFormulario();
    editEm.empleado = empleado;
    editEm.divEm = divEm;
    editEm.boton = btnEd;
    btnEd.addEventListener('click', editEm);

    let btnDel = document.createElement("button");
    btnDel.setAttribute("id", `bDel${empleado.id}`);
    btnDel.textContent = "Borrar";
    divEm.append(btnDel);

    let delEm = new BorrarEmp();
    delEm.empleado = empleado;
    btnDel.addEventListener('click', delEm);

    lista.append(divEm)
    return  lista;
}

function muestraWeb(){
    console.log("AAA");
    document.getElementById("divEmple").innerText = "";
    let h1A = document.createElement("h1");
    h1A.textContent = "Listado de Empleados";
    let listOrd = document.createElement("ol");
    listOrd.setAttribute("class", "rounded-list");
    for(let i = 0; i < empleados.length; i++){
        let empleado = empleados[i];
        console.log(empleado);
        listOrd.append(muestraEmpleado(empleado));
    }
    h1A.append(listOrd);
    console.log(h1A);
    document.getElementById("divEmple").append(h1A);
}

function EditarHandleFormulario(){
    this.handleEvent = function (event) {
        console.log("1");
        let plantillaFormulario = document.getElementById("formulario-template").content.cloneNode(true);;
        var formulario = plantillaFormulario.querySelector("form");
        let boton = this.boton;
        boton.disabled = true;
                
            let empleado = this.empleado;
            formulario.nombre.value = empleado.nombre;
            formulario.apellidos.value = empleado.apellidos;
            formulario.nif.value = empleado.nif;
            formulario.edad.value = empleado.edad;
            formulario.puesto.value = empleado.puesto;
            formulario.salario.value = empleado.salario;
            formulario.antigüedad.value = empleado.antiguedad;

            this.divEm.append(formulario);

            formulario.addEventListener("submit", function(event) {
                event.preventDefault();
                console.log("2");
                empleado.nombre = formulario.nombre.value;
                empleado.apellidos =  formulario.apellidos.value;
                empleado.nif = formulario.nif.value;
                empleado.edad = parseInt(formulario.edad.value);
                empleado.puesto = formulario.puesto.value;
                empleado.salario = parseInt(formulario.salario.value);
                empleado.antiguedad = parseInt(formulario.antigüedad.value);
                muestraWeb();
                formulario.remove;
                boton.disabled = false;
            })
            

            formulario.querySelector('button.cancelar').addEventListener("click", function () {
                console.log("3");
                formulario.remove();
                muestraWeb();
                boton.disabled = false;
            }
            )
    }
}

function BorrarEmp(){
    this.handleEvent = function(event){
        console.log("Pat");
        for(let i = 0; i < empleados.length; i++){
            let emple = empleados[i];
            if(emple.id == this.empleado.id){
                empleados.splice(i,1);
                muestraWeb();
            }
        }
    }
}

function nuevoEmpForm(){
    //nombre apellido nif edad puesto salario antiguedad
    let plantillaFormulario = document.getElementById("formulario-template").content.cloneNode(true);;
    var formulario = plantillaFormulario.querySelector("form");
    document.getElementById("controlesprincipales").append(formulario);
    document.getElementById("anyadeEmpleForm").disabled = true;
    formulario.addEventListener("submit", function () {
        event.preventDefault()
        let nom = formulario.nombre.value;
        let ape = formulario.apellidos.value;
        let nif = formulario.nif.value;
        let ed = parseInt(formulario.edad.value);
        let pu = formulario.puesto.value;
        let sal = parseInt(formulario.salario.value);
        let anti = parseInt(formulario.antigüedad.value);
        let empleado = new CrearEmpleado(nom, ape, nif, ed, pu, sal, anti);
        anyadirEmpleado(empleado);
        document.getElementById("anyadeEmpleForm").disabled = false;
        muestraWeb();
    })
    formulario.querySelector('button.cancelar').addEventListener("click", function () {
        //console.log("funciona");
        document.getElementById("anyadeEmpleForm").disabled = false;
        formulario.remove();
        muestraWeb();
    }
    )
}

let btnNuevo = document.getElementById("anyadeEmpleForm");
btnNuevo.addEventListener("click", function(){
    nuevoEmpForm();
})

muestraWeb();