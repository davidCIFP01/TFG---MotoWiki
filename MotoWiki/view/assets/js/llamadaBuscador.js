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