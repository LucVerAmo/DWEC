using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
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
        // GET: MisDatos/Edit
        public async Task<IActionResult> Edit()
        {
            // Se seleccionan los datos del empleado correspondiente al usuario actual
            string? emailUsuario = User.Identity.Name;
            Cliente? cliente = await _context.Clientes
            .Where(e => e.Email == emailUsuario)
            .FirstOrDefaultAsync();
            if (cliente == null)
            {
                return NotFound();
            }
            return View(cliente);
        }
        [HttpPost]
        [ValidateAntiForgeryToken]

        public async Task<IActionResult> Edit(int id,
            [Bind("Id, Nombre, Email, Telefono, Poblacion")] Cliente cliente)
        {
            if (id != cliente.Id)
            {
                return NotFound();
            }
            if (ModelState.IsValid)
            {
                try
                {
                    _context.Update(cliente);
                    await _context.SaveChangesAsync();
                }
                catch (DbUpdateConcurrencyException)
                {
                    if (!ClienteExists(cliente.Id))
                    {
                        return NotFound();
                    }
                    else
                    {
                        throw;
                    }

                }
                return RedirectToAction("Index", "Home");
            }
            return View(cliente);
        }
        private bool ClienteExists(int id)
        {
            return (_context.Clientes?.Any(e => e.Id == id)).GetValueOrDefault();
        }
    }
}
