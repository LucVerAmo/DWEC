using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using System.Data;
using TiendaTFS.Data;
using TiendaTFS.Models;

namespace TiendaTFS.Controllers
{
    public class MisPedidosController : Controller
    {
        [Authorize(Roles = "Usuario")]
        public async Task<IActionResult> Index()
        {
            // Se selecciona el empleado correspondiente al usuario actual
            var emailUsuario = User.Identity.Name;
            var cliente = await _context.Cliente.Where(e => e.Email == emailUsuario)
            .FirstOrDefaultAsync();
            if (cliente == null)
            {
                return RedirectToAction("Index", "Home");
            }
            // Se seleccionan los avisos del Empleado correspondiente al usuario actual
            var misPedidos = _context.Pedido
            .Where(a => a.ClienteId == cliente.Id)
            .OrderByDescending(a => a.Fecha)
            .Include(a => a.Cliente);
            return View(await misPedidos.ToListAsync());
        }

    }
}
