function cambiarPermisos(){
    todosSelects = document.querySelectorAll(".selectUsuario");

    console.log(todosSelects);

    todosSelects.forEach(element => {
        url = "../AJAX/cambioPermisos.php"
        element.addEventListener("change",(ev)=>{
            idUsuario = ev.target.getAttribute("data-idUser");
            permisos = ev.target.value;

            fetch(url, {
                method: 'POST',
                headers: {
                    'Content-Type': 'application/json'
                },
                body: JSON.stringify({ idUsuario: idUsuario,permisos: permisos })
            })
            .then(response => response.text())
            .then(responseData =>{
                console.log(responseData);
            })

        })
        
    });
}