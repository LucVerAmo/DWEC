using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using TiendaTFS.Data;
using TiendaTFS.Models;

namespace TiendaTFS.Controllers
{
    public class CarritosController : Controller
    {
        private readonly MvcTiendaTFSContexto _context;

        public CarritosController(MvcTiendaTFSContexto context)
        {
            _context = context;
        }

        // GET: CarritosController
        public async Task<ActionResult> Index()
        {
            int intNumeroPedido = 0;
            string numeroPedido = HttpContext.Session.GetString("NumPedido");
            if(numeroPedido == null)
            {
                return View("CarritoVacio");
            }
            intNumeroPedido = Convert.ToInt32(numeroPedido);
            var pedido = await _context.Pedidos.Include(x => x.Cliente).Include(x => x.Estado).Include(x => x.Detalles).ThenInclude(x => x.Producto).FirstOrDefaultAsync(e => e.Id == intNumeroPedido);
            if(pedido == null)
            {
                return NotFound();
            }
            return View(pedido);
        }

        public ActionResult CarritoVacio()
        {
            return View();
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> EliminarLinea(int id)
        {
            var detalle = await _context.Detalles.FindAsync(id);
            _context.Detalles.Remove(detalle);
            await _context.SaveChangesAsync();
            return RedirectToAction(nameof(Index));
        }

        public async Task<IActionResult> MasCantidad(int? id)
        {
            if(id == null)
            {
                return NotFound();
            }
            var detalle = await _context.Detalles.FindAsync(id);
            detalle.Cantidad = detalle.Cantidad + 1;
            if (ModelState.IsValid)
            {
                try
                {
                    _context.Update(detalle);
                    await _context.SaveChangesAsync();
                }
                catch(DbUpdateConcurrencyException) 
                {
                    if (!DetalleExists(detalle.Id))
                    {
                        return NotFound();
                    }
                    else
                    {
                        throw;
                    }
                }
            }
            return RedirectToAction(nameof(Index));
        }

        public async Task<IActionResult> MenosCantidad(int? id)
        {
            if(id == null)
            {
                return NotFound();
            }

            var detalle = await _context.Detalles.FindAsync(id);
            detalle.Cantidad = detalle.Cantidad - 1;
            if (ModelState.IsValid)
            {
                try
                {
                    _context.Update(detalle);
                    await _context.SaveChangesAsync();
                }
                catch(DbUpdateConcurrencyException)
                {
                    if (!DetalleExists(detalle.Id))
                    {
                        return NotFound();
                    }
                    else
                    {
                        throw;
                    }
                }
                
            }
            return RedirectToAction(nameof(Index));
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> ConfirmarPedido(int? id)
        {
            if(id == null)
            {
                return NotFound();
            }
            Pedido pedido = await _context.Pedidos.Include(p => p.Detalles).ThenInclude(p => p.Producto).Where(p => p.Id == id).FirstOrDefaultAsync();
            var confirmado = await _context.Estados.Where(e => e.Descripcion == "Confirmado").FirstOrDefaultAsync();
            pedido.EstadoId = confirmado.Id;
            pedido.Confirmado = DateTime.Now;
            foreach(Detalle detalle in pedido.Detalles)
            {
                var producto = await _context.Productos.Where(e => e.Id == detalle.ProductoId).FirstOrDefaultAsync();
                if(producto.Stock > 0)
                {
                    producto.Stock = producto.Stock - detalle.Cantidad;
                    _context.Update(producto);
                }
                if(producto.Stock <= 0)
                {
                    producto.Escaparate = false;
                    _context.Update(producto);
                }
            };
            if (ModelState.IsValid)
            {
                try
                {
                    _context.Update(pedido);
                    await _context.SaveChangesAsync();
                    HttpContext.Session.Remove("NumPedido");
                }
                catch (DbUpdateConcurrencyException)
                {
                    if (!PedidoExists(pedido.Id))
                    {
                        return NotFound();
                    }
                    else
                    {
                        throw;
                    }
                }
            }
            return RedirectToAction(nameof(Index), "Escaparate");
        }

        private bool PedidoExists(int id)
        {
            return _context.Pedidos.Any(p => p.Id == id);
        }

        private bool DetalleExists(int id)
        {
            return _context.Detalles.Any(d => d.Id == id);
        }

        // GET: CarritosController/Details/5
        public ActionResult Details(int id)
        {
            return View();
        }

        // GET: CarritosController/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: CarritosController/Create
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create(IFormCollection collection)
        {
            try
            {
                return RedirectToAction(nameof(Index));
            }
            catch
            {
                return View();
            }
        }

        // GET: CarritosController/Edit/5
        public ActionResult Edit(int id)
        {
            return View();
        }

        // POST: CarritosController/Edit/5
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit(int id, IFormCollection collection)
        {
            try
            {
                return RedirectToAction(nameof(Index));
            }
            catch
            {
                return View();
            }
        }

        // GET: CarritosController/Delete/5
        public ActionResult Delete(int id)
        {
            return View();
        }

        // POST: CarritosController/Delete/5
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Delete(int id, IFormCollection collection)
        {
            try
            {
                return RedirectToAction(nameof(Index));
            }
            catch
            {
                return View();
            }
        }
    }
}
