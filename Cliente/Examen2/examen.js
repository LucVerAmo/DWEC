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
    // let editEm = new EditarHandleFormulario();
    // btnEd.addEventListener("click", editEm);

    let btnDel = document.createElement("button");
    btnDel.setAttribute("id", `bDel${empleado.id}`);
    btnDel.textContent = "Borrar";
    divEm.append(btnDel);

    lista.append(divEm)
    return  lista;
}

function muestraWeb(){
    console.log("AAA");
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
     let tem = document.getElementById("formulario-template");
     let formulario = tem.forms[0];
     console.log(tem); 
}

muestraWeb();