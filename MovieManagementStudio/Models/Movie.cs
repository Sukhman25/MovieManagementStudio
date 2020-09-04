using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace MovieManagementStudio.Models
{
    public class Movie
    {
        public int Id { get; set; }
        public string MovieName { get; set; }
        [Required]
        [StringLength(50)]
        public string Plot { get; set; }
        public int ReleaseYear { get; set; }
        public bool IsBlockBuster { get; set; }             //Bool is added
        public DateTime CreatedDt { get; set; }                // Date time is also added
    }
}
