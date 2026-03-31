using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Envio_sms
{
    public partial class Test_Sms : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnEnvio_Click(object sender, EventArgs e)
        {
            lblConfirmacion.Text = "";
            lblConfirmacion.Visible = false;
            string vPx = txtPx.Text;
            string vFecha = txtFecha.Text;
            string vHora =txtHora.Text;
            string vClinica = dpClinicas.SelectedItem.ToString();
            string xNumero = txtTelefono.Text;

            Controlador.EnvioSmS(vPx, vFecha, vHora, vClinica, xNumero);

            lblConfirmacion.Text = "SMS Enviado a Destinatario...";
            lblConfirmacion.Visible = true;
        }
    }
}