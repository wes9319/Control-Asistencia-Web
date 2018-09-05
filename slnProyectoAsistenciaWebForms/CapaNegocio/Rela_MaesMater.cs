using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using CapaDatos;


namespace CapaNegocio
{
    public class Rela_MaesMater
    {
        clsRela_MaesMater D_objRelaMM = new clsRela_MaesMater();

        public object consultarRelaMM()
        {
            var relaMM = D_objRelaMM.D_consultarRelaMM();

            return relaMM;
        }

        public void ingresarRelaMM(string nombre, string apellido, string usuario,
            string completo, string materia)
        {
            D_objRelaMM.D_ingresarRelaMM(nombre, apellido, usuario,
             completo, materia);
        }

        
    }
}
