using Microsoft.EntityFrameworkCore;
using OLSoftwareSAS.Models;

namespace OLSoftwareSAS.Areas.Identity.Data
{
    public class ProyectosService : IProyectosService
    {
        ApplicationDBContext _context;
        public ProyectosService(ApplicationDBContext app)
        {
            _context = app;
        }
        public void Delete(int proyectoId)
        {
            throw new NotImplementedException();
        }

        public List<Proyectos> GetProyectos()
        {
            var proyectos = _context.Proyectos.FromSqlRaw("Extraer").ToList();
           
            return proyectos;
        }

        public void SaveOrUpdate(Proyectos proyectos)
        {
            throw new NotImplementedException();
        }
    }
}
