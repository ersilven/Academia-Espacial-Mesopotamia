using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

namespace AcaEspacial.Models
{
    public partial class AcademiaArea
    {
        [Key]
        public Guid IDAcademiaArea { get; set; }
        public Guid IDAcademia { get; set; }
        public Guid IDArea { get; set; }
        public DateTime CreatedOn { get; set; }
        public Guid CreatedBy { get; set; }
        public DateTime? ModifiedOn { get; set; }
        public Guid? ModifiedBy { get; set; }

        [ForeignKey("IDAcademia")]
        [InverseProperty("AcademiaArea")]
        public virtual Academias IDAcademiaNavigation { get; set; } = null!;
        [ForeignKey("IDArea")]
        [InverseProperty("AcademiaArea")]
        public virtual AreaClase IDAreaNavigation { get; set; } = null!;
    }
}
