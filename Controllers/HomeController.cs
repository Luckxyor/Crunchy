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
        return View("Home");
    }
    public IActionResult Home()
    {
        return View();
    }
    public IActionResult Categorias()
    {
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

    public IActionResult Log()
    {
        ViewBag.OcultarHeader = true;
        return View();
    }
}
