using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using CapaDatos;


namespace CapaNegocio
{
    public class Rela_AlumMater
    {
        clsRela_AlumMater D_objRelaAM = new clsRela_AlumMater();

        public object consultarRelaAM()
        {
            var relaAM = D_objRelaAM.D_consultarRelaAM();
            return relaAM;

        }

        public void ingresarRelaAM(string nombre, string apellido, 
            string user, string completo, string materia)
        {
            D_objRelaAM.D_ingresarRelaAM(nombre, apellido, user, completo,
                materia);
        }

       
    }
}
