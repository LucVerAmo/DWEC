using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GesTienda
{
    public partial class ControlError : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Exception exUltimoErrorASP, exUltimoErrorADO;
            String strMensajeErrorASP = "No se ha producido un error de ASP.NET";
            String strMensajeErrorADO = "No se ha producido un error de ADO.NET";
            exUltimoErrorASP = Server.GetLastError();
            if (exUltimoErrorASP != null)
            {
                strMensajeErrorASP = exUltimoErrorASP.Message;
                exUltimoErrorADO = exUltimoErrorASP.GetBaseException();
                if (exUltimoErrorADO != null)
                {
                    strMensajeErrorADO = exUltimoErrorADO.Message;
                }
            }
            lblErrorASP.Text = strMensajeErrorASP;
            lblErrorADO.Text = strMensajeErrorADO;
            Server.ClearError();
        }
    }
}