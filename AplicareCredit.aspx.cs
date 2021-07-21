using Oracle.ManagedDataAccess.Client;
using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Licenta
{
    public partial class AplicareCredit : System.Web.UI.Page
    {
        public Oracle.ManagedDataAccess.Client.OracleConnection OraConn;
        string _client;

        protected void Page_Load(object sender, EventArgs e)
        {


            this.OraConn = new Oracle.ManagedDataAccess.Client.OracleConnection();
            OraConn.ConnectionString = String.Format(@"Data Source=(DESCRIPTION =" +
                                                "(ADDRESS = (PROTOCOL = TCP)(HOST = localhost)(PORT = 1523))" +
                                                "(CONNECT_DATA =" +
                                                "(SERVER = DEDICATED)" +
                                                "(SERVICE_NAME = primaryDB)));" +
                                                "User Id= c##admin;Password=admin");
            OraConn.Open();

            _client = (string)Session["_client"];
           // _client = "120";
            //ButtonExcel.Style.Add("visibility", "hidden");
            Label12.Style.Add("visibility", "hidden");
            GridView.Style.Add("visibility", "hidden");
            //ButtonExcel.Style.Add("visibility", "hidden");

            DataSet tab1 = new DataSet();
            OracleDataAdapter da1 = new OracleDataAdapter("select lov_coloana_id, lov_coloana from lovs_def where lov_id = 1", OraConn);
            da1.Fill(tab1);
            DropDownList1.DataValueField = tab1.Tables[0].Columns["lov_coloana_id"].ToString();
            DropDownList1.DataTextField = tab1.Tables[0].Columns["lov_coloana"].ToString();
            DropDownList1.DataSource = tab1.Tables[0];      //assigning datasource to the dropdownlist  
            DropDownList1.DataBind();

            DataSet tab2 = new DataSet();
            OracleDataAdapter da2 = new OracleDataAdapter("select lov_coloana_id, lov_coloana from lovs_def where lov_id = 14", OraConn);
            da2.Fill(tab2);
            //DropDownList DropDownList2 = new DropDownList();
            DropDownList13.DataValueField = tab2.Tables[0].Columns["lov_coloana_id"].ToString();
            DropDownList13.DataTextField = tab2.Tables[0].Columns["lov_coloana"].ToString();
            DropDownList13.DataSource = tab2.Tables[0];      //assigning datasource to the dropdownlist  
            DropDownList13.DataBind();

            OracleCommand cmd = new OracleCommand("select APL_FORMULAR_CLIENTI.calcul_punctaj('" + _client + "') from dual", OraConn);
            progressBar.InnerText = cmd.ExecuteScalar().ToString();
            //progressBar.InnerText = "320";

            cmd = new OracleCommand("select APL_FORMULAR_CLIENTI.calcul_procent_punctaj('" + _client + "') from dual", OraConn);
            progressBar.Style.Add("width", cmd.ExecuteScalar().ToString() + "%");
            //progressBar.Style.Add("width", "35" + "%");
            OraConn.Close();
        }


        private void loadGridView()
        {
            Label12.Style.Add("visibility", "display");
            //ButtonExcel.Style.Add("visibility", "display");

            OracleDataAdapter da = new OracleDataAdapter(string.Format("select sold_init, nr_rata, data_rata, comision, principal, dobanda, total_de_plata, sold " +
                                                 " from apl_scadentare_full_v where client_id = '" + _client + "'"//+
                                                                                                                  //"order by 2 nulls last"
                                                 ), OraConn);

            DataSet ds = new DataSet();
            da.Fill(ds);

            GridView.DataSource = ds;
            GridView.DataBind();

            if (!Page.IsPostBack)
            {

                loadGridView();
                // LoadConfig2();

            }
        }

        protected void ButtonSubmit1_Click(object sender, EventArgs e)
        {

            
            try
            {
                if (OraConn.State != ConnectionState.Closed)
                {
                    OraConn.Close();
                }
                //OracleConnection Con = new OracleConnection(TNS);
                OraConn.Open();
                System.Diagnostics.Debug.WriteLine("Insert connection opened");

                System.Diagnostics.Debug.WriteLine("Insert started");

                OracleCommand oraCmd = new OracleCommand(string.Format("insert into APL_CERERE_CREDITE ( client_id , tip_credit, valuta, suma, perioada, salariu_net, suma_rate, limite_credit, amanare_plata)" +
                                                                    "values('" + _client + "', '" + DropDownList1.SelectedItem.Text + "', '" + DropDownList13.SelectedItem.Text + "', '" + TextBox5.Text + "', '" + TextBox6.Text + "', '" + TextBox26.Text +
                                                                   "', '" + TextBox28.Text + "', '" + TextBox30.Text + "', '" + TextBox1.Text + "')"), OraConn);

                ////System.Diagnostics.Debug.WriteLine(string.Format("insert into customers (customer_id, customer_name)" + "values('" + '1' + "', '" + TextBox1.Text + "')"));
                oraCmd.ExecuteNonQuery();
                System.Diagnostics.Debug.WriteLine("Insert started");
                //Response.Write("Connected to Oracle " + OraConn.ServerVersion);

                OracleCommand spcmd = new OracleCommand("APL_FORMULAR_CREDIT.generare_scadentar");
                spcmd.CommandType = CommandType.StoredProcedure;
                spcmd.Connection = OraConn;
                spcmd.Parameters.Add("p_client_id", OracleDbType.Int32).Value = _client;
                spcmd.ExecuteNonQuery();
                
                loadGridView();
                GridView.Style.Add("visibility", "display");
                OraConn.Close();
                System.Diagnostics.Debug.WriteLine("Insert connection closed");
                

                //Response.Write("disConnected to Oracle " + OraConn.ServerVersion);
                //Response.Redirect(Request.RawUrl);
                //pnlFormFields.Visible = false;
                //pnlThankYouMessage.Visible = true;
            }
            catch (Exception ex)
            {
                System.Diagnostics.Debug.WriteLine("Insert Error " + ex);
            }
        }



        //public void Export_Click(object sender, EventArgs e)
        //{
        //    Response.Clear();

        //    Response.AddHeader("content-disposition", "attachment; filename=scadentar" + _client + "_" + DateTime.Now.ToString("dd-MM-yyyy") + ".xls");
        //    Response.Charset = "";

        //    Response.ContentType = "application/vnd.xls";

        //    StringWriter stringWriter = new StringWriter();
        //    HtmlTextWriter htmlWriter = new HtmlTextWriter(stringWriter);

        //    GridView.RenderControl(htmlWriter);
        //    //Response.Write(stringWriter.ToString());

        //    Response.Write(stringWriter.ToString());

        //    Response.End();
        //}

        //public override void VerifyRenderingInServerForm(Control control)
        //{
        //}
    }
}