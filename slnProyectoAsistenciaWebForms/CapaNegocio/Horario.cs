using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using CapaDatos;


namespace CapaNegocio
{
    public class Horario
    {

        clsHorario D_objHorario = new clsHorario();
        public void ingresarHorario(string nombre, string apellido, string completo, string usuario,
            string materia, TimeSpan inicio, TimeSpan fin)
        {
            D_objHorario.D_ingresarHorario(nombre, apellido, completo, usuario, materia, inicio, fin);
        }

        public object consultarHorario()
        {
            var horario = D_objHorario.D_consultarHorario();

            return horario;
        }

    }
}
