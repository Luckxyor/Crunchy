using System.Data.SqlClient;
using Dapper;

namespace Crunchy.Models;

static class BD{
    private static string _connectionString="Server=localhost; DataBase=CrunchyBD; Trusted_Connection=True;";

    public static void AgregarUsuario(string Username, string Email, string Contraseña){
        string sqlInsert="Insert into Usuarios (Username, Email, Contraseña) values (@pUsername, @pEmail, @pContraseña)";
        using (SqlConnection db=new SqlConnection(_connectionString)){
            db.Execute(sqlInsert, new{pUsername=Username, pEmail=Email, pContraseña=Contraseña});
        }
    }

    public static Usuario InicioSesion(string userOEmail, string contraseña){
        Usuario usuario=null;
        using(SqlConnection db=new SqlConnection(_connectionString)){
            string sql= "Select * from Usuarios where (Username=@pUserOEmail or Email=@pUserOEmail) and Contraseña=@pContraseña";
            usuario=db.QueryFirstOrDefault<Usuario>(sql, new{pUserOEmail=userOEmail, pContraseña=contraseña});
        }
        return usuario;
    }

    public static void ActualizarContraseña(string UserOEmail, string Contraseña){
        
    }

    public static List<Categoria> ListarCategorias(){
        List<Categoria> ListaCategorias = new List<Categoria>();
        using(SqlConnection db = new SqlConnection(_connectionString)){
            string sql="Select * from Categorias";
            ListaCategorias = db.Query<Categoria>(sql).ToList();
        }
        return ListaCategorias;
    }

    public static List<Receta> ListarRecetasFav(int IdUsuario){
        List<Receta> ListaRecetasFav = new List<Receta>();
        using(SqlConnection db = new SqlConnection(_connectionString)){
            string sql="Select Receta.IdReceta, NombreReceta, cast(Receta.Foto as varchar(max)) as Foto, avg(Estrellas) as Calificacion, Descripcion, cast(Paises.Foto as varchar(max)) as FotoPais, Diminutivo as DiminutivoPais, Tiempo, NombreDificultad as Dificultad from Receta inner join Dificultad on Dificultad.IdDificultad=Receta.IdDificultad inner join Paises on Paises.IdPais=Receta.IdPais inner join Review on Review.IdReceta=Receta.IdReceta inner join Favoritos on Favoritos.IdReceta=Receta.IdReceta where Favoritos.IdUsuario=@pIdUsuario group by Receta.IdReceta, NombreReceta, cast(Receta.Foto as varchar(max)), Descripcion,cast(Paises.Foto as varchar(max)), Diminutivo, Tiempo, NombreDificultad";
            ListaRecetasFav = db.Query<Receta>(sql, new{pIdUsuario=IdUsuario}).ToList();
        }
        return ListaRecetasFav;
    }

    public static void AgregarFavorito(int IdUsuario, int IdReceta)
    {
        string sqlInsert="Insert into Favoritos (IdUsuario, IdReceta) values (@pIdUsuario, @pIdReceta)";
        using (SqlConnection db=new SqlConnection(_connectionString)){
            db.Execute(sqlInsert, new{pIdUsuario=IdUsuario, pIdReceta=IdReceta});
        }
    }

    public static void SacarFavorito(int IdUsuario, int IdReceta)
    {
        string sqlDelete="Delete from Favoritos where IdUsuario=@pIdUsuario and IdReceta=@pIdReceta";
        using (SqlConnection db=new SqlConnection(_connectionString)){
            db.Execute(sqlDelete, new{pIdUsuario=IdUsuario, pIdReceta=IdReceta});
        }
    }

    public static List<Receta> ObtenerResultados(string busqueda){
        List<Receta> ListaBusqueda = new List<Receta>();
        using(SqlConnection db = new SqlConnection(_connectionString)){
            string sql="Select Receta.IdReceta, NombreReceta, cast(Receta.Foto as varchar(max)) as Foto, avg(Estrellas) as Calificacion, Descripcion, cast(Paises.Foto as varchar(max)) as FotoPais, Diminutivo as DiminutivoPais, Tiempo, NombreDificultad as Dificultad from Receta inner join Dificultad on Dificultad.IdDificultad=Receta.IdDificultad inner join Paises on Paises.IdPais=Receta.IdPais inner join Review on Review.IdReceta=Receta.IdReceta where NombreReceta like @pBusqueda group by Receta.IdReceta, NombreReceta, cast(Receta.Foto as varchar(max)), Descripcion, cast(Paises.Foto as varchar(max)), Diminutivo, Tiempo, NombreDificultad";
            ListaBusqueda = db.Query<Receta>(sql, new{pBusqueda="%"+busqueda+"%"}).ToList();
        }
        return ListaBusqueda;
    }

}