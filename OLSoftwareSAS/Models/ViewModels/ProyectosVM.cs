namespace OLSoftwareSAS.Models.ViewModels
{
    public class ProyectosVM
    {
        public long ID { get; set; }
        public string Nombre { get; set; }
        public string Cliente { get; set; }
        public string Telefono_cliente { get; set; }
        public string Fecha_Inicio { get; set; }
        public string Fecha_Fin { get; set; }
        public int Horas { get; set; }
        public double Precio { get; set; }
        public string Estado { get; set; }
        public string Acciones { get; set; }
    }
}
