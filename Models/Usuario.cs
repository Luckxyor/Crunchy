using System.ComponentModel.DataAnnotations;

namespace Crunchy.Models
{
    public class Usuario
    {
        [Key]
        public int IdUsuario {get; set;}
        public string Email {get; set;}
        public string Contraseña {get; set;}
        public string Username {get; set;}
        public string Foto {get; set;}
        public string FotoHeader {get; set;}
    }
}
