using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Threading.Tasks;

namespace MovieManagementStudio.Models
{
    public class Producer
    {
        public int Id { get; set; }


        [Required]                                      //to make necessary for the fields
        [StringLength(50)]
        public string Name { get; set; }

        [Required]
        [StringLength(1)]
        public string Sex { get; set; }

        [Column(TypeName = "date")]
        public DateTime DOB { get; set; }

        public string Bio { get; set; }

        public int MovieFk { get; set; }
        [ForeignKey("MovieFk")]
        public Movie Movie { get; set; }
    }
}
