using System.ComponentModel.DataAnnotations;

namespace OLSoftwareSAS.Models
{
    public class Proyectos
    {
        [Key]
        public long Pro_ID { get; set; }

        [Required]
        [DataType(DataType.Text)]
        [Display(Name = "Nombre")]
        public string Pro_Nombre { get; set; }

        [Required]
        [DataType(DataType.Date)]
        [Display(Name = "Fecha inicio")]
        public DateTime Pro_FecIni { get; set; }


        [Required]
        [DataType(DataType.Date)]
        [Display(Name = "Fecha fin")]
        public DateTime Pro_FecFin { get; set; }

        [Required]
        [Display(Name = "Precio")]
        public decimal Pro_Precio { get; set; }

        [Required]
        [DataType(DataType.Text)]
        [Display(Name = "Estado")]
        public string Pro_Estado { get; set; }
        [Required]
        [DataType(DataType.Text)]
        [Display(Name = "Lenguajes")]
        public string Pro_Lenguajes { get; set; }
        [Required]
        [Display(Name = "Horas")]
        public int Pro_Horas { get; set; }

        [Required]
        [DataType(DataType.Text)]
        [Display(Name = "Nivel")]
        public string Pro_Nivel { get; set; }
        [Required]
        [Display(Name = "Cliente")]
        public long Cli_ID { get; set; }
        [Required]
        [Display(Name = "Cliente")]
        public string Nombres { get; set; }
    }
}
