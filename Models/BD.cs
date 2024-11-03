using System.Data.SqlClient;
using Dapper;

namespace Crunchy.Models;

static class BD{
    private static string _connectionString="Server=localhost; DataBase=CrunchyBD; Trusted_Connection=True;";

    public static void AgregarUsuario(string UserName, string Email, string Contraseña){
        string sqlInsert="Insert into Usuario (UserName, Email, Contraseña) values (@pUserName, @pEmail, @pContraseña)";
        using (SqlConnection db=new SqlConnection(_connectionString)){
            db.Execute(sqlInsert, new{pUserName=UserName, pEmail=Email, pContraseña=Contraseña});
        }
    }

    public static void InicioSesion(string UserOEmail, string Contraseña){
    }

    public static void ActualizarContraseña(string UserOEmail, string Contraseña){
        
    }
}