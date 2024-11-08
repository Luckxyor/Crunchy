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
    public IActionResult Favoritos()
    {
        return View();
    }

    public IActionResult Almacen()
    {
        return View();
    }

    public IActionResult Log(string mensajeError)
    {
        ViewBag.OcultarHeader = true;
        ViewBag.mensajeError = mensajeError;
        return View();
    }
}
