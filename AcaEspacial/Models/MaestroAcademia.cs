using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

namespace AcaEspacial.Models
{
    public partial class MaestroAcademia
    {
        [Key]
        public Guid IDMaestroAcademia { get; set; }
        public Guid IDAcademia { get; set; }
        public Guid IDUsuario { get; set; }
        public DateTime CreatedOn { get; set; }
        public Guid CreatedBy { get; set; }
        public DateTime? ModifiedOn { get; set; }
        public Guid? ModifiedBy { get; set; }

        [ForeignKey("IDAcademia")]
        [InverseProperty("MaestroAcademia")]
        public virtual Academias IDAcademiaNavigation { get; set; } = null!;
        [ForeignKey("IDUsuario")]
        [InverseProperty("MaestroAcademia")]
        public virtual Usuario IDUsuarioNavigation { get; set; } = null!;
    }
}
