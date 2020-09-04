using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.EntityFrameworkCore;
using MovieManagementStudio.Models;

namespace MovieManagementStudio.Data
{
    public class MovieManagementStudioContext : DbContext
    {
        public MovieManagementStudioContext (DbContextOptions<MovieManagementStudioContext> options)
            : base(options)
        {
        }

        public DbSet<MovieManagementStudio.Models.Actor> Actor { get; set; }

        public DbSet<MovieManagementStudio.Models.Movie> Movie { get; set; }

        public DbSet<MovieManagementStudio.Models.Producer> Producer { get; set; }
    }
}
