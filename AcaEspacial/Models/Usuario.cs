using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

namespace AcaEspacial.Models
{
    public partial class Usuario
    {
        public Usuario()
        {
            AlumnoArea = new HashSet<AlumnoArea>();
            MaestroAcademia = new HashSet<MaestroAcademia>();
            MaestroArea = new HashSet<MaestroArea>();
            UsuarioEstatus = new HashSet<UsuarioEstatus>();
            UsuarioPass = new HashSet<UsuarioPass>();
            UsuarioRoles = new HashSet<UsuarioRoles>();
        }

        [Key]
        public Guid IDUsuario { get; set; }
        [StringLength(50)]
        public string Correo { get; set; } = null!;
        [StringLength(50)]
        public string Username { get; set; } = null!;
        [StringLength(50)]
        public string Nombre { get; set; } = null!;
        [StringLength(50)]
        public string Apellido { get; set; } = null!;
        [StringLength(50)]
        public string Edad { get; set; } = null!;
        [StringLength(50)]
        public string NumeroTelefono { get; set; } = null!;
        public Guid CreatedBy { get; set; }
        public DateTime CreatedOn { get; set; }
        public Guid? ModifiedBy { get; set; }
        public DateTime? ModifiedOn { get; set; }

        [InverseProperty("IDUsuarioNavigation")]
        public virtual ICollection<AlumnoArea> AlumnoArea { get; set; }
        [InverseProperty("IDUsuarioNavigation")]
        public virtual ICollection<MaestroAcademia> MaestroAcademia { get; set; }
        [InverseProperty("IDUsuarioNavigation")]
        public virtual ICollection<MaestroArea> MaestroArea { get; set; }
        [InverseProperty("IDUsuarioNavigation")]
        public virtual ICollection<UsuarioEstatus> UsuarioEstatus { get; set; }
        [InverseProperty("IDUsuarioNavigation")]
        public virtual ICollection<UsuarioPass> UsuarioPass { get; set; }
        [InverseProperty("IDUsuarioNavigation")]
        public virtual ICollection<UsuarioRoles> UsuarioRoles { get; set; }
    }
}
