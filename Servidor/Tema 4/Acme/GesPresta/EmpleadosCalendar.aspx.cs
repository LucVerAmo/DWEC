using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GesPresta
{
    public partial class EmpleadosCalendar : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (txtNac.Text != "")
            {
                calNac.SelectedDate = Convert.ToDateTime(txtNac.Text);
                calNac.VisibleDate = Convert.ToDateTime(txtNac.Text);
            }
            if (txtIng.Text != "")
            {
                calNac.SelectedDate = Convert.ToDateTime(txtNac.Text);
                calNac.VisibleDate = Convert.ToDateTime(txtNac.Text);
            }
        }

        string cadena = "";
        protected void calNac_SelectionChanged(object sender, EventArgs e)
        {
            DateTime dtHoy = System.DateTime.Now;
            DateTime fechaNaz = calNac.SelectedDate;
            txtNac.Text = calNac.SelectedDate.ToShortDateString();
            cadena = cadena + lblErrores.Text;
            if (DateTime.Compare(fechaNaz, dtHoy) > 0)
            {
                cadena = cadena + "La fecha de nacimiento no puede ser mayor que la fecha actual" + "<br/>";
                lblErrores.Visible = true;
                lblErrores.Text = cadena;
            }
            if (DateTime.Compare(calIn.SelectedDate, calNac.SelectedDate) < 0)
            {
                cadena = cadena + "La fecha de ingreso no puede ser menor que la fecha de nacimiento" + "<br/>";
                lblErrores.Visible = true;
                lblErrores.Text = cadena;
            }
        }

        protected void calIn_SelectionChanged(object sender, EventArgs e)
        {
            DateTime dtHoy = System.DateTime.Now;
            DateTime dtIng = calIn.SelectedDate;
            txtIng.Text = calIn.SelectedDate.ToShortDateString();
            cadena = cadena + lblErrores.Text;
            if (DateTime.Compare(dtIng, dtHoy) > 0)
            {
                cadena = cadena + "La fecha de ingreso no puede ser mayor que la fecha actual" + "<br/>";
                lblErrores.Visible = true;
                lblErrores.Text = cadena;
            }
            if (DateTime.Compare(calIn.SelectedDate, calNac.SelectedDate) < 0)
            {
                cadena = cadena + "La fecha de ingreso no puede ser menor que la fecha de nacimiento" + "<br/>";
                lblErrores.Visible = true;
                lblErrores.Text = cadena;
            }
        }

        protected void cmdEnviar_Click(object sender, EventArgs e)
        {
            DateTime dtHoy = System.DateTime.Now;
            TimeSpan diferencia = dtHoy - calIn.SelectedDate;
            DateTime fechamin = new DateTime(1, 1, 1);
            txtAnyos.Text = ((fechamin + diferencia).Year - 1).ToString();
            txtMeses.Text = ((fechamin + diferencia).Month - 1).ToString();
            txtDias.Text = ((fechamin + diferencia).Day).ToString();
        }
    }
}