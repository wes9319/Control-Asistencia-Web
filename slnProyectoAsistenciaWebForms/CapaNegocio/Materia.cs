using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using CapaDatos;

namespace CapaNegocio
{
    public class Materia
    {
        clsMateria D_objMateria = new clsMateria();
        public void ingresarMateria(string nombre, string codigo, string sala)
        {
            D_objMateria.D_ingresarMateria(nombre, codigo, sala);
        }

        public object consultarMateria()
        {
            var materia = D_objMateria.D_consultarMateria();

            return materia;
        }

        public void modificarMateria(string code, string nombre, string codigo, string sala)
        {
            D_objMateria.D_modificarMateria(code, nombre, codigo, sala);
        }

        
    }
}
