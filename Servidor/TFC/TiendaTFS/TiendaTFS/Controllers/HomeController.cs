using Microsoft.AspNetCore.Mvc;
using System.Diagnostics;
using TiendaTFS.Data;
using TiendaTFS.Models;

namespace TiendaTFS.Controllers
{
    public class HomeController : Controller
    {
        private readonly ILogger<HomeController> _logger;
        private readonly MvcTiendaTFSContexto _context;

        public HomeController(ILogger<HomeController> logger, MvcTiendaTFSContexto context)
        {
            _logger = logger;
            _context = context;
        }

        public IActionResult Index()
        {
            // Busca el empleado correspondiente al usuario actual. Si existe, activa la
            // vista (View) y en caso contrario, se redirige para crear el empleado.
            string? emailUsuario = User.Identity.Name;
            Cliente? cliente = _context.Clientes.Where(e => e.Email == emailUsuario)
            .FirstOrDefault();
            if (User.Identity.IsAuthenticated &&
            User.IsInRole("Usuario") &&
            cliente == null)
            {
                return RedirectToAction("Create", "MisDatos");
            }
            return View();
        }

        public IActionResult Privacy()
        {
            return View();
        }

        [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
        public IActionResult Error()
        {
            return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
        }
    }
}