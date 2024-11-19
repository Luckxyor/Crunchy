const signUpButton = document.getElementById('signUp');
const signInButton = document.getElementById('signIn');
const container = document.getElementById('container');
const buscador = document.getElementById('busqueda');
const historial = document.querySelector('.historial');
const requisitos = document.querySelector('.nube-requisitos');
const passwordField = document.getElementById('Password');
const errorRequisitos = document.getElementById('errorRequisitos');
const caracteresEspeciales = ['!', '@', '#', '$', '%', '^', '&', '*', '(', ')', '-', '_', '=', '+', '{', '}', '[', ']', '|', ':', ';', '"', '<', '>', ',', '.', '?', '/', '`', '~'];

if (buscador) {
    buscador.addEventListener('focus', () => {
        historial.classList.add('historial-activo');
    });

    buscador.addEventListener('blur', () => {
        historial.classList.remove('historial-activo');
    });
}

if(requisitos){
    passwordField.addEventListener('focus', () => {
        requisitos.classList.add('requisitos-activo');
    });

    passwordField.addEventListener('blur', () => {
        requisitos.classList.remove('requisitos-activo');
    });
}
signUpButton.addEventListener('click', () =>{
    container.classList.add('right-panel-active');
});

signInButton.addEventListener('click', () => {
    container.classList.remove('right-panel-active');
});


function cambiarLike(element, idUsuario, idReceta) {
    element.classList.toggle('like-lleno');
    let accion;
    if (element.classList.contains('like-lleno')) {
        accion = 'AgregarFavorito';
    } else {
        accion = 'SacarFavorito';
    }
    $.ajax({
        url: `/Home/${accion}`,
        data: { IdReceta: idReceta, IdUsuario: idUsuario },
        type: 'GET',
        dataType: 'json',
    });
}



function ContraseñaBien() {
    const largo = document.getElementById('largo');
    const mayus = document.getElementById('mayus');
    const especial = document.getElementById('especial');


    const longitud = passwordField.value.length >= 8;
    const mayuscula = passwordField.value !== passwordField.value.toLowerCase();
    const contieneEspecial = contieneLetraEspecial(passwordField.value, caracteresEspeciales);


    if (longitud) {
        largo.textContent = '✔ Más de 8 caracteres';
        largo.style.color = 'green';
    } else {
        largo.textContent = '✖ Más de 8 caracteres';
        largo.style.color = 'red';
    }
    if (mayuscula) {
        mayus.textContent = '✔ Mínimo 1 letra mayúscula';
        mayus.style.color = 'green';
    } else {
        mayus.textContent = '✖ Mínimo 1 letra mayúscula';
        mayus.style.color = 'red';
    }
    if (contieneEspecial) {
        especial.textContent = '✔ Mínimo 1 caracter especial';
        especial.style.color = 'green';
    } else {
        especial.textContent = '✖ Mínimo 1 caracter especial';
        especial.style.color = 'red';
    }
    errorRequisitos.style.display = 'none';
}

function contieneLetraEspecial(contraseña, caracteresEspeciales) {
    for (let caracter of caracteresEspeciales) {
        if (contraseña.includes(caracter)) {
            return true;
        }
    }
    return false;
}

function validarFormulario() {
    const longitud = passwordField.value.length >= 8;
    const mayuscula = passwordField.value !== passwordField.value.toLowerCase();
    const contieneEspecial = contieneLetraEspecial(passwordField.value, caracteresEspeciales);


    if (!(longitud && mayuscula && contieneEspecial)) {
        errorRequisitos.style.display = 'block';
        return false;
    }

    return true;
}