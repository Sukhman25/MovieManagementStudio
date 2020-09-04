using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using Microsoft.EntityFrameworkCore;
using MovieManagementStudio.Data;
using MovieManagementStudio.Models;

namespace MovieManagementStudio.Pages.ProducerPage
{
    
    public class IndexModel : PageModel
    {
        private readonly MovieManagementStudio.Data.MovieManagementStudioContext _context;

        public IndexModel(MovieManagementStudio.Data.MovieManagementStudioContext context)
        {
            _context = context;
        }

        public IList<Producer> Producer { get;set; }

        public async Task OnGetAsync()
        {
            Producer = await _context.Producer
                .Include(p => p.Movie).ToListAsync();
        }
    }
}
