using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using TiendaTFS.Data;
using TiendaTFS.Models;

namespace TiendaTFS.Controllers
{
    public class EscaparatesController : Controller
    {
        private MvcTiendaTFSContexto _context;

        public EscaparatesController(MvcTiendaTFSContexto context)
        {
            _context = context;
        }
        // GET: EscaparatesController
        public async Task<IActionResult> Index(int? id)
        {
            var productos = _context.Productos.AsQueryable();

            if (id == null)
            {
                productos = productos.Where(x => x.Escaparate == true);
            }
            else
            {
                productos = productos.Where(x => x.CategoriaId == id);
                ViewBag.DescripcionCategoria = _context.Categorias.Find(id).Descripcion.ToString();
            }
            ViewData["ListaCategorias"] = _context.Categorias.OrderBy(c => c.Descripcion).ToList();
            productos = productos.Include(a => a.Categoria);
            return View(await productos.ToListAsync());
        }
        public async Task<IActionResult> AñadirCarrito(int? id)
        {
            if (id == null || _context.Productos == null)
            {
                return NotFound();
            }

            var producto = await _context.Productos
                .Include(p => p.Categoria)
                .FirstOrDefaultAsync(m => m.Id == id);

            if (producto == null)
            {
                return NotFound();
            }

            return View(producto);
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> AñadirCarrito(int id)
        {
            //Cargar datos de producto a añadir carrito
            var producto = await _context.Productos
                .FirstOrDefaultAsync(m => m.Id == id);

            if (producto == null)
            {
                return NotFound();
            }

            //Crear objetos pedido y detalle a agregar
            Pedido pedido = new Pedido();
            Detalle detalle = new Detalle();

            if (User.Identity.IsAuthenticated && await _context.Clientes.AnyAsync(p => p.Email == User.Identity.Name))
            {
                Cliente usuario = await _context.Clientes.Where(p => p.Email == User.Identity.Name).FirstOrDefaultAsync();

                if (HttpContext.Session.GetString("NumPedido") == null && usuario.Id != null)
                {
                    pedido.Fecha = DateTime.Now;
                    pedido.Confirmado = null;
                    pedido.Preparado = null;
                    pedido.Enviado = null;
                    pedido.Cobrado = null;
                    pedido.Devuelto = null;
                    pedido.Anulado = null;
                    pedido.ClienteId = usuario.Id;
                    pedido.EstadoId = 4;

                    if (ModelState.IsValid)
                    {
                        _context.Add(pedido);
                        await _context.SaveChangesAsync();
                    }

                    HttpContext.Session.SetString("NumPedido", pedido.Id.ToString());
                }
            }
            else
            {
                return NotFound();
            }

            //Agregar producto al detalle de un pedido existente
            string strNumeroPedido = HttpContext.Session.GetString("NumPedido");
            detalle.PedidoId = Convert.ToInt32(strNumeroPedido);

            //Verificar si el producto ya está en el carrito del usuario
            var detalleExistente = await _context.Detalles
                .FirstOrDefaultAsync(d => d.PedidoId == Convert.ToInt32(strNumeroPedido) && d.ProductoId == id);

            if (detalleExistente != null)
            {
                //Actualizar cantidad del producto existente
                detalleExistente.Cantidad++;
                _context.Update(detalleExistente);
                await _context.SaveChangesAsync();
            }
            else
            {
                //El valor de id tiene qel ID del producto a agregar
                detalle.ProductoId = id;
                detalle.Cantidad = 1;
                detalle.Precio = producto.Precio;
                detalle.Descuento = 0;

                if (ModelState.IsValid)
                {
                    _context.Add(detalle);
                    await _context.SaveChangesAsync();
                }
            }
            return RedirectToAction(nameof(Index));
        }

        // GET: EscaparatesController/Details/5
        public ActionResult Details(int id)
        {
            return View();
        }

        // GET: EscaparatesController/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: EscaparatesController/Create
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

        // GET: EscaparatesController/Edit/5
        public ActionResult Edit(int id)
        {
            return View();
        }

        // POST: EscaparatesController/Edit/5
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

        // GET: EscaparatesController/Delete/5
        public ActionResult Delete(int id)
        {
            return View();
        }

        // POST: EscaparatesController/Delete/5
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
