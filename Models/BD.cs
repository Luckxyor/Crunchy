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
            string sql="EXEC ObtenerRecetasFavUsuario @pIdUsuario;";
            ListaRecetasFav = db.Query<Receta>(sql, new{pIdUsuario=IdUsuario}).ToList();
        }
        return ListaRecetasFav;
    }

}