using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CapaNegocio;

namespace CapaPresentacion
{
    public partial class frmADM_CRUDRelaMaeMat : System.Web.UI.Page
    {
        Rela_MaesMater objRelaMM = new Rela_MaesMater();
        Usuario objUsuario = new Usuario();
        Materia objMateria = new Materia();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
                consultarRelaMM();
        }

        protected void btnIngresarMM_Click(object sender, EventArgs e)
        {

        }

        protected void btnModificarMM_Click(object sender, EventArgs e)
        {

        }

        protected void btnEliminarMM_Click(object sender, EventArgs e)
        {

        }

        private void consultarRelaMM()
        {
            //gvRelaMM.DataSource = objRelaMM.consultarRelaMM();
            //gvRelaMM.DataBind();

            ddlMaestro.DataSource = objUsuario.consultarUsuario();

            ddlMaestro.DataValueField = "Id_Usuario";
            ddlMaestro.DataTextField = "NombreUsuario";

            ddlMaestro.DataBind();

            ddlMateria.DataSource = objMateria.consultarMateria();

            ddlMateria.DataValueField = "Id_Materia";
            ddlMateria.DataTextField = "NombreMateria";


            ddlMateria.DataBind();

        }

        protected void ddlMaestro_SelectedIndexChanged(object sender, EventArgs e)
        {
            var du = objUsuario.consultarUsuarioDat(ddlMaestro.SelectedIndex);
            
            
        }

        protected void ddlMateria_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}