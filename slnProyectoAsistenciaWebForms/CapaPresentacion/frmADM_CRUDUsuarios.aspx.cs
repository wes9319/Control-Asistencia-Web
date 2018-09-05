using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CapaNegocio;

namespace CapaPresentacion
{
    public partial class frmADM_CRUDUsuarios : System.Web.UI.Page
    {
        Usuario objUsuario = new Usuario();
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
                consultarUsuario();
        }

        protected void btnIngresoU_Click(object sender, EventArgs e)
        {
            objUsuario.ingresarUsuario(txtNombreU.Text, txtApellidoU.Text,
                txtUserU.Text, txtPassU.Text, ddlTipoU.SelectedIndex,
                txtTituloU.Text);
            consultarUsuario();

            string script = "alert(\"Ingreso Correcto\");";
            ScriptManager.RegisterStartupScript(this, GetType(), "ServerControlScript", script, true);
        }

        protected void btnModificarU_Click(object sender, EventArgs e)
        {
            objUsuario.modificarUsuario(txtUserU.Text, txtNombreU.Text, txtApellidoU.Text,
                txtUserU.Text, txtPassU.Text, ddlTipoU.SelectedIndex,
                txtTituloU.Text);

            string script = "alert(\"Modificacion Correcta\");";
            ScriptManager.RegisterStartupScript(this, GetType(), "ServerControlScript", script, true);
        }

        protected void btnEliminarU_Click(object sender, EventArgs e)
        {

        }

        private void consultarUsuario()
        {
            

        }

        protected void ddlTipoU_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (ddlTipoU.SelectedIndex == 0)
            {
                txtTituloU.Enabled = false;
            }
            else
            {
                if (ddlTipoU.SelectedIndex == 1)
                {
                    txtTituloU.Enabled = true;

                }
                else
                {
                    if (ddlTipoU.SelectedIndex == 2)
                    {
                        txtTituloU.Text = "Alumno";

                    }

                }
            }
        }
    }
}