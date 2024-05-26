

document.getElementById('imagenTienda').addEventListener('change', function(ev) {        
    var archivo = ev.target.files[0];

    var url = URL.createObjectURL(archivo);

    var imagen = document.createElement('img');
    imagen.src = url;

    var divImagenMostrada = document.getElementById('imagenMostrada');
    primerHijo = divImagenMostrada.firstChild;
   
    if(primerHijo){
        divImagenMostrada.removeChild(primerHijo);
    }

    divImagenMostrada.appendChild(imagen);
    
    document.getElementById('activarInputFile').style.display = "none";
    document.getElementById('imagenMostrada').style.display = "block";
});