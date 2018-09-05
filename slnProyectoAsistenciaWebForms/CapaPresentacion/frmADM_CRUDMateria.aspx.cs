using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CapaNegocio;

namespace CapaPresentacion
{
    public partial class frmADM_CRUDMateria : System.Web.UI.Page
    {

        Materia objMateria = new Materia();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
                consultarMateria();
        }

        protected void btnIngresarM_Click(object sender, EventArgs e)
        {
            objMateria.ingresarMateria(txtNombreM.Text, txtCodigoM.Text,
                txtAulaM.Text);
            consultarMateria();

            string script = "alert(\"Ingreso Correcto\");";
            ScriptManager.RegisterStartupScript(this, GetType(), "ServerControlScript", script, true);
        }

        protected void btnModificarM_Click(object sender, EventArgs e)
        {
            objMateria.modificarMateria(txtCodigoM.Text, txtNombreM.Text, txtCodigoM.Text,
                txtAulaM.Text);

            string script = "alert(\"Modificacion Correcta\");";
            ScriptManager.RegisterStartupScript(this, GetType(), "ServerControlScript", script, true);
        }

        protected void btnEliminarM_Click(object sender, EventArgs e)
        {

        }

        private void consultarMateria()
        {
            //gvMateria.DataSource = objMateria.consultarMateria();
            //gvMateria.DataBind();

        }
    }
}