using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

namespace AcaEspacial.Models
{
    public partial class UsuarioPass
    {
        [Key]
        public Guid IDUsuarioPass { get; set; }
        public Guid IDUsuario { get; set; }
        public string Pass { get; set; } = null!;
        public DateTime CreatedOn { get; set; }
        public Guid CreatedBy { get; set; }
        public DateTime? ModifiedOn { get; set; }
        public Guid? ModifiedBy { get; set; }

        [ForeignKey("IDUsuario")]
        [InverseProperty("UsuarioPass")]
        public virtual Usuario IDUsuarioNavigation { get; set; } = null!;
    }
}
