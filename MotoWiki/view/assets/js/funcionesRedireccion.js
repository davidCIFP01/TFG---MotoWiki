
async function enviarInicio(){
    window.location.href = "./inicio.php";
}

async function redirigirEnlace(element){
    
    enlaceFabricante = element.getAttribute("data-src");
    window.location.href= enlaceFabricante;

}