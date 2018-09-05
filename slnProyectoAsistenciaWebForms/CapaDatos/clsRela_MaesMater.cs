using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CapaDatos
{
    public class clsRela_MaesMater
    {
        dbAsistenciaV2Entities db = new dbAsistenciaV2Entities();
        public void D_ingresarRelaMM(string nombre, string apellido, string usuario,
            string completo, string materia)
        {
            tblRelaMaesMater e = new tblRelaMaesMater();
            e.NombreMaestroRMM = nombre;
            e.ApellidoMaestroRMM = apellido;
            e.UsuarioMaestroRMM = usuario;
            e.NombreCompletoRMM = completo;
            e.MateriaRMM = materia;
            db.tblRelaMaesMater.Add(e);
            db.SaveChanges();
        }

        public object D_consultarRelaMM()
        {
            //var estudiantes= db.tblEstudiante.ToList();

            var relaMM = from p in db.tblRelaMaesMater
                             //select p;
                         select new
                         {
                             p.Id_RMM,
                             p.NombreMaestroRMM,
                             p.ApellidoMaestroRMM,
                             p.UsuarioMaestroRMM,
                             p.NombreCompletoRMM,
                             p.MateriaRMM
                         };

            return relaMM.ToList();
        }
    }
}
