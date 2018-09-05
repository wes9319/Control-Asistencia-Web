using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CapaDatos
{
    public class clsMateria
    {
        dbAsistenciaV2Entities db = new dbAsistenciaV2Entities();
        public void D_ingresarMateria(string nombre, string codigo, string sala)
        {
            tblMateria e = new tblMateria();
            e.NombreMateria = nombre;
            e.CodigoMateria = codigo;
            e.SalaMateria = sala;

            db.tblMateria.Add(e);
            db.SaveChanges();
        }

        public object D_consultarMateria()
        {
            //var estudiantes= db.tblEstudiante.ToList();

            var materia = from p in db.tblMateria
                              //select p;
                          select new
                          {
                              p.Id_Materia,
                              p.NombreMateria,
                              p.CodigoMateria,
                              p.SalaMateria
                          };

            return materia.ToList();
        }

        public void D_modificarMateria(string code, string nombre, string codigo, string sala)
        {
            tblMateria e = db.tblMateria.Find(code);

            e.NombreMateria = nombre;
            e.CodigoMateria = codigo;
            e.SalaMateria = sala;
            db.SaveChanges();
        }
    }
}
