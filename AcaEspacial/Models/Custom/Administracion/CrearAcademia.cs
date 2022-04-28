using System.ComponentModel.DataAnnotations;

namespace AcaEspacial.Models.Custom.Administracion
{
    public class CrearAcademia
    {
        [Required(ErrorMessage = "Debe ingresar el nombre de la academia")]
        public string? Nombre { get; set; }
        [Required(ErrorMessage = "Debe ingresar el correo de la academia")]
        public string? Correo { get; set; }
        [Required(ErrorMessage = "Debe ingresar el número de telefono de la academia")]
        public string? NumeroTelefono { get; set; }
        [Required(ErrorMessage = "Debe ingresar el código de la academia")]
        public string? CodigoAcademia { get; set; }
    }
}
