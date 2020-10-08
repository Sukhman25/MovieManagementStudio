using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace MovieManagementStudio.Models
{
    public class Movie
    {
        public int Id { get; set; }             //Primary Key
        public string MovieName { get; set; }       //Name of a movie
        [Required]
        [StringLength(50)]
        public string Plot { get; set; }               //Some plot of a movie
        public int ReleaseYear { get; set; }            // Release Year of a movie
        public bool IsBlockBuster { get; set; }             //Bool is added
        public DateTime CreatedDt { get; set; }                // Date time is also added
    }
}
