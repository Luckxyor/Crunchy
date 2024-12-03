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
            string sql="EXEC sp_FavoritosRecetas @pIdUsuario;";
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

    public static List<Receta> ObtenerResultados(string busqueda, int? idUsuario){
        List<Receta> ListaBusqueda = new List<Receta>();
        using(SqlConnection db = new SqlConnection(_connectionString)){
            string sql="EXEC sp_ObtenerResultados @pBusqueda, @pIdUsuario;";
            ListaBusqueda = db.Query<Receta>(sql, new {pBusqueda=("%"+busqueda+"%"), pIdUsuario=idUsuario}).ToList();
        }
        return ListaBusqueda;
    }

    public static List<Dificultad> ListarDificutades(){
        List<Dificultad> ListaDificultad = new List<Dificultad>();
        using(SqlConnection db = new SqlConnection(_connectionString)){
            string sql="Select * from Dificultad";
            ListaDificultad = db.Query<Dificultad>(sql).ToList();
        }
        return ListaDificultad;
    }

    public static List<Pais> ListarPaises(){
        List<Pais> ListaPaises = new List<Pais>();
        using(SqlConnection db = new SqlConnection(_connectionString)){
            string sql="Select * from Paises";
            ListaPaises = db.Query<Pais>(sql).ToList();
        }
        return ListaPaises;
    }
    public static void SubirReceta(string FotoReceta, string NombreReceta, string Descripcion, int Tiempo, int IdDificultad, int IdPais, int IdCategoria, string Ingredientes, string Pasos){
        using(SqlConnection db = new SqlConnection(_connectionString)){
            string sqlInsert="Insert into Receta(Foto, NombreReceta, Descripcion, Tiempo, IdDificultad, IdPais, IdCategoria, Ingredientes, Pasos) values (@pFotoReceta, @pNombreReceta, @pDescripcion, @pTiempo, @pIdDificultad, @pIdPais, @pIdCategoria, @pIngredientes, @pPasos)";
            db.Execute(sqlInsert, new{pFotoReceta=FotoReceta, pNombreReceta=NombreReceta, pDescripcion=Descripcion, pTiempo=Tiempo, pIdDificultad=IdDificultad, pIdPais=IdPais, pIdCategoria=IdCategoria, pIngredientes=Ingredientes, pPasos=Pasos});
        }
    }
}