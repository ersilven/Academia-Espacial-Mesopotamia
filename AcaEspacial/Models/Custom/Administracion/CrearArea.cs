using System.ComponentModel.DataAnnotations;

namespace AcaEspacial.Models.Custom.Administracion
{
    public class CrearArea
    {
        [Required(ErrorMessage = "Debe ingresar el nombre")]
        public string? Nombre { get; set; }
        [Required(ErrorMessage = "Debe ingresar el turno de la clase")]
        public string? Turno { get; set; }

        [Required(ErrorMessage = "Debe ingresar el código de la clase")]
        public string? CodigoClase { get; set; }

    }
}
