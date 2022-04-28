using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

namespace AcaEspacial.Models
{
    public partial class Roles
    {
        public Roles()
        {
            UsuarioRoles = new HashSet<UsuarioRoles>();
        }

        [Key]
        public Guid IDRol { get; set; }
        public string Nombre { get; set; } = null!;
        public bool IsActive { get; set; }
        public DateTime CreatedOn { get; set; }
        public Guid CreatedBy { get; set; }
        public DateTime? ModifiedOn { get; set; }
        public Guid? ModifiedBy { get; set; }

        [InverseProperty("IDRolNavigation")]
        public virtual ICollection<UsuarioRoles> UsuarioRoles { get; set; }
    }
}
