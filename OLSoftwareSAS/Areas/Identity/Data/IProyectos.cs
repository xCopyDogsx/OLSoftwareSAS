using OLSoftwareSAS.Models;

namespace OLSoftwareSAS.Areas.Identity.Data
{
    public interface IProyectosService
    {
        List<Proyectos> GetProyectos();
        void SaveOrUpdate(Proyectos proyectos);
        void Delete(int proyectoId);
    }
}
