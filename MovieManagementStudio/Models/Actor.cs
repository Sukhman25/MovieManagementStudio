using Microsoft.AspNetCore.Authorization;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Threading.Tasks;

namespace MovieManagementStudio.Models
{ 
    
    public class Actor
    {
        public int Id { get; set; }


        [Required]
        [StringLength(50)]
        public string Name { get; set; }

        [Required]
        [StringLength(1)]
        public string Gender { get; set; }

        [Column(TypeName = "date")]
        public DateTime DOB { get; set; }

        [StringLength(500)]
        public string Bio { get; set; }

        public bool IsSuperstar { get; set; }
        public int MovieFk { get; set; }                    //Foreign key used
        [ForeignKey("MovieFk")]
        public Movie Movie { get; set; }
    }
}
