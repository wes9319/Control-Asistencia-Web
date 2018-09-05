using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CapaDatos
{
    public class clsAsistencia
    {
        dbAsistenciaV2Entities db = new dbAsistenciaV2Entities();
        public void D_ingresarAsistencia(DateTime fecha, TimeSpan inicio, TimeSpan fin,
            string materia, string nombre, string apellido, string Nmaestro, string Amaestro,
            int asistencia)
        {
            tblAsistencia e = new tblAsistencia();
            e.FechaAsistencia = fecha;
            e.HoraInicioAsistencia = inicio;
            e.HoraFinAsistencia = fin;
            e.MateriaAsistencia = materia;
            e.NombreEstudianteAsistencia = nombre;
            e.ApellidoEstudianteAsistencia = apellido;
            e.NombreMaestroAsistencia = Nmaestro;
            e.ApellidoMaestreAsistencia = Amaestro;
            e.Asistencia = asistencia;
            db.tblAsistencia.Add(e);
            db.SaveChanges();
        }

        public object D_consultarAsistencia()
        {
            //var estudiantes= db.tblEstudiante.ToList();

            var asistencia = from p in db.tblAsistencia
                                 //select p;
                             select new
                             {
                                 p.Id_Asistencia,
                                 p.FechaAsistencia,
                                 p.HoraInicioAsistencia,
                                 p.HoraFinAsistencia,
                                 p.MateriaAsistencia,
                                 p.NombreEstudianteAsistencia,
                                 p.ApellidoEstudianteAsistencia,
                                 p.NombreMaestroAsistencia,
                                 p.ApellidoMaestreAsistencia,
                                 p.Asistencia
                             };

            return asistencia.ToList();
        }
    }
}
