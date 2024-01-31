using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.EntityFrameworkCore;
using TiendaTFS.Data;
using TiendaTFS.Models;

namespace TiendaTFS.Controllers
{
    public class EscaparatesController : Controller
    {
        private readonly MvcTiendaTFSContexto _context;

        public EscaparatesController(MvcTiendaTFSContexto context)
        {
            _context = context;
        }
        // GET: Escaparates
        public async Task<IActionResult> Index(int? id)
        {
            var productos = _context.Productos.AsQueryable();

            if(id == null)
            {
                productos = productos.Where(x =>  x.Escaparate == true);
            }
            else
            {
                productos = productos.Where(x => x.CategoriaId == id);
                ViewBag.DescripcionCategoria = _context.Categorias.Find(id).Descripcion.ToString();
            }
            ViewData["ListaCategorias"] = _context.Categorias.OrderBy(c => c.Descripcion).ToList();
            productos = productos.Include(a => a.Categoria);
            return View(await productos.ToListAsync());
            /*
            if(pageNumber <= 0)
            {
                pageNumber = 1;
            }
            if(strCadenaBusqueda != null)
            {
                pageNumber = 1;
            }
            else
            {
                strCadenaBusqueda = busquedaActual;
            }
            ViewData["BusquedaActual"] = strCadenaBusqueda;
            if(categoriaIdActual != null)
            {
                pageNumber = 1;
            }
            else
            {
                categoriaId = categoriaIdActual;
            }
            ViewData["categoriaIdActual"] = categoriaId;

            var productos = _context.Productos.AsQueryable();
            productos = productos.OrderBy(x => x.Descripcion);
            if (!String.IsNullOrEmpty(strCadenaBusqueda))
            {
                productos = productos.Where(s => s.Descripcion.Contains(strCadenaBusqueda));
            }
            if(categoriaId == null)
            {
                ViewData["categoriaId"] = new SelectList(_context.Productos, "Id", "Descripcion");
            }
            else
            {
                ViewData["categoriaId"] = new SelectList(_context.Productos, "Id", "Descripcion", categoriaId);
                productos = productos.Where(x => x.CategoriaId == categoriaId);
            }
            ViewData["ListaCategorias"] = _context.Categorias.OrderBy(c => c.Descripcion).ToList();
            productos = productos.Where(x => x.Stock > 0).Include(x => x.Categoria);
            int pageSize = 12;
            return View(await PaginatedList<Producto>.CreateAsync(productos.AsNoTracking(), pageNumber ?? 1, pageSize));
            */
        }

        // GET: Escaparates/Details/5
        public async Task<IActionResult> Details(int? id)
        {
            if (id == null || _context.Escaparate == null)
            {
                return NotFound();
            }

            var escaparate = await _context.Escaparate
                .FirstOrDefaultAsync(m => m.Id == id);
            if (escaparate == null)
            {
                return NotFound();
            }

            return View(escaparate);
        }

        // GET: Escaparates/Create
        public IActionResult Create()
        {
            return View();
        }

        // POST: Escaparates/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to.
        // For more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Create([Bind("Id")] Escaparate escaparate)
        {
            if (ModelState.IsValid)
            {
                _context.Add(escaparate);
                await _context.SaveChangesAsync();
                return RedirectToAction(nameof(Index));
            }
            return View(escaparate);
        }

        // GET: Escaparates/Edit/5
        public async Task<IActionResult> Edit(int? id)
        {
            if (id == null || _context.Escaparate == null)
            {
                return NotFound();
            }

            var escaparate = await _context.Escaparate.FindAsync(id);
            if (escaparate == null)
            {
                return NotFound();
            }
            return View(escaparate);
        }

        // POST: Escaparates/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to.
        // For more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Edit(int id, [Bind("Id")] Escaparate escaparate)
        {
            if (id != escaparate.Id)
            {
                return NotFound();
            }

            if (ModelState.IsValid)
            {
                try
                {
                    _context.Update(escaparate);
                    await _context.SaveChangesAsync();
                }
                catch (DbUpdateConcurrencyException)
                {
                    if (!EscaparateExists(escaparate.Id))
                    {
                        return NotFound();
                    }
                    else
                    {
                        throw;
                    }
                }
                return RedirectToAction(nameof(Index));
            }
            return View(escaparate);
        }

        // GET: Escaparates/Delete/5
        public async Task<IActionResult> Delete(int? id)
        {
            if (id == null || _context.Escaparate == null)
            {
                return NotFound();
            }

            var escaparate = await _context.Escaparate
                .FirstOrDefaultAsync(m => m.Id == id);
            if (escaparate == null)
            {
                return NotFound();
            }

            return View(escaparate);
        }

        // POST: Escaparates/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> DeleteConfirmed(int id)
        {
            if (_context.Escaparate == null)
            {
                return Problem("Entity set 'MvcTiendaTFSContexto.Escaparate'  is null.");
            }
            var escaparate = await _context.Escaparate.FindAsync(id);
            if (escaparate != null)
            {
                _context.Escaparate.Remove(escaparate);
            }
            
            await _context.SaveChangesAsync();
            return RedirectToAction(nameof(Index));
        }

        private bool EscaparateExists(int id)
        {
          return (_context.Escaparate?.Any(e => e.Id == id)).GetValueOrDefault();
        }
    }
}
