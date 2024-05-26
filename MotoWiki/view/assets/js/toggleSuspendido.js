function toggleSuspendido(idCambio,modo,tipo) {

    url = "../AJAX/activarSuspender.php";

    if(modo == "activar"){
        
        document.getElementById("botonActivar").hidden = true;
        document.getElementById("botonSuspender").hidden = false;

    }else if(modo == "suspender"){
        
        document.getElementById("botonActivar").hidden = false;
        document.getElementById("botonSuspender").hidden = true;
    }
        
    fetch(url, {
        method: 'POST',
        headers: {
            'Content-Type': 'application/json'
        },
        body: JSON.stringify({ idCambio: idCambio, tipo: tipo, modo: modo })
    })
    .then(response => response.text())
    .then(responseData =>{
        console.log(responseData);
    })
        
}