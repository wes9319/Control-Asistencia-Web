using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CapaNegocio;

namespace CapaPresentacion
{
    public partial class frmADM_CRUDRelaAluMat : System.Web.UI.Page
    {
        Rela_AlumMater objRelaAM = new Rela_AlumMater();
        Usuario objUsuario = new Usuario();
        Materia objMateria = new Materia();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
                consultarRelaAM();
        }

        protected void btnIngresarAM_Click(object sender, EventArgs e)
        {
           /* objRelaAM.ingresarRelaAM(txtNombreU.Text, txtApellidoU.Text,
               txtUserU.Text, txtPassU.Text, int.Parse(ddlTipoU.SelectedValue),
               txtTituloU.Text);
               */

            string script = "alert(\"Ingreso Correcto\");";
            ScriptManager.RegisterStartupScript(this, GetType(), "ServerControlScript", script, true);
        }

        protected void btnModificarAM_Click(object sender, EventArgs e)
        {

        }

        protected void btnEliminarAM_Click(object sender, EventArgs e)
        {

        }

        private void consultarRelaAM()
        {
            //gvRelaAM.DataSource = objRelaAM.consultarRelaAM();
            //gvRelaAM.DataBind();

            ddlAlumnoAM.DataSource = objUsuario.consultarUsuario();

            ddlAlumnoAM.DataValueField = "Id_Usuario";
            ddlAlumnoAM.DataTextField = "NombreUsuario";

            ddlAlumnoAM.DataBind();

            ddlMateriaAM.DataSource = objMateria.consultarMateria();

            ddlMateriaAM.DataValueField = "Id_Materia";
            ddlMateriaAM.DataTextField = "NombreMateria";


            ddlMateriaAM.DataBind();

        }

        protected void ddlAlumnoAM_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void ddlMateriaAM_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}