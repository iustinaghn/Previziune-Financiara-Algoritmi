using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Oracle.DataAccess;
using Oracle.ManagedDataAccess.Client;

namespace Licenta
{
    public partial class _Default : Page
    {
        

        public Oracle.ManagedDataAccess.Client.OracleConnection Con;

        protected void Page_Load(object sender, EventArgs e)
        {
            this.Con = new OracleConnection();
            Con.ConnectionString = String.Format(@"Data Source=(DESCRIPTION =" +
                                                "(ADDRESS = (PROTOCOL = TCP)(HOST = localhost)(PORT = 1523))" +
                                                "(CONNECT_DATA =" +
                                                "(SERVER = DEDICATED)" +
                                                "(SERVICE_NAME = primaryDB)));" +
                                                "User Id= c##admin;Password=admin");
            Con.Open();
            //Response.Write("Connected to Oracle " + Con.ServerVersion);
         
            Con.Close();
            Con.Dispose();

            }

        protected void ButtonRedirect_Click(object sender, EventArgs e)
        {

            Response.Redirect("Contact.aspx");


        }


       
    }
}