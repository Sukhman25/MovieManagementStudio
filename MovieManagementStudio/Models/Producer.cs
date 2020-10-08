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
        public string Name { get; set; }            //Name of Producer

        [Required]
        [StringLength(1)]
        public string Sex { get; set; }             //Gender of Producer

        [Column(TypeName = "date")]
        public DateTime DOB { get; set; }           //Date Of Birth Of Produceer

        public string Bio { get; set; }             // Some Biography about producer

        public int MovieFk { get; set; }            //This is a foreign key
        [ForeignKey("MovieFk")]
        public Movie Movie { get; set; }
    }
}
