function toggleVetado(button) {

    url = "../AJAX/vetar-activarUsuario.php";
    idUsuario = button.getAttribute("data-idUser");

    console.log(idUsuario);

    if(button.classList.contains("botonAzul")){
        button.classList.remove("botonAzul");
        button.classList.add("botonNaranja");
        button.innerText = "VETAR"

        fetch(url, {
            method: 'POST',
            headers: {
                'Content-Type': 'application/json'
            },
            body: JSON.stringify({ idUsuario: idUsuario,modo: "activar" })
        })
        .then(response => response.text())
        .then(responseData =>{
            console.log(responseData);
        })
        
    }else if(button.classList.contains("botonNaranja")){
        
        button.classList.remove("botonNaranja");
        button.classList.add("botonAzul");
        button.innerText = "ACTIVAR"

        fetch(url, {
            method: 'POST',
            headers: {
                'Content-Type': 'application/json'
            },
            body: JSON.stringify({ idUsuario: idUsuario,modo: "vetar" })
        })
        .then(response => response.text())
        .then(responseData =>{
            console.log(responseData);
        })
    }
}