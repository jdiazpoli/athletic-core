// Consulta el estado de la API y lo muestra en la página de inicio.
async function consultarEstado() {
  const etiqueta = document.getElementById('estado-api');
  try {
    const respuesta = await fetch(`${API_URL}/api/estado`);
    const datos = await respuesta.json();
    etiqueta.textContent = datos.estado;
  } catch (error) {
    etiqueta.textContent = 'sin conexión';
  }
}

consultarEstado();
