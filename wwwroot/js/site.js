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


function cambiarLike(element, idUsuario, idReceta) {
    element.classList.toggle('like-lleno');
    let accion;
    if (element.classList.contains('like-lleno')) {
        accion = 'AgregarFavorito';
    } else {
        accion = 'SacarFavorito';
    }

    $.ajax(
        {
            url:`/Home/${accion}`,
            data:{IdReceta: idReceta, IdUsuario:idUsuario},
            type: 'GET',
            dataType: 'json',
        }
    )
}

