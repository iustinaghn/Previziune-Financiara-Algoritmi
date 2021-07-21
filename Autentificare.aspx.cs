using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using Oracle.ManagedDataAccess.Client;

namespace Licenta
{
    public partial class Autentificare : System.Web.UI.Page
    {
        public Oracle.ManagedDataAccess.Client.OracleConnection OraConn;

        protected void Page_Load(object sender, EventArgs e)
        {
            //this.OraConn = new Oracle.ManagedDataAccess.Client.OracleConnection();
            //OraConn.ConnectionString = String.Format(@"Data Source=(DESCRIPTION =" +
            //                                    "(ADDRESS = (PROTOCOL = TCP)(HOST = localhost)(PORT = 1523))" +
            //                                    "(CONNECT_DATA =" +
            //                                    "(SERVER = DEDICATED)" +
            //                                    "(SERVICE_NAME = primaryDB)));" +
            //                                    "User Id= c##admin;Password=admin");
            //OraConn.Open();

           
            //OraConn.Close();
        }

        //private bool ValidateUser(string userName, string passWord)
        //{
        //    this.conn = new Oracle.ManagedDataAccess.Client.OracleConnection();
        //    conn.ConnectionString = String.Format(@"Data Source=(DESCRIPTION =" +
        //                                        "(ADDRESS = (PROTOCOL = TCP)(HOST = localhost)(PORT = 1523))" +
        //                                        "(CONNECT_DATA =" +
        //                                        "(SERVER = DEDICATED)" +
        //                                        "(SERVICE_NAME = primaryDB)));" +
        //                                        "User Id= c##admin;Password=admin");
        //    conn.Open();

        //    OracleCommand cmd;
        //    string lookupPassword = null;

        //    // Check for invalid userName.
        //    // userName must not be null and must be between 1 and 15 characters.
        //    if ((null == TextBox1) || (0 == TextBox1.Text.Length) || (TextBox1.Text.Length > 15))
        //    {
        //        System.Diagnostics.Trace.WriteLine("[ValidateUser] Input validation of userName failed.");
        //        return false;
        //    }

        //    // Check for invalid passWord.
        //    // passWord must not be null and must be between 1 and 25 characters.
        //    if ((null == TextBox2) || (0 == TextBox2.Text.Length) || (TextBox2.Text.Length > 25))
        //    {
        //        System.Diagnostics.Trace.WriteLine("[ValidateUser] Input validation of passWord failed.");
        //        return false;
        //    }

        //    try
        //    {
        //        // Consult with your SQL Server administrator for an appropriate connection
        //        // string to use to connect to your local SQL Server.
        //       // Create SqlCommand to select pwd field from users table given supplied userName.
        //        cmd = new OracleCommand("Select parola from apl_utilizatori where uname=@userName", conn);
        //        cmd.Parameters.Add("@userName", OracleDbType.Varchar2, 25);
        //        cmd.Parameters["@userName"].Value = TextBox1.Text;

        //        // Execute command and fetch pwd field into lookupPassword string.
        //        lookupPassword = (string)cmd.ExecuteScalar();

        //        // Cleanup command and connection objects.
        //        cmd.Dispose();
        //        conn.Dispose();
        //    }
        //    catch (Exception ex)
        //    {
        //        // Add error handling here for debugging.
        //        // This error message should not be sent back to the caller.
        //        System.Diagnostics.Trace.WriteLine("[ValidateUser] Exception " + ex.Message);
        //    }

        //    // If no password found, return false.
        //    if (null == lookupPassword)
        //    {
        //        // You could write failed login attempts here to event log for additional security.
        //        return false;
        //    }

        //    // Compare lookupPassword and input passWord, using a case-sensitive comparison.
        //    return (0 == string.Compare(lookupPassword, TextBox2.Text, false))
                
        //}

        protected void Button1Login_Click(object sender, System.EventArgs e)
        {
            //if (ValidateUser(TextBox1.Text, TextBox2.Text))
            //    FormsAuthentication.RedirectFromLoginPage(TextBox1.Text, true);
            //else
            this.OraConn = new Oracle.ManagedDataAccess.Client.OracleConnection();
            OraConn.ConnectionString = String.Format(@"Data Source=(DESCRIPTION =" +
                                                "(ADDRESS = (PROTOCOL = TCP)(HOST = localhost)(PORT = 1523))" +
                                                "(CONNECT_DATA =" +
                                                "(SERVER = DEDICATED)" +
                                                "(SERVICE_NAME = primaryDB)));" +
                                                "User Id= c##admin;Password=admin");
            OraConn.Open();

            OracleCommand cmd = new OracleCommand("select count(*) from apl_utilizatori where username = '" + TextBox1.Text + "' and parola = '" + TextBox2.Text + "'", OraConn);

            string count = cmd.ExecuteScalar().ToString();
           // Response.Write("Connected to Oracle " + count);
            if (count == "1")
            {
                Session["username"] = TextBox1.Text;
                Session["parola"] = TextBox2.Text;

                Response.Redirect("Default.aspx", true);
            }

            OraConn.Close();
        }
    }
}