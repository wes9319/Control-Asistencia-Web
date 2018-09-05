using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CapaDatos
{
    public class clsHorario
    {
        dbAsistenciaV2Entities db = new dbAsistenciaV2Entities();
        public void D_ingresarHorario(string nombre, string apellido, string completo,
            string usuario, string materia, TimeSpan inicio, TimeSpan fin)
        {
            tblHora e = new tblHora();
            e.NombreMaestroHora = nombre;
            e.ApellidoMaestroHora = apellido;
            e.NombreCompletoMaestroHora = completo;
            e.UsuarioMaestroHora = usuario;
            e.MateriaHora = materia;
            e.InicioHora = inicio;
            e.FinHora = fin;
            db.tblHora.Add(e);
            db.SaveChanges();
        }

        public object D_consultarHorario()
        {

            var hora = from p in db.tblHora
                           //select p;
                       select new
                       {
                           p.Id_Hora,
                           p.NombreMaestroHora,
                           p.ApellidoMaestroHora,
                           p.NombreCompletoMaestroHora,
                           p.UsuarioMaestroHora,
                           p.MateriaHora,
                           p.InicioHora,
                           p.FinHora
                       };

            return hora.ToList();
        }
    }
}
