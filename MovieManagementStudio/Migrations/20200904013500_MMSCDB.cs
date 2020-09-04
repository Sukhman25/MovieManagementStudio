using System;
using Microsoft.EntityFrameworkCore.Migrations;

namespace MovieManagementStudio.Migrations
{
    public partial class MMSCDB : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.CreateTable(
                name: "Movie",
                columns: table => new
                {
                    Id = table.Column<int>(nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    MovieName = table.Column<string>(nullable: true),
                    Plot = table.Column<string>(maxLength: 50, nullable: false),
                    ReleaseYear = table.Column<int>(nullable: false),
                    IsBlockBuster = table.Column<bool>(nullable: false),
                    CreatedDt = table.Column<DateTime>(nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Movie", x => x.Id);
                });

            migrationBuilder.CreateTable(
                name: "Actor",
                columns: table => new
                {
                    Id = table.Column<int>(nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    Name = table.Column<string>(maxLength: 50, nullable: false),
                    Gender = table.Column<string>(maxLength: 1, nullable: false),
                    DOB = table.Column<DateTime>(type: "date", nullable: false),
                    Bio = table.Column<string>(maxLength: 500, nullable: true),
                    IsSuperstar = table.Column<bool>(nullable: false),
                    MovieFk = table.Column<int>(nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Actor", x => x.Id);
                    table.ForeignKey(
                        name: "FK_Actor_Movie_MovieFk",
                        column: x => x.MovieFk,
                        principalTable: "Movie",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.CreateTable(
                name: "Producer",
                columns: table => new
                {
                    Id = table.Column<int>(nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    Name = table.Column<string>(maxLength: 50, nullable: false),
                    Sex = table.Column<string>(maxLength: 1, nullable: false),
                    DOB = table.Column<DateTime>(type: "date", nullable: false),
                    Bio = table.Column<string>(nullable: true),
                    MovieFk = table.Column<int>(nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Producer", x => x.Id);
                    table.ForeignKey(
                        name: "FK_Producer_Movie_MovieFk",
                        column: x => x.MovieFk,
                        principalTable: "Movie",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.CreateIndex(
                name: "IX_Actor_MovieFk",
                table: "Actor",
                column: "MovieFk");

            migrationBuilder.CreateIndex(
                name: "IX_Producer_MovieFk",
                table: "Producer",
                column: "MovieFk");
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropTable(
                name: "Actor");

            migrationBuilder.DropTable(
                name: "Producer");

            migrationBuilder.DropTable(
                name: "Movie");
        }
    }
}
