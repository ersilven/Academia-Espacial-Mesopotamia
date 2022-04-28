using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

namespace AcaEspacial.Models
{
    public partial class Academias
    {
        public Academias()
        {
            AcademiaArea = new HashSet<AcademiaArea>();
            MaestroAcademia = new HashSet<MaestroAcademia>();
        }

        [Key]
        public Guid IDAcademia { get; set; }
        [StringLength(50)]
        public string Nombre { get; set; } = null!;
        [StringLength(50)]
        public string? Correo { get; set; }
        [StringLength(50)]
        public string? NumeroTlfono { get; set; }
        [StringLength(50)]
        public string CodigoAcademia { get; set; } = null!;
        public Guid CreatedBy { get; set; }
        public DateTime CreatedOn { get; set; }
        public Guid? ModifiedBy { get; set; }
        public DateTime? ModifiedOn { get; set; }

        [InverseProperty("IDAcademiaNavigation")]
        public virtual ICollection<AcademiaArea> AcademiaArea { get; set; }
        [InverseProperty("IDAcademiaNavigation")]
        public virtual ICollection<MaestroAcademia> MaestroAcademia { get; set; }
    }
}
