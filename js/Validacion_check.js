// Validacion de los checkbox

function validarFormulario() {
    var opcion1 = document.getElementById('opcion1');
    var opcion2 = document.getElementById('opcion2');
    var opcion3 = document.getElementById('opcion3');
    var opcion4 = document.getElementById('opcion4');
  
    var numSeleccionados = 0;
    if (opcion1.checked) {
      numSeleccionados++;
    }
    if (opcion2.checked) {
      numSeleccionados++;
    }
    if (opcion3.checked) {
      numSeleccionados++;
    }
    if (opcion4.checked) {
      numSeleccionados++;
    }
  
    if (numSeleccionados < 2) {
      alert('Debe seleccionar al menos 2 opciones.');
      return false;
    }
  
    return true;
  }