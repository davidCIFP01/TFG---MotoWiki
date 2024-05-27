
function crearListenerCambioImagen(){

    document.getElementById("ImagenActual").addEventListener('click', function(ev) {  
        document.getElementById('cambioImagen').click();
    })

    document.getElementById('cambioImagen').addEventListener('change', function(ev) {    

        var archivo = ev.target.files[0];
        var url = URL.createObjectURL(archivo);
        document.getElementById("ImagenActual").src = url;
        
    });
}