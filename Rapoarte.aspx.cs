using Oracle.ManagedDataAccess.Client;
using System;
using System.Collections.Generic;
using System.Data;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Licenta
{
    public partial class Rapoarte : System.Web.UI.Page
    {
        public Oracle.ManagedDataAccess.Client.OracleConnection OraConn;
        string _raport;
        string var_select;
        string id_rap;
        BoundField t1, t2, t3, t4, t5, t6, t7, t8, t9 = new BoundField();
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

            t1 = new BoundField();
            t2 = new BoundField();
            t3 = new BoundField();
            t4 = new BoundField();
            t5 = new BoundField();
            t6 = new BoundField();
            t7 = new BoundField();
            t8 = new BoundField();
            t9 = new BoundField();

            if (!IsPostBack)
            {
                loadGridView();
                Button2.Style.Add("visibility", "hidden");

            }
     

            OraConn.Close();
        }

        protected void OnPageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridView1.PageIndex = e.NewPageIndex;
            loadGridView1(); //bindgridview will get the data source and bind it again
        }

        protected void OnRowDataBound(object sender, System.Web.UI.WebControls.GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                e.Row.Attributes["onclick"] = Page.ClientScript.GetPostBackClientHyperlink(GridView, "Select$" + e.Row.RowIndex);
                e.Row.Attributes["style"] = "cursor:pointer";
                e.Row.ToolTip = "Apasa pentru a alege un raport";
                
            }
        }

        protected void OnSelectedIndexChanged(object sender, EventArgs e)
        {
            foreach (GridViewRow row in GridView.Rows)
            {
                if (row.RowIndex == GridView.SelectedIndex)
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

            _raport =  GridView.SelectedRow.Cells[1].Text;



            OraConn.Open();
            
            id_rap = (new OracleCommand("select raport_id from rapoarte where raport_nume =  '" + _raport + "'", OraConn)).ExecuteScalar().ToString() ;
            var_select = (new OracleCommand("select view_asociat from rapoarte where raport_id = '" + id_rap + "'", OraConn)).ExecuteScalar().ToString();



            //if (Page.IsPostBack and id_rap == "1")
            //{

            //    t5.Visible = false;
            //    t6.Visible = false;
            //    t7.Visible = false;
            //    t8.Visible = false;
            //    t9.Visible = false;
            //}

            for (int i = 0; GridView1.Columns.Count > i;)
                if (Page.IsPostBack)
                    GridView1.Columns.RemoveAt(i);

            loadGridView1();
            
            //<asp:DynamicField Visible="true" DataField="R2" HeaderText="Nume"  HeaderStyle-HorizontalAlign="Center" HeaderStyle-Font-Bold="true"/>
            //Button2.Style.Add("visibility", "display");
            //int index = GridView1.SelectedRow.RowIndex;
            //string name = GridView1.SelectedRow.Cells[0].Text;
            //string country = GridView1.SelectedRow.Cells[1].Text;
            //string message = "Row Index: " + index + "\\nName: " + name + "\\nCountry: " + country;
            //ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('" + message + "');", true);
        }

        public void loadGridView()
        {
            OracleDataAdapter da = new OracleDataAdapter(string.Format("select raport_id, raport_nume from rapoarte where activ = 'Da' order by raport_id"), OraConn);

            DataSet ds = new DataSet();
            da.Fill(ds);


            GridView.DataSource = ds;
            
            GridView.DataBind();


        }

        public void loadGridView1()
        {

            

            Label12.Text = GridView.SelectedRow.Cells[1].Text;
            OracleDataAdapter da = new OracleDataAdapter(string.Format("select r1,r2,r3,r4,r5,r6,r7,r8,r9 from " + var_select + " where r0 = '" + id_rap + "'"), OraConn);
            DataSet ds = new DataSet();
            da.Fill(ds);


             if (Page.IsPostBack)
            {
                Button2.Style.Add("visibility", "display");
                if (id_rap == "1")
                {

                    t1.DataField = "R1";
                    t1.HeaderText = "Client id";
                    t1.HeaderStyle.Font.Bold = true;
                    GridView1.Columns.Add(t1);


                    t2.DataField = "R2";
                    t2.HeaderText = "Nume";
                    t2.HeaderStyle.Font.Bold = true;
                    GridView1.Columns.Add(t2);

                    t3.DataField = "R3";
                    t3.HeaderText = "Puncte KYC";
                    t3.HeaderStyle.Font.Bold = true;
                    GridView1.Columns.Add(t3);

                    t4.DataField = "R4";
                    t4.HeaderText = "Risc";
                    t4.HeaderStyle.Font.Bold = true;
                    GridView1.Columns.Add(t4);


                }
                else if (id_rap == "2")
                {

                    t1.DataField = "R1";
                    t1.HeaderText = "Client id";
                    t1.HeaderStyle.Font.Bold = true;
                    GridView1.Columns.Add(t1);

                    t2.DataField = "R2";
                    t2.HeaderText = "Status social";
                    t2.HeaderStyle.Font.Bold = true;
                    GridView1.Columns.Add(t2);

                    t3.DataField = "R3";
                    t3.HeaderText = "Nr. membri familie";
                    t3.HeaderStyle.Font.Bold = true;
                    GridView1.Columns.Add(t3);

                    t4.DataField = "R4";
                    t4.HeaderText = "Mediu social";
                    t4.HeaderStyle.Font.Bold = true;
                    GridView1.Columns.Add(t4);

                    t5.DataField = "R5";
                    t5.HeaderText = "Tip locuinta";
                    t5.HeaderStyle.Font.Bold = true;
                    GridView1.Columns.Add(t5);

                    t6.DataField = "R6";
                    t6.HeaderText = "Venit mediu";
                    t6.HeaderStyle.Font.Bold = true;
                    GridView1.Columns.Add(t6);

                    t7.DataField = "R7";
                    t7.HeaderText = "Domeniu angajator";
                    t7.HeaderStyle.Font.Bold = true;
                    GridView1.Columns.Add(t7);

                    t8.DataField = "R8";
                    t8.HeaderText = "Tip angajator";
                    t8.HeaderStyle.Font.Bold = true;
                    GridView1.Columns.Add(t8);

                    t9.DataField = "R9";
                    t9.HeaderText = "Nr. angajati angajator";
                    t9.HeaderStyle.Font.Bold = true;
                    GridView1.Columns.Add(t9);
                }
                else if (id_rap == "6")
                {

                    t1.DataField = "R1";
                    t1.HeaderText = "Client id";
                    t1.HeaderStyle.Font.Bold = true;
                    GridView1.Columns.Add(t1);

                    t2.DataField = "R2";
                    t2.HeaderText = "Nume";
                    t2.HeaderStyle.Font.Bold = true;
                    GridView1.Columns.Add(t2);

                    t3.DataField = "R3";
                    t3.HeaderText = "Telefon";
                    t3.HeaderStyle.Font.Bold = true;
                    GridView1.Columns.Add(t3);

                    t4.DataField = "R4";
                    t4.HeaderText = "E-mail";
                    t4.HeaderStyle.Font.Bold = true;
                    GridView1.Columns.Add(t4);

                    t5.DataField = "R5";
                    t5.HeaderText = "Data operarii";
                    t5.HeaderStyle.Font.Bold = true;
                    GridView1.Columns.Add(t5);
                }
                else if (id_rap == "3")
                {

                    t1.DataField = "R1";
                    t1.HeaderText = "Client id";
                    t1.HeaderStyle.Font.Bold = true;
                    GridView1.Columns.Add(t1);

                    t2.DataField = "R2";
                    t2.HeaderText = "Tip credit";
                    t2.HeaderStyle.Font.Bold = true;
                    GridView1.Columns.Add(t2);

                    t3.DataField = "R3";
                    t3.HeaderText = "Valuta";
                    t3.HeaderStyle.Font.Bold = true;
                    GridView1.Columns.Add(t3);

                    t4.DataField = "R4";
                    t4.HeaderText = "Suma";
                    t4.HeaderStyle.Font.Bold = true;
                    GridView1.Columns.Add(t4);

                    t5.DataField = "R5";
                    t5.HeaderText = "Curs valutar la data operarii";
                    t5.HeaderStyle.Font.Bold = true;
                    GridView1.Columns.Add(t5);

                    t6.DataField = "R6";
                    t6.HeaderText = "Perioada";
                    t6.HeaderStyle.Font.Bold = true;
                    GridView1.Columns.Add(t6);

                    t7.DataField = "R7";
                    t7.HeaderText = "Perioada amanare plata";
                    t7.HeaderStyle.Font.Bold = true;
                    GridView1.Columns.Add(t7);

                    t8.DataField = "R8";
                    t8.HeaderText = "Grad de indatorare";
                    t8.HeaderStyle.Font.Bold = true;
                    GridView1.Columns.Add(t8);

                    t9.DataField = "R9";
                    t9.HeaderText = "Data operare";
                    t9.HeaderStyle.Font.Bold = true;
                    GridView1.Columns.Add(t9);
                }
                else if (id_rap == "4")
                {

                    t1.DataField = "R1";
                    t1.HeaderText = "%Cereri stauts social";
                    t1.HeaderStyle.Font.Bold = true;
                    GridView1.Columns.Add(t1);


                    t2.DataField = "R2";
                    t2.HeaderText = "Tip credit";
                    t2.HeaderStyle.Font.Bold = true;
                    GridView1.Columns.Add(t2);

                    t3.DataField = "R3";
                    t3.HeaderText = "Status social";
                    t3.HeaderStyle.Font.Bold = true;
                    GridView1.Columns.Add(t3);

                }
                else if (id_rap == "5")
                {

                    t1.DataField = "R1";
                    t1.HeaderText = "Client id";
                    t1.HeaderStyle.Font.Bold = true;
                    GridView1.Columns.Add(t1);

                    t2.DataField = "R2";
                    t2.HeaderText = "Tip credit";
                    t2.HeaderStyle.Font.Bold = true;
                    GridView1.Columns.Add(t2);

                    t3.DataField = "R3";
                    t3.HeaderText = "Valuta";
                    t3.HeaderStyle.Font.Bold = true;
                    GridView1.Columns.Add(t3);

                    t4.DataField = "R4";
                    t4.HeaderText = "Suma";
                    t4.HeaderStyle.Font.Bold = true;
                    GridView1.Columns.Add(t4);

                    t5.DataField = "R5";
                    t5.HeaderText = "Grad de indatorare";
                    t5.HeaderStyle.Font.Bold = true;
                    GridView1.Columns.Add(t5);

                    t6.DataField = "R6";
                    t6.HeaderText = "Punctaj";
                    t6.HeaderStyle.Font.Bold = true;
                    GridView1.Columns.Add(t6);

                    t7.DataField = "R7";
                    t7.HeaderText = "Incadrare scor";
                    t7.HeaderStyle.Font.Bold = true;
                    GridView1.Columns.Add(t7);
                }
                else if (id_rap == "7")
                {

                    t1.DataField = "R1";
                    t1.HeaderText = "Client id";
                    t1.HeaderStyle.Font.Bold = true;
                    GridView1.Columns.Add(t1);

                    t2.DataField = "R2";
                    t2.HeaderText = "Grad de risc";
                    t2.HeaderStyle.Font.Bold = true;
                    GridView1.Columns.Add(t2);

                    t3.DataField = "R3";
                    t3.HeaderText = "Valuta";
                    t3.HeaderStyle.Font.Bold = true;
                    GridView1.Columns.Add(t3);

                    t4.DataField = "R4";
                    t4.HeaderText = "Suma";
                    t4.HeaderStyle.Font.Bold = true;
                    GridView1.Columns.Add(t4);

                    t5.DataField = "R5";
                    t5.HeaderText = "Perioada";
                    t5.HeaderStyle.Font.Bold = true;
                    GridView1.Columns.Add(t5);

                    t6.DataField = "R6";
                    t6.HeaderText = "Data operarii";
                    t6.HeaderStyle.Font.Bold = true;
                    GridView1.Columns.Add(t6);

                }
            }
                
                GridView1.DataSource = ds;
                GridView1.DataBind();
            
 
        }

        public void Excel_exp(object sender, EventArgs e)
        {
            Response.Clear();

            Response.AddHeader("content-disposition", "attachment; filename=Raport_" + Label12.Text + "_" + DateTime.Now.ToString("dd-MM-yyyy") + ".xls");
            Response.Charset = "";

            Response.ContentType = "application/vnd.xls";

            StringWriter stringWriter = new StringWriter();
            HtmlTextWriter htmlWriter = new HtmlTextWriter(stringWriter);

            GridView1.RenderControl(htmlWriter);
            Response.Write(stringWriter.ToString());

            Response.End();
        }

        public override void VerifyRenderingInServerForm(Control control)
        {
            /* Confirms that an HtmlForm control is rendered for the specified ASP.NET
               server control at run time. */
        }

    }
}