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

    public IActionResult Log(string mensajeError)
    {
        ViewBag.OcultarHeader = true;
        ViewBag.mensajeError = mensajeError;
        return View();
    }

    public IActionResult Resultados(string busqueda){
        ViewBag.ResultadosBusqueda=BD.ObtenerResultados(busqueda);
        return View();
    }

    [HttpPost]
    public JsonResult AgregarFavorito([FromBody] FavoritoRequest request)
    {
        BD.AgregarFavorito(request.IdUsuario, request.IdReceta);
        return Json(new { success = true });
    }

    [HttpPost]
    public JsonResult SacarFavorito([FromBody] FavoritoRequest request)
    {
        BD.SacarFavorito(request.IdUsuario, request.IdReceta);
        return Json(new { success = true });
    }
}
public class FavoritoRequest
{
    public int IdUsuario { get; set; }
    public int IdReceta { get; set; }
}
