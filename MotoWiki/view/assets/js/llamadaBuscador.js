function llamadaConsultaBusqueda(modo,string){
    data = {
        modo: modo,
        textoBusqueda: string
    };

    url = "../AJAX/busquedaMotocicletaMarca.php"

    fetch(url, {
        method: 'POST', // Método de la solicitud
        headers: {
            'Content-Type': 'form-data' // Indica que se enviarán datos en formato JSON
        },
        body: JSON.stringify(data) // Convertir el objeto de datos a una cadena JSON
    })

    .then(response => response.text())

    .then(responseData =>{
        console.log(responseData)
        // console.log("Hola")
        document.getElementById("contenedorResultados").innerHTML =responseData

        /* Creamos divs y los metemos en el contenedor de Resultados. */
    })
}



function llamadaConsultaUsuarios(string){
    data = {
        textoBusqueda: string
    };

    url = "../AJAX/busquedaUsuarios.php"

    fetch(url, {
        method: 'POST', // Método de la solicitud
        headers: {
            'Content-Type': 'form-data' // Indica que se enviarán datos en formato JSON
        },
        body: JSON.stringify(data) // Convertir el objeto de datos a una cadena JSON
    })

    .then(response => response.text())

    .then(responseData =>{
        console.log(responseData)

        document.getElementById("contenedorUsuarios").innerHTML =responseData

        cambiarPermisos();
    })
}


function buscadorSinEnlacesGestionDatos(string){
    data = {
        modo: "ambas",
        textoBusqueda: string,
        gestionDatos: true
    };

    url = "../AJAX/busquedaMotocicletaMarca.php"

    fetch(url, {
        method: 'POST', // Método de la solicitud
        headers: {
            'Content-Type': 'form-data' // Indica que se enviarán datos en formato JSON
        },
        body: JSON.stringify(data) // Convertir el objeto de datos a una cadena JSON
    })

    .then(response => response.text())

    .then(responseData =>{
        console.log(responseData)
        
        document.getElementById("contenedorResultados").innerHTML =responseData

        /* Creamos divs y los metemos en el contenedor de Resultados. */
    })
}

function crearRecuadrosGestionDatos(modo,idCambio = null){
    data = {
        modo: modo, /* moto / fabricante */
        idCambio: idCambio
    };

    url = "../AJAX/recuadroCambios.php"

    fetch(url, {
        method: 'POST', // Método de la solicitud
        headers: {
            'Content-Type': 'form-data' // Indica que se enviarán datos en formato JSON
        },
        body: JSON.stringify(data) // Convertir el objeto de datos a una cadena JSON
    })

    .then(response => response.text())

    .then(responseData =>{
        console.log(responseData)

        document.getElementById("contenedorResultados").hidden = true;
        document.getElementById("contenedorCambios").hidden = false;
        document.getElementById("contenedorCambios").innerHTML =responseData

        crearListenerCambioImagen()

        
        if(document.getElementById("botonConfirmarCambios")){
            document.getElementById("botonConfirmarCambios").addEventListener("click",(ev)=>{
                formulario=document.getElementById("formularioDatos");
        
                formData = new FormData(formulario);
        
                fetch("../AJAX/confirmarCambios.php",{
                    method: 'POST',
                    body: formData
                })
                .then(response => response.text())
                .then(data => {
                    console.log(data);

                    // Cambiar el texto del botón
                    document.getElementById("botonConfirmarCambios").innerText = "Datos Cambiados";

                    // Restaurar el texto original después de 3 segundos
                    setTimeout(function(){
                        document.getElementById("botonConfirmarCambios").innerText = "Confirmar Cambios";
                    }, 3000);
                    
                })
                .catch((error) => {
                    console.error('Error:', error);
                });
            })
        }

        if(document.getElementById("generarNuevo")){
            document.getElementById("generarNuevo").addEventListener("click",(ev)=>{
                formulario=document.getElementById("formularioDatos");
        
                formData = new FormData(formulario);
        
                fetch("../AJAX/crearMotoFabricante.php",{
                    method: 'POST',
                    body: formData
                })
                .then(response => response.text())
                .then(data => {
                    console.log(data);
                    location.reload()
                    
                })
                .catch((error) => {
                    console.error('Error:', error);
                });
            })
        }

        if(document.getElementById("botonBorrar")){
            document.getElementById("botonBorrar").addEventListener("click",(ev)=>{
                
                fetch("../AJAX/borrarDatos.php", {
                    method: 'POST', // Método de la solicitud
                    headers: {
                        'Content-Type': 'form-data' // Indica que se enviarán datos en formato JSON
                    },
                    body: JSON.stringify(data) // Convertir el objeto de datos a una cadena JSON
                })
            
                .then(response => response.text())
                .then(data => {
                    console.log(data);
                    location.reload()
                })
                .catch((error) => {
                    console.error('Error:', error);
                });
            })


        }


        if(document.getElementById("botonCancelar")){
            document.getElementById("botonCancelar").addEventListener("click",(ev)=>{
                document.getElementById("contenedorCambios").innerHTML = "";
                document.getElementById("contenedorCambios").hidden = true;
            })
        }


    })
}