using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CapaDatos
{
    public class clsRela_AlumMater
    {
        dbAsistenciaV2Entities db = new dbAsistenciaV2Entities();
        public void D_ingresarRelaAM(string nombre, string apellido, string usuario,
            string completo, string materia)
        {
            tblRelaAlumMater e = new tblRelaAlumMater();
            e.NombreAlumnoRAM = nombre;
            e.ApellidoAlumnoRAM = apellido;
            e.UsuarioAlumnoRAM = usuario;
            e.NombreCompletoRAM = completo;
            e.MateriaRAM = materia;
            //e.ApellidoUsuario = idMateria;
            db.tblRelaAlumMater.Add(e);
            db.SaveChanges();
        }

        public object D_consultarRelaAM()
        {
            //var estudiantes= db.tblEstudiante.ToList();

            var relaAM = from p in db.tblRelaAlumMater
                             //select p;
                         select new
                         {
                             p.Id_RAM,
                             p.NombreAlumnoRAM,
                             p.ApellidoAlumnoRAM,
                             p.UsuarioAlumnoRAM,
                             p.NombreCompletoRAM,
                             p.MateriaRAM
                         };

            return relaAM.ToList();
        }
    }
}
