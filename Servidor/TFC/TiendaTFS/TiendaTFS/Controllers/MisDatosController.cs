using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using System.Data;
using TiendaTFS.Data;
using TiendaTFS.Models;

namespace TiendaTFS.Controllers
{
    [Authorize(Roles = "Usuario")]
    public class MisDatosController : Controller
    {
        private readonly MvcTiendaTFSContexto _context;
        public MisDatosController(MvcTiendaTFSContexto context)
        {
            _context = context;
        }
        // GET: MisDatos/Create
        public IActionResult Create()
        {
            return View();
        }
        // POST: MisDatos/Create
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult>
       Create([Bind("Id,Nombre,Email,Telefono,Poblacion")] Cliente cliente)
        {
            // Asignar el Email del usuario actual
            cliente.Email = User.Identity.Name;
            if (ModelState.IsValid)
            {
                _context.Add(cliente);
                await _context.SaveChangesAsync();
                return RedirectToAction("Index", "Home");
            }
            return View(cliente);
        }
    }
}
