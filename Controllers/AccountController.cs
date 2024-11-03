using System.Diagnostics;
using Microsoft.AspNetCore.Mvc;
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
    public IActionResult AgregarUsuario(string UserName, string Email, string Contraseña){
        BD.AgregarUsuario(UserName,Email,Contraseña);
        return RedirectToAction ("Index", "Home");
    }
}