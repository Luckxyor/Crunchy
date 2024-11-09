const signUpButton = document.getElementById('signUp');
const signInButton = document.getElementById('signIn');
const container = document.getElementById('container');
const buscador = document.getElementById('busqueda');
const historial = document.querySelector('.historial');

buscador.addEventListener('focus', () => {
    historial.classList.add('historial-activo');
});
buscador.addEventListener('blur', () => {
    historial.classList.remove('historial-activo');
});

signUpButton.addEventListener('click', () =>
    container.classList.add('right-panel-active')
);

signInButton.addEventListener('click', () =>
    container.classList.remove('right-panel-active')
);


function cambiarLike(element, IdUsuario, IdReceta) {
    element.classList.toggle('like-lleno');
    let accion = element.classList.contains('like-lleno') ? 'AgregarFavorito' : 'SacarFavorito';

    fetch(`/Home/${accion}`, {
        method: 'POST',
        headers: {
            'Content-Type': 'application/json'
        },
        body: JSON.stringify({ IdUsuario: IdUsuario, IdReceta: IdReceta })
    });
}

