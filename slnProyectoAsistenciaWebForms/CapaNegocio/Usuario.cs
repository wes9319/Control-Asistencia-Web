using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using CapaDatos;

namespace CapaNegocio
{
    public class Usuario
    {
        clsUsuario D_objUsuario = new clsUsuario();
        public void ingresarUsuario(string nombre, string apellido, string usuario,
            string pass, int tipo, string titulo)
        {
            D_objUsuario.D_ingresarUsuario(nombre, apellido, usuario,
             pass, tipo, titulo);
        }

        public object consultarUsuario()
        {
            var usuarios = D_objUsuario.D_consultarUsuario();

            return usuarios;
        }

        public void modificarUsuario(string user, string nombre, string apellido, string user1, string pass, int tipo, string titulo)
        {
            D_objUsuario.D_modificarUsuario( user,  nombre,  apellido,  user1,  pass,  tipo,  titulo);
        }

        public object consultarUsuarioDat(int idUser)
        {
            var du =D_objUsuario.D_consultaUsuarioDat(idUser);
            return du;
        }
    }
}
