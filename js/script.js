//validacion alias
const aliasInput = document.getElementById("Alias");

aliasInput.addEventListener("input", () => {
  const alias = aliasInput.value;
  const regex = /^[a-zA-Z0-9]{6,}$/;

  if (regex.test(alias)) {
    aliasInput.setCustomValidity("");
  } else {
    aliasInput.setCustomValidity("El alias debe tener al menos 6 caracteres y contener solo letras y números.");
  }
});
// cargar comunas
$(document).ready(function(){
  $('#region').val(0);
  recargarLista();

  $('#region').change(function(){
    recargarLista();
  });
})
function recargarLista(){
  $.ajax({
    type:"POST",
    url:"peticiones/Comuna.php",
    data:"VRegion=" + $('#region').val(),
    success:function(r){
      $('#comuna').html(r);
    }
  });
}
//validacion RUT
const rutInput = document.getElementById('RUT');

rutInput.addEventListener('input', (event) => {
  let rut = event.target.value.replace(/\D/g, ''); 

  rut = rut.substring(0, 2) + '.' + rut.substring(2, 5) + '.' + rut.substring(5, 8) + '-' + rut.substring(8); 

  event.target.value = rut; 
});
