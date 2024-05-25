function toggleFavorito(element) {
    if (element.classList.contains('fa-regular')) {
      element.classList.remove('fa-regular');
      element.classList.add('fa-solid');
    } else if (element.classList.contains('fa-solid')) {
      element.classList.remove('fa-solid');
      element.classList.add('fa-regular');
    }
  
    /* FALTA AÑADIR LÓGICA DE SUMAR-RESTAR A POPULAR  */
  }
  
  document.querySelectorAll('.fa-star').forEach(element => {
      element.addEventListener('click', function() {
          toggleFavorito(this);
      });
  });
  