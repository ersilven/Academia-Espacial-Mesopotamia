using System.ComponentModel.DataAnnotations;

namespace AcaEspacial.Models.Administracion.Custom
{
    public class CrearAlumno
    {
        [Required(ErrorMessage = "Debe ingresar el nombre")]
        public string? Nombre { get; set; }
        [Required(ErrorMessage = "Debe ingresar el apellido")]
        public string? Apellido { get; set; }

        [Required(ErrorMessage = "Debe ingresar el correo corporativo")]
        public string? Email { get; set; }

        [Required(ErrorMessage = "Debe ingresar un nombre de usuario")]
        public string? UserName { get; set; }

        [Required(ErrorMessage = "Debe ingresar una contraseña para el usuario")]
        public string? Constraseña { get; set; }

    }
}
