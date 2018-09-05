using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CapaDatos
{
    public class clsUsuario
    {
        dbAsistenciaV2Entities db = new dbAsistenciaV2Entities();
        public void D_ingresarUsuario(string nombre, string apellido, string usuario,
            string pass, int tipo, string titulo)
        {
            tblUsuario e = new tblUsuario();
            e.NombreUsuario = nombre;
            e.ApellidoUsuario = apellido;
            e.UsernameUsuario = usuario;
            e.PasswordUsuario = pass;
            e.TipoUsuario = tipo;
            e.TituloUsuario = titulo;
            db.tblUsuario.Add(e);
            db.SaveChanges();

        }

        public object D_consultarUsuario()
        {
            //var estudiantes= db.tblEstudiante.ToList();

            var usuarios = from p in db.tblUsuario
                               //select p;
                           select new
                           {
                               p.Id_Usuario,
                               p.NombreUsuario,
                               p.ApellidoUsuario,
                               p.UsernameUsuario,
                               p.PasswordUsuario,
                               p.TipoUsuario,
                               p.TituloUsuario
                           };

            return usuarios.ToList();
        }

        public object D_consultaUsuarioDat(int idUser)
        {
            var user = (from p in db.tblUsuario
                        where (p.Id_Usuario == idUser)
                        select new
                        {
                            p.Id_Usuario,
                            p.NombreUsuario,
                            p.ApellidoUsuario,
                            p.UsernameUsuario,
                            p.PasswordUsuario,
                            p.TipoUsuario,
                            p.TituloUsuario
                        }).FirstOrDefault();

            return user;
        }

        public void D_modificarUsuario(string user, string nombre, string apellido, string user1, string pass, int tipo, string titulo)
        {
            tblUsuario e = db.tblUsuario.Find(user);
            e.NombreUsuario = nombre;
            e.ApellidoUsuario = apellido;
            e.UsernameUsuario = user1;
            e.PasswordUsuario = pass;
            e.TipoUsuario = tipo;
            e.TituloUsuario = titulo;
           
            db.SaveChanges();
        }
    }
}
