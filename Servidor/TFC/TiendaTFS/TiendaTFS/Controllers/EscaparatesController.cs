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
