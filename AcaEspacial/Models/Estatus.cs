using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

namespace AcaEspacial.Models
{
    public partial class Estatus
    {
        public Estatus()
        {
            UsuarioEstatus = new HashSet<UsuarioEstatus>();
        }

        [Key]
        public Guid IDEstatus { get; set; }
        public string Nombre { get; set; } = null!;
        public long Codigo { get; set; }
        public bool IsActive { get; set; }
        public DateTime CreatedOn { get; set; }
        public Guid CreatedBy { get; set; }
        public DateTime? ModifiedOn { get; set; }
        public Guid? ModifiedBy { get; set; }

        [InverseProperty("IDEstatusNavigation")]
        public virtual ICollection<UsuarioEstatus> UsuarioEstatus { get; set; }
    }
}
