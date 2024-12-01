using System.Diagnostics;
using Microsoft.AspNetCore.Mvc;
using Crunchy.Models;

namespace Crunchy.Controllers;

public class HomeController : Controller
{
    private readonly ILogger<HomeController> _logger;

    public HomeController(ILogger<HomeController> logger)
    {
        _logger = logger;
    }

    public IActionResult Index()
    {
        ViewBag.OcultarHeader = true;
        return View();
    }
    public IActionResult Home()
    {
        return View();
    }
    public IActionResult Categorias()
    {
        ViewBag.ListaCategorias=BD.ListarCategorias();
        return View();
    }
    public IActionResult Favoritos(int IdUsuario)
    {
        ViewBag.ListaRecetasFav=BD.ListarRecetasFav(IdUsuario);
        return View();
    }

    public IActionResult Almacen()
    {
        return View();
    }

    public IActionResult Perfil()
    {
        return View();
    }

    public IActionResult Log(string mensajeError)
    {
        ViewBag.OcultarHeader = true;
        ViewBag.mensajeError = mensajeError;
        return View();
    }

    public IActionResult Resultados(string busqueda){
        int? idUsuario = HttpContext.Session.GetInt32("IdUsuario");
        ViewBag.ResultadosBusqueda=BD.ObtenerResultados(busqueda, idUsuario);
        return View();
    }

    public void AgregarFavorito(int IdReceta, int IdUsuario)
    {
        BD.AgregarFavorito(IdUsuario, IdReceta);
    }

    public void SacarFavorito(int IdReceta, int IdUsuario)
    {
        BD.SacarFavorito(IdUsuario, IdReceta);
    }
}