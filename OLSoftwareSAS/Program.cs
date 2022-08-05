using Microsoft.AspNetCore.Identity;
using Microsoft.EntityFrameworkCore;

using OLSoftwareSAS.Areas.Identity.Data;
using OLSoftwareSASID.Data;

var builder = WebApplication.CreateBuilder(args);
var connectionString = builder.Configuration.GetConnectionString("OLSoftwareSASIDContextConnection") ?? throw new InvalidOperationException("Connection string 'OLSoftwareSASIDContextConnection' not found.");

builder.Services.AddDbContext<OLSoftwareSASIDContext>(options =>
    options.UseSqlServer(connectionString));

builder.Services.AddDefaultIdentity<ClientesApp>(options => options.SignIn.RequireConfirmedAccount = true)
    .AddEntityFrameworkStores<OLSoftwareSASIDContext>();

// Add services to the container.
builder.Services.AddControllersWithViews();

builder.Services.Configure<IdentityOptions>(options =>
{
    options.User.RequireUniqueEmail = true;
    options.Password.RequireLowercase = false;
    options.Password.RequireUppercase = false;
    options.Password.RequireNonAlphanumeric = false;
    options.Password.RequiredUniqueChars = 0;

});


builder.Services.AddDbContext<ApplicationDBContext>(options =>
{
    options.UseSqlServer(builder.Configuration.GetConnectionString("OLSoftwareSASIDContextConnection"));
    
});
builder.Services.AddScoped<IProyectosService, ProyectosService>();
builder.Services.AddSingleton<IHttpContextAccessor, HttpContextAccessor>();
var app = builder.Build();

// Configure the HTTP request pipeline.
if (!app.Environment.IsDevelopment())
{
    app.UseExceptionHandler("/Home/Error");
    // The default HSTS value is 30 days. You may want to change this for production scenarios, see https://aka.ms/aspnetcore-hsts.
    app.UseHsts();
}

app.UseHttpsRedirection();
app.UseStaticFiles();

app.UseRouting();
app.UseAuthentication();;
app.UseAuthentication();;

app.UseAuthorization();

app.MapControllerRoute(
    name: "default",
    pattern: "{controller=Home}/{action=Index}/{id?}");
app.MapRazorPages();

app.Run();
