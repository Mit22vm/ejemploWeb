using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ejemploWeb
{
    public partial class Detalles : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            double SalarioDiario = 0;

            if (Session["nombre"] != null)
            {
                txtNombre.Text = Session["nombre"].ToString();
            }
            if (Session["SalarioBruto"] != null)
            {
                    SalarioDiario = Convert.ToDouble(Session["SalarioBruto"]);
                    txtsalarioB.Text = Session["SalarioBruto"].ToString() ;
                    txtSalarioDiario.Text = (SalarioDiario / 20).ToString() ;
                
            }
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }

        protected void btnRegresar_Click(object sender, EventArgs e)
        {
            Response.Redirect($"empleados.aspx?nombre={txtNombre.Text}&salario={txtsalarioB.Text}");
        }
    }
}