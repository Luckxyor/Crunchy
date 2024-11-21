using System.Diagnostics;
using Microsoft.AspNetCore.Mvc;
using System.Web;
using Crunchy.Models;

namespace Crunchy.Controllers;

public class AccountController : Controller
{
    private readonly ILogger<AccountController> _logger;

    public AccountController(ILogger<AccountController> logger)
    {
        _logger = logger;
    }

    [HttpPost]
    public IActionResult Sesion(string userOEmail, string contraseña)
    {
        Usuario usuario=BD.InicioSesion(userOEmail, contraseña);
        if (usuario != null)
        {
            string perfilPredeterminada = usuario.Foto ?? "https://t3.ftcdn.net/jpg/00/64/67/80/360_F_64678017_zUpiZFjj04cnLri7oADnyMH0XBYyQghG.jpg";
            string  headerPredeterminado = usuario.FotoHeader ?? "https://media.istockphoto.com/id/1128826884/es/vector/ning%C3%BAn-s%C3%ADmbolo-de-vector-de-imagen-falta-icono-disponible-no-hay-galer%C3%ADa-para-este-momento.jpg?s=612x612&w=0&k=20&c=9vnjI4XI3XQC0VHfuDePO7vNJE7WDM8uzQmZJ1SnQgk=";

            HttpContext.Session.SetInt32("IdUsuario", usuario.IdUsuario);
            HttpContext.Session.SetString("Email", usuario.Email);
            HttpContext.Session.SetString("Username", usuario.Username);
            HttpContext.Session.SetString("Foto", perfilPredeterminada);
            HttpContext.Session.SetString("FotoHeader", headerPredeterminado);

            return RedirectToAction("Home", "Home");
        }
        else
        {
            ViewBag.ErrorMessage = "Usuario, Email o contraseña incorrectos.";
            return RedirectToAction("Log", "Home", new {mensajeError = "Usuario, Email o contraseña incorrectos."});
        }
    }

    [HttpPost]
    public IActionResult AgregarUsuario(string Username, string Email, string Contraseña){
        BD.AgregarUsuario(Username,Email,Contraseña);
        Usuario usuario=BD.InicioSesion(Email, Contraseña);
        string perfilPredeterminada = usuario.Foto ?? "https://t3.ftcdn.net/jpg/00/64/67/80/360_F_64678017_zUpiZFjj04cnLri7oADnyMH0XBYyQghG.jpg";
        string  headerPredeterminado = usuario.FotoHeader ?? "https://media.istockphoto.com/id/1128826884/es/vector/ning%C3%BAn-s%C3%ADmbolo-de-vector-de-imagen-falta-icono-disponible-no-hay-galer%C3%ADa-para-este-momento.jpg?s=612x612&w=0&k=20&c=9vnjI4XI3XQC0VHfuDePO7vNJE7WDM8uzQmZJ1SnQgk=";
        HttpContext.Session.SetInt32("IdUsuario", usuario.IdUsuario);
        HttpContext.Session.SetString("Email", usuario.Email);
        HttpContext.Session.SetString("Username", usuario.Username);
        HttpContext.Session.SetString("Foto", perfilPredeterminada);
        HttpContext.Session.SetString("FotoHeader", headerPredeterminado);
        return RedirectToAction ("Home", "Home");
    }

    public IActionResult Logout()
    {
        HttpContext.Session.Clear();
        return RedirectToAction("Log", "Home");
    }
}