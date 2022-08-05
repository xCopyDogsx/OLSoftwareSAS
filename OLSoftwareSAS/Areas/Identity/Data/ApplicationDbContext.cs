using Microsoft.EntityFrameworkCore;
using OLSoftwareSAS.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;


namespace OLSoftwareSAS.Areas.Identity.Data
{
    public class ApplicationDBContext : DbContext
    {
        public ApplicationDBContext() 
        {
        }
        

        public ApplicationDBContext(DbContextOptions<ApplicationDBContext> options) : base(options) { }
        public DbSet<Clientes> Clientes { get; set; }
        public DbSet<Proyectos> Proyectos { get; set; }
       
    }
}
