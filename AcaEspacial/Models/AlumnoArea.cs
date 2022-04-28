using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

namespace AcaEspacial.Models
{
    public partial class AlumnoArea
    {
        [Key]
        public Guid IDAlumnoArea { get; set; }
        public Guid IDUsuario { get; set; }
        public Guid IDArea { get; set; }
        public DateTime CreatedOn { get; set; }
        public Guid CreatedBy { get; set; }
        public DateTime? ModifiedOn { get; set; }
        public Guid? ModifiedBy { get; set; }

        [ForeignKey("IDArea")]
        [InverseProperty("AlumnoArea")]
        public virtual AreaClase IDAreaNavigation { get; set; } = null!;
        [ForeignKey("IDUsuario")]
        [InverseProperty("AlumnoArea")]
        public virtual Usuario IDUsuarioNavigation { get; set; } = null!;
    }
}
