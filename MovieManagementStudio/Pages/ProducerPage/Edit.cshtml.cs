using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.EntityFrameworkCore;
using MovieManagementStudio.Data;
using MovieManagementStudio.Models;

namespace MovieManagementStudio.Pages.ProducerPage
{
    [Authorize]
    public class EditModel : PageModel
    {
        private readonly MovieManagementStudio.Data.MovieManagementStudioContext _context;

        public EditModel(MovieManagementStudio.Data.MovieManagementStudioContext context)
        {
            _context = context;
        }

        [BindProperty]
        public Producer Producer { get; set; }

        public async Task<IActionResult> OnGetAsync(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            Producer = await _context.Producer
                .Include(p => p.Movie).FirstOrDefaultAsync(m => m.Id == id);

            if (Producer == null)
            {
                return NotFound();
            }
           ViewData["MovieFk"] = new SelectList(_context.Movie, "Id", "MovieName");
            return Page();
        }

        // To protect from overposting attacks, enable the specific properties you want to bind to, for
        // more details, see https://aka.ms/RazorPagesCRUD.
        public async Task<IActionResult> OnPostAsync()
        {
            if (!ModelState.IsValid)
            {
                return Page();
            }

            _context.Attach(Producer).State = EntityState.Modified;

            try
            {
                await _context.SaveChangesAsync();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!ProducerExists(Producer.Id))
                {
                    return NotFound();
                }
                else
                {
                    throw;
                }
            }

            return RedirectToPage("./Index");
        }

        private bool ProducerExists(int id)
        {
            return _context.Producer.Any(e => e.Id == id);
        }
    }
}
