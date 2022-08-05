using Microsoft.AspNetCore.Mvc;
using Microsoft.Data.SqlClient;
using OLSoftwareSAS.Areas.Identity.Data;
using OLSoftwareSAS.Models;
using OLSoftwareSAS.Models.ViewModels;
using System.Linq.Dynamic;
namespace OLSoftwareSAS.Controllers
{
    public class ProyectosController : Controller
    {
        IProyectosService _IP = null;

       

       public ProyectosController(IProyectosService iP)
        {
            _IP = iP;
        }

        public IActionResult Index()
        {
            return View();
        }
      
        public List<Proyectos> GetProyectos()
        {
            return _IP.GetProyectos();
        }

        [HttpPost]
        public IActionResult JsonProyectos()
        {
            var data = GetProyectos();
            foreach (var buscador in data)
            {
                buscador.Pro_Lenguajes = "<button class=\"btn btn-primary btn-sm btnEditEst\" onclick=\"fntEditPro(" + buscador.Pro_ID + ")\" title=\"Editar\"><i class=\"fas fa-pencil-alt\" aria-hidden=\"true\"></i></button> ";
                buscador.Pro_Lenguajes += "<button class=\"btn btn-danger btn-sm btnElimEst\" onclick=\"fntDelPro(" + buscador.Pro_ID + ")\" title=\"Eliminar\"><i class=\"far fa-trash-alt\" aria-hidden=\"true\"></i></button> ";
            }

            return new JsonResult(new {data = data});
        }
        [HttpDelete]
        public IActionResult DeleteProyecto(long id)
        {
            Proyectos proyecto;
            using (ApplicationDBContext db = new ApplicationDBContext())
            {
                proyecto = db.Proyectos.Where(d => d.Pro_ID == id).FirstOrDefault();
                db.Proyectos.Remove(proyecto);
                db.SaveChanges();
                return new JsonResult(new { Success = true, msg = "Eliminado con exito" });
            }
            return new JsonResult(new {Success = false, msg = "No se pudo procesar" });
        }
    }
}
