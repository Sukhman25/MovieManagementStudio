using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using Microsoft.EntityFrameworkCore;
using MovieManagementStudio.Data;
using MovieManagementStudio.Models;

namespace MovieManagementStudio.Pages.ActorPage
{
    public class DetailsModel : PageModel
    {
        private readonly MovieManagementStudio.Data.MovieManagementStudioContext _context;

        public DetailsModel(MovieManagementStudio.Data.MovieManagementStudioContext context)
        {
            _context = context;
        }

        public Actor Actor { get; set; }

        public async Task<IActionResult> OnGetAsync(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            Actor = await _context.Actor
                .Include(a => a.Movie).FirstOrDefaultAsync(m => m.Id == id);

            if (Actor == null)
            {
                return NotFound();
            }
            return Page();
        }
    }
}
