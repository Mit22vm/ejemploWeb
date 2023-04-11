using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ejemploWeb
{
    public partial class empleados : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //Verificar si tiene algo
            if (Request.QueryString["nombre"]!=null && Request.QueryString["salario"] != null)
            {
                txtNombre.Text = Request.QueryString["nombre"];
                txtsalarioB.Text = Request.QueryString["salario"];
                Calcular();
            }
            
        }

        protected void btnCalcular_Click(object sender, EventArgs e)
        {
            Calcular();
        }

        private void Calcular() {
            double salario;
            double.TryParse(txtsalarioB.Text.ToString(),out salario);
            double caja = salario * 0.104;
            txtcaja.Text = caja.ToString();
            txtsalarioN.Text = (salario-caja).ToString();
        }

        protected void btnDetalles_Click(object sender, EventArgs e)
        {
            Session["nombre"] = txtNombre.Text;
            Session["SalarioBruto"] = txtsalarioB.Text;
            Response.Redirect("Detalles.aspx");
        }
    }
}