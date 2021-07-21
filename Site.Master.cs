using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Licenta
{
    public partial class SiteMaster : MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            LabelUser.Style.Add("visibility", "hidden");

            string username = Convert.ToString(Session["username"]);
            string parola = Convert.ToString(Session["parola"]);

            if (username == "administrator") { 
                LabelUser.Style.Add("visibility", "display");
                LabelUser.Text = "Autentificat ca " + username + "!";
            }
            else
                LabelUser.Style.Add("visibility", "hidden");
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }
    }
}