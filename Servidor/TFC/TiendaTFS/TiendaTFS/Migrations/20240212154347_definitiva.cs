using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace TiendaTFS.Migrations
{
    public partial class definitiva : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropTable(
                name: "Escaparate");
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.CreateTable(
                name: "Escaparate",
                columns: table => new
                {
                    Id = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    CategoriaId = table.Column<int>(type: "int", nullable: false),
                    ProductoId = table.Column<int>(type: "int", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Escaparate", x => x.Id);
                    table.ForeignKey(
                        name: "FK_Escaparate_Categorias_CategoriaId",
                        column: x => x.CategoriaId,
                        principalTable: "Categorias",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Restrict);
                    table.ForeignKey(
                        name: "FK_Escaparate_Productos_ProductoId",
                        column: x => x.ProductoId,
                        principalTable: "Productos",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Restrict);
                });

            migrationBuilder.CreateIndex(
                name: "IX_Escaparate_CategoriaId",
                table: "Escaparate",
                column: "CategoriaId");

            migrationBuilder.CreateIndex(
                name: "IX_Escaparate_ProductoId",
                table: "Escaparate",
                column: "ProductoId");
        }
    }
}
