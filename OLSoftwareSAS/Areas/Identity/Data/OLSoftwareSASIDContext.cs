using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Identity.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore;
using OLSoftwareSAS.Areas.Identity.Data;

namespace OLSoftwareSASID.Data;

public class OLSoftwareSASIDContext : IdentityDbContext<ClientesApp>
{
    public OLSoftwareSASIDContext(DbContextOptions<OLSoftwareSASIDContext> options)
        : base(options)
    {
    }

    protected override void OnModelCreating(ModelBuilder builder)
    {
        base.OnModelCreating(builder);
        
    }
}
