using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _3G.Style
{
    public partial class Main : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if ((Request.Url.ToString().ToLower().IndexOf("Default.aspx") > -1) || (Request.Url.ToString().ToLower().IndexOf(".aspx") == -1))
            {
                PnMenu.Visible = false;
            }
            else
            {
                PnMenu.Visible = true;
            }
        }

        protected void Logout_Click1(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx");
        }
    }
}