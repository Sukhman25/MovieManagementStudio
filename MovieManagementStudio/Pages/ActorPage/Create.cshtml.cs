using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using Microsoft.AspNetCore.Mvc.Rendering;
using MovieManagementStudio.Data;
using MovieManagementStudio.Models;

namespace MovieManagementStudio.Pages.ActorPage
{
    public class CreateModel : PageModel
    {
        private readonly MovieManagementStudio.Data.MovieManagementStudioContext _context;

        public CreateModel(MovieManagementStudio.Data.MovieManagementStudioContext context)
        {
            _context = context;
        }

        public IActionResult OnGet()
        {
        ViewData["MovieFk"] = new SelectList(_context.Set<Movie>(), "Id", "MovieName");
            return Page();
        }

        [BindProperty]
        public Actor Actor { get; set; }

        // To protect from overposting attacks, enable the specific properties you want to bind to, for
        // more details, see https://aka.ms/RazorPagesCRUD.
        public async Task<IActionResult> OnPostAsync()
        {
            if (!ModelState.IsValid)
            {
                return Page();
            }

            _context.Actor.Add(Actor);
            await _context.SaveChangesAsync();

            return RedirectToPage("./Index");
        }
    }
}
