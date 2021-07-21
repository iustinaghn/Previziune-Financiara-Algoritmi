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
    public partial class PortofoliuCredite : System.Web.UI.Page
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
           
            txtSearch.Style.Add("visibility", "hidden");
            btnSearch.Style.Add("visibility", "hidden");
            Button2.Style.Add("visibility", "hidden");
            Label12.Style.Add("visibility", "hidden");

            spanstat.Style.Add("visibility", "hidden");
            clndiv.Style.Add("visibility", "hidden");
            span2.Style.Add("visibility", "hidden");
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
            

            OracleCommand cmd = new OracleCommand("select APL_FORMULAR_CLIENTI.calcul_grad_risc('" + _client + "') from dual", OraConn);

            string risc = cmd.ExecuteScalar().ToString();

            if (risc == "Risc Scazut")
                spanrs.Style.Add("visibility", "display");
            else if (risc == "Risc Mediu")
                spanrm.Style.Add("visibility", "display");
            else if (risc == "Risc Ridicat")
                spanrr.Style.Add("visibility", "display");
            GridView2.Style.Add("visibility", "display");

            spanstat.Style.Add("visibility", "display");
            clndiv.Style.Add("visibility", "display");
            span2.Style.Add("visibility", "display");

            cmd = new OracleCommand("select APL_FORMULAR_CLIENTI.calcul_scor('" + _client + "') from dual", OraConn);

            string scor = cmd.ExecuteScalar().ToString();
            cmd = new OracleCommand("select APL_FORMULAR_CLIENTI.calcul_punctaj('" + _client + "') from dual", OraConn);

            string punctaj = cmd.ExecuteScalar().ToString();

            span1.InnerText = "Punctajul clientului este " + punctaj + " (" + scor + ")";

            cmd = new OracleCommand("select apl_formular_credit.calcul_grad_indatorare('" + _client + "') from dual", OraConn);

            string grad = cmd.ExecuteScalar().ToString();
            span2.InnerText = "Gradul de indatorare este " + grad + "%";

            numecln.InnerText = (new OracleCommand("select client_nume || ' ' || client_prenume from apl_clienti where client_id = '" + _client + "'", OraConn)).ExecuteScalar().ToString();
            datecln.InnerHtml = "<b>CNP:         " + (new OracleCommand("select client_cnp from apl_clienti where client_id = '" + _client + "'", OraConn)).ExecuteScalar().ToString() + "</b></br></br></br>" +
                                "Sursa fondurilor:        " + (new OracleCommand("select cli_sursa_fonduri from apl_cli_kyc where client_id = '" + _client + "'", OraConn)).ExecuteScalar().ToString() + "</b></br></br></br>" +
                                "Persoana expusa politic:        " + (new OracleCommand("select cli_pers_exp from apl_cli_kyc where client_id = '" + _client + "'", OraConn)).ExecuteScalar().ToString() + "</b></br></br></br>" +
                                "Beneficiar real al fondurilor:        " + (new OracleCommand("select cli_benef_real from apl_cli_kyc where client_id = '" + _client + "'", OraConn)).ExecuteScalar().ToString() + "</b>";
            
            string status = (new OracleCommand("select apl_formular_credit.calcul_cerere_status('" + _client + "') from apl_clienti where client_id = '" + _client + "'", OraConn)).ExecuteScalar().ToString();
            spanstat.InnerText = status;

            if (status == "Aprobat")
                spanstat.Style.Add("background-color", "green");
            if (status == "Respins")
                spanstat.Style.Add("background-color", "red");
            if (status == "In curs de verificare")
                spanstat.Style.Add("background-color", "yellow");
            OraConn.Close();

            span1.Style.Add("visibility", "diplay");
            
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
                                                                            "client_cetatenie, client_telefon, client_email from apl_clienti  where activ = 'Da' and " +
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
            spanstat.Style.Add("visibility", "hidden");
            clndiv.Style.Add("visibility", "hidden");
            span2.Style.Add("visibility", "hidden");
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
                e.Row.ToolTip = "Apasa pentru a alege un credit";
            }
        }


        public void loadGridView()
        {
            txtSearch.Style.Add("visibility", "display");
            btnSearch.Style.Add("visibility", "display");
            Button2.Style.Add("visibility", "display");
            OracleDataAdapter da = new OracleDataAdapter(string.Format("select client_id, tip_credit, valuta, suma, perioada || ' luni' perioada, salariu_net || ' RON' salariu_net, " +
                                                                        "suma_rate || ' RON' suma_rate, limite_credit || ' RON' limite_credit, decode(amanare_plata, 1, '1 luna', amanare_plata || ' luni') amanare_plata" +
                                                                        " from APL_CERERE_CREDITE"), OraConn);

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
            Label12.Style.Add("visibility", "display");
            txtSearch.Style.Add("visibility", "display");
            btnSearch.Style.Add("visibility", "display");
            Button2.Style.Add("visibility", "display");
            OracleDataAdapter da = new OracleDataAdapter(string.Format("select sold_init, nr_rata, data_rata, comision, principal, dobanda, total_de_plata, sold " +
                                                 " from apl_scadentare_full_v where client_id = '" + _client + "'"//+
                                                                                                                  //"order by 2 nulls last"
                                                 ), OraConn);

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

            Response.AddHeader("content-disposition", "attachment; filename=Portofoliu_Credite" + _client + "_" + DateTime.Now.ToString("dd-MM-yyyy") + ".xls");
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