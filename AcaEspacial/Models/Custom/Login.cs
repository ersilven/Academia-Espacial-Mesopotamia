using System.ComponentModel.DataAnnotations;

namespace AcaEspacial.Models.Custom
{
    public class Login
    {
        [Required]
        [Display(Name ="Usuario")]
        public string Usuario { get; set; }

        [Required]
        [DataType(DataType.Password)]
        [Display(Name ="Contraseña")]
        public string Password { get; set; }
    }
}
