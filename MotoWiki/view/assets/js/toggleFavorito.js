function toggleFavorito(element) {
  
  idMoto = element.getAttribute("data-idMoto");

  if (element.classList.contains('fa-regular')) {
      // console.log("hola")
      element.classList.remove('fa-regular');
      element.classList.add('fa-solid');
      modo = "añadir";

    } else if (element.classList.contains('fa-solid')) {
      
      element.classList.remove('fa-solid');
      element.classList.add('fa-regular');
      modo = "quitar";

    }
  
    /* FALTA AÑADIR LÓGICA DE SUMAR-RESTAR A POPULAR  */

    fetch("../AJAX/toggleFavorito.php", {
        method: 'POST',
        headers: {
            'Content-Type': 'application/json'
        },
        body: JSON.stringify({idMoto: idMoto,modo:modo })
    })
    .then(response => response.text())
    .then(responseData =>{
        console.log(responseData);
    })

  }
  
/*   document.querySelectorAll('.fa-star').forEach(element => {
      element.addEventListener('click', function() {
          toggleFavorito(this);
      });
  });
   */