
function enviarInicio(){
    window.location.href = "./inicio.php";
}

function redirigirEnlace(element){
    
    element.addEventListener("click",(ev)=>{

        enlaceFabricante = ev.target.getAttribute("data-src");
        window.location.href= enlaceFabricante;
    })

}