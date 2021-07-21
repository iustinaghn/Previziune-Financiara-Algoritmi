using Oracle.ManagedDataAccess.Client;
using System;
using System.Configuration;
using System.Data;
using System.Drawing;
using System.IO;
using System.Net;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Licenta
{
    public partial class About : Page
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

            //string username = Convert.ToString(Session["username"]);
            //string parola = Convert.ToString(Session["parola"]);
            //Response.Write(username + " / " + parola + ";");
            //if (username == "" || parola == "")
            //    Response.Redirect("AutentificareNeautorizata.aspx", true);

            OraConn.Close();

            spanrs.Style.Add("visibility", "hidden");
            spanrm.Style.Add("visibility", "hidden");
            spanrr.Style.Add("visibility", "hidden");
            span1.Style.Add("visibility", "hidden");
            ImageButton1.Style.Add("visibility", "hidden");
            ImageButton2.Style.Add("visibility", "hidden");
            txtSearch.Style.Add("visibility", "hidden");
            btnSearch.Style.Add("visibility", "hidden");
            Button2.Style.Add("visibility", "hidden");
        }

        protected void ButtonSubmit_Click(object sender, EventArgs e)
        {
            loadGridView();
        }

        protected void OnPageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridView1.PageIndex = e.NewPageIndex;
            loadGridView(); //bindgridview will get the data source and bind it again
        }


        //protected void OnRowDeleting(object sender, GridViewDeleteEventArgs e)
        //{


        //    OraConn.Open();
        //    OracleCommand oraCmd = new OracleCommand(string.Format("update apl_clienti set activ = 'Nu' WHERE client_id = '" + _client + "'"), OraConn);

        //    oraCmd.ExecuteNonQuery();
        //    OraConn.Close();


        //    this.loadGridView();
        //    spanrs.Style.Add("visibility", "hidden");
        //    spanrm.Style.Add("visibility", "hidden");
        //    spanrr.Style.Add("visibility", "hidden");
        //    GridView2.Style.Add("visibility", "hidden");
        //}

        //protected void SearchGridView1_SearchGrid(string _strSearch)
        //{
        //    TextBox1.Text = _strSearch;
        //    loadGridView();
        //}
        //protected void SearchGridView1_Sorting(object sender, GridViewSortEventArgs e)
        //{
        //    if (TextBox1.Text == e.SortExpression)
        //        TextBox1.Text = e.SortExpression + " Desc";
        //    else
        //        TextBox1.Text = e.SortExpression;
        //    loadGridView();
        //}

        protected void OnSelectedIndexChanged(object sender, EventArgs e)
        {
            foreach (GridViewRow row in GridView1.Rows)
            {
                if (row.RowIndex == GridView1.SelectedIndex)
                {
                    row.BackColor = ColorTranslator.FromHtml("#A1DCF2");
                    row.ToolTip = string.Empty;
                }
                else
                {
                    row.BackColor = ColorTranslator.FromHtml("#FFFFFF");
                    row.ToolTip = "Apasa pentru a alege un client";
                }
            }

            _client = GridView1.SelectedRow.Cells[1].Text;
            Session["client"] = _client;

            loadGridView2();
            OraConn.Open();
            OracleCommand cmd1 = new OracleCommand("select client_tip_act from APL_CLI_CARTE_IDENTITATE where client_id = '" + _client + "'", OraConn);
            TextBox1.Text = cmd1.ExecuteScalar().ToString();

            cmd1 = new OracleCommand("select ci_serie from APL_CLI_CARTE_IDENTITATE where client_id = '" + _client + "'", OraConn);
            TextBox2.Text = cmd1.ExecuteScalar().ToString();

            cmd1 = new OracleCommand("select ci_numar from APL_CLI_CARTE_IDENTITATE where client_id = '" + _client + "'", OraConn);
            TextBox3.Text = cmd1.ExecuteScalar().ToString();

            cmd1 = new OracleCommand("select ci_data_emitere from APL_CLI_CARTE_IDENTITATE where client_id = '" + _client + "'", OraConn);
            TextBox4.Text = cmd1.ExecuteScalar().ToString();

            cmd1 = new OracleCommand("select ci_data_expirare from APL_CLI_CARTE_IDENTITATE where client_id = '" + _client + "'", OraConn);
            TextBox5.Text = cmd1.ExecuteScalar().ToString();

            cmd1 = new OracleCommand("select ci_tara_emitenta from APL_CLI_CARTE_IDENTITATE where client_id = '" + _client + "'", OraConn);
            TextBox6.Text = cmd1.ExecuteScalar().ToString();

            cmd1 = new OracleCommand("select ci_institutia_emitenta from APL_CLI_CARTE_IDENTITATE where client_id = '" + _client + "'", OraConn);
            TextBox7.Text = cmd1.ExecuteScalar().ToString();

            cmd1 = new OracleCommand("select cli_status_social from APL_CLI_DETALII where client_id = '" + _client + "'", OraConn);
            TextBox8.Text = cmd1.ExecuteScalar().ToString();

            cmd1 = new OracleCommand("select cli_nr_membri_fam from APL_CLI_DETALII where client_id = '" + _client + "'", OraConn);
            TextBox9.Text = cmd1.ExecuteScalar().ToString();

            cmd1 = new OracleCommand("select cli_mediu_social from APL_CLI_DETALII where client_id = '" + _client + "'", OraConn);
            TextBox10.Text = cmd1.ExecuteScalar().ToString();

            cmd1 = new OracleCommand("select cli_tip_locuinta from APL_CLI_DETALII where client_id = '" + _client + "'", OraConn);
            TextBox11.Text = cmd1.ExecuteScalar().ToString();

            cmd1 = new OracleCommand("select cli_educatie from APL_CLI_DETALII where client_id = '" + _client + "'", OraConn);
            TextBox12.Text = cmd1.ExecuteScalar().ToString();

            cmd1 = new OracleCommand("select cli_ocupatie from APL_CLI_DETALII where client_id = '" + _client + "'", OraConn);
            TextBox13.Text = cmd1.ExecuteScalar().ToString();

            cmd1 = new OracleCommand("select cli_venit_mediu from APL_CLI_DETALII where client_id = '" + _client + "'", OraConn);
            TextBox14.Text = cmd1.ExecuteScalar().ToString();

            cmd1 = new OracleCommand("select cli_tip_angajator from APL_CLI_DETALII where client_id = '" + _client + "'", OraConn);
            TextBox15.Text = cmd1.ExecuteScalar().ToString();

            cmd1 = new OracleCommand("select cli_dom_angajator from APL_CLI_DETALII where client_id = '" + _client + "'", OraConn);
            TextBox16.Text = cmd1.ExecuteScalar().ToString();

            cmd1 = new OracleCommand("select cli_dom_activitate activitate from APL_CLI_DETALII where client_id = '" + _client + "'", OraConn);
            TextBox17.Text = cmd1.ExecuteScalar().ToString();

            cmd1 = new OracleCommand("select cli_perioada_lucrata from APL_CLI_DETALII where client_id = '" + _client + "'", OraConn);
            TextBox18.Text = cmd1.ExecuteScalar().ToString();

            OracleCommand cmd = new OracleCommand("select APL_FORMULAR_CLIENTI.calcul_grad_risc('" + _client + "') from dual" , OraConn);

            string risc = cmd.ExecuteScalar().ToString();

            
            if(risc == "Risc Scazut")
                spanrs.Style.Add("visibility", "display");
            else if (risc == "Risc Mediu")
                spanrm.Style.Add("visibility", "display");
            else if (risc == "Risc Ridicat")
                spanrr.Style.Add("visibility", "display");
            GridView2.Style.Add("visibility", "display");

            cmd = new OracleCommand("select APL_FORMULAR_CLIENTI.calcul_scor('" + _client + "') from dual", OraConn);

            string scor = cmd.ExecuteScalar().ToString();
            cmd = new OracleCommand("select APL_FORMULAR_CLIENTI.calcul_punctaj('" + _client + "') from dual", OraConn);

            string punctaj = cmd.ExecuteScalar().ToString();

            span1.InnerText = "Punctajul clientului este " + punctaj + " (" + scor + ")";
            OraConn.Close();
            span1.Style.Add("visibility", "diplay");
            ImageButton1.Style.Add("visibility", "display");
            ImageButton2.Style.Add("visibility", "display");
            Button2.Style.Add("visibility", "display");
            //int index = GridView1.SelectedRow.RowIndex;
            //string name = GridView1.SelectedRow.Cells[0].Text;
            //string country = GridView1.SelectedRow.Cells[1].Text;
            //string message = "Row Index: " + index + "\\nName: " + name + "\\nCountry: " + country;
            //ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('" + message + "');", true);
        }


        protected void Search(object sender, EventArgs e)
        {

            txtSearch.Style.Add("visibility", "display");
            btnSearch.Style.Add("visibility", "display");
            Button2.Style.Add("visibility", "display");

            OracleDataAdapter da = new OracleDataAdapter(string.Format("select client_id, client_nume, client_prenume, client_data_nastere, client_cnp, client_sex, " +
                                                                            "client_cetatenie, client_telefon, client_email from apl_clienti  where activ = 'Da' and "+
                                                                            "(client_nume like '%" + txtSearch.Text + "%')"), OraConn);

                DataSet ds = new DataSet();
                da.Fill(ds);


                GridView1.DataSource = ds;
                GridView1.DataBind();

            spanrs.Style.Add("visibility", "hidden");
            spanrm.Style.Add("visibility", "hidden");
            spanrr.Style.Add("visibility", "hidden");
            span1.Style.Add("visibility", "hidden");
            GridView2.Style.Add("visibility", "hidden");
            ImageButton1.Style.Add("visibility", "hidden");
            ImageButton2.Style.Add("visibility", "hidden");
        }


        protected void OnRowDataBound(object sender, System.Web.UI.WebControls.GridViewRowEventArgs e)
        {
            txtSearch.Style.Add("visibility", "display");
            btnSearch.Style.Add("visibility", "display");
            Button2.Style.Add("visibility", "display");
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                e.Row.Attributes["onclick"] = Page.ClientScript.GetPostBackClientHyperlink(GridView1, "Select$" + e.Row.RowIndex);
                e.Row.Attributes["style"] = "cursor:pointer";
                e.Row.ToolTip = "Apasa pentru a alege un client";
            }
        }


        public void loadGridView()
        {
            txtSearch.Style.Add("visibility", "display");
            btnSearch.Style.Add("visibility", "display");
            Button2.Style.Add("visibility", "display");
            OracleDataAdapter da = new OracleDataAdapter(string.Format("select client_id, client_nume, client_prenume, client_data_nastere, client_cnp, client_sex, "+
                                                                        "client_cetatenie, client_telefon, client_email from apl_clienti where activ = 'Da'"), OraConn);

            DataSet ds = new DataSet();
            da.Fill(ds);


            GridView1.DataSource = ds;
            GridView1.DataBind();

            if (!Page.IsPostBack)
            {

                loadGridView();
                // LoadConfig2();

            }
        }


            public void loadGridView2()
        {
            txtSearch.Style.Add("visibility", "display");
            btnSearch.Style.Add("visibility", "display");
            Button2.Style.Add("visibility", "display");
            OracleDataAdapter da = new OracleDataAdapter(string.Format("select cli_tara, cli_judet, cli_oras, cli_cod_postal " +
                                                                        "from apl_cli_adrese where client_id = " + int.Parse(_client)), OraConn);

            DataSet ds = new DataSet();
            da.Fill(ds);


            GridView2.DataSource = ds;
            GridView2.DataBind();

            if (!Page.IsPostBack)
            {

                loadGridView2();
                // LoadConfig2();

            }
        }

        public void Export(object sender, EventArgs e)
        {
            Response.Clear();

            Response.AddHeader("content-disposition", "attachment; filename=Portofoliu_clienti" + _client + "_" + DateTime.Now.ToString("dd-MM-yyyy") + ".xls");
            Response.Charset = "";

            Response.ContentType = "application/vnd.xls";

            StringWriter stringWriter = new StringWriter();
            HtmlTextWriter htmlWriter = new HtmlTextWriter(stringWriter);

            GridView1.RenderControl(htmlWriter);
            //Response.Write(stringWriter.ToString());

            GridView2.RenderControl(htmlWriter);
            Response.Write(stringWriter.ToString());

            Response.End();
        }

        public override void VerifyRenderingInServerForm(Control control)
        {
        }

    }
}