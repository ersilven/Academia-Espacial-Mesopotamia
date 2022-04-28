using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

namespace AcaEspacial.Models
{
    public partial class AreaClase
    {
        public AreaClase()
        {
            AcademiaArea = new HashSet<AcademiaArea>();
            AlumnoArea = new HashSet<AlumnoArea>();
            MaestroArea = new HashSet<MaestroArea>();
        }

        [Key]
        public Guid IDArea { get; set; }
        [StringLength(50)]
        public string Nombre { get; set; } = null!;
        [StringLength(50)]
        public string? Turno { get; set; }
        [StringLength(50)]
        public string CodigoClase { get; set; } = null!;
        public Guid CreatedBy { get; set; }
        public DateTime CreatedOn { get; set; }
        public Guid? ModifiedBy { get; set; }
        public DateTime? ModifiedOn { get; set; }

        [InverseProperty("IDAreaNavigation")]
        public virtual ICollection<AcademiaArea> AcademiaArea { get; set; }
        [InverseProperty("IDAreaNavigation")]
        public virtual ICollection<AlumnoArea> AlumnoArea { get; set; }
        [InverseProperty("IDAreaNavigation")]
        public virtual ICollection<MaestroArea> MaestroArea { get; set; }
    }
}
