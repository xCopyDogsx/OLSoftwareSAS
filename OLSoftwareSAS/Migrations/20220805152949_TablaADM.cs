using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace OLSoftwareSAS.Migrations
{
    public partial class TablaADM : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.CreateTable(
                name: "Administrador",
                columns: table => new
                {
                    Adm_ID = table.Column<long>(type: "bigint", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    Adm_Nombres = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    Adm_Apellidos = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    Adm_Email = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    Adm_Password = table.Column<string>(type: "nvarchar(100)", maxLength: 100, nullable: false),
                    ConfirmPassword = table.Column<string>(type: "nvarchar(max)", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Administrador", x => x.Adm_ID);
                });
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropTable(
                name: "Administrador");
        }
    }
}
