using System.ComponentModel.DataAnnotations;

namespace OLSoftwareSAS.Models
{
    public class Clientes
    {
        [Key]
        public long Cli_ID { get; set; }

        [Required]
        [DataType(DataType.Text)]
        [Display(Name = "Nombres")]
        public string Cli_Nombres { get; set; }

        [Required]
        [DataType(DataType.Text)]
        [Display(Name = "Apellidos")]
        public string Cli_Apellidos { get; set; }


        [Required]
        [EmailAddress]
        [Display(Name = "Email")]
        public string Cli_Email { get; set; }

        [Required]
        [DataType(DataType.PhoneNumber)]
        [Display(Name = "Telefono")]
        public string Cli_Telefono { get; set; }
        
        [Required]
        [DataType(DataType.Text)]
        [Display(Name = "Documento de identidad")]
        public string Cli_Documento { get; set; }
    }
}
