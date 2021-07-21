using Oracle.ManagedDataAccess.Client;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Licenta
{
    public partial class Contact : Page
    {
        public Oracle.ManagedDataAccess.Client.OracleConnection OraConn;
        string _client;

        protected void Page_Load(object sender, EventArgs e)
        {
            System.Diagnostics.Debug.WriteLine(Session.SessionID);

            this.OraConn = new Oracle.ManagedDataAccess.Client.OracleConnection();
            OraConn.ConnectionString = String.Format(@"Data Source=(DESCRIPTION =" +
                                                "(ADDRESS = (PROTOCOL = TCP)(HOST = localhost)(PORT = 1523))" +
                                                "(CONNECT_DATA =" +
                                                "(SERVER = DEDICATED)" +
                                                "(SERVICE_NAME = primaryDB)));" +
                                                "User Id= c##admin;Password=admin");
            OraConn.Open();

            //TextBox100.Style.Add("visibility", "hidden");
            //Label101.Style.Add("visibility", "hidden");

            DataSet tab1 = new DataSet();
            OracleDataAdapter da1 = new OracleDataAdapter("select lov_coloana_id, lov_coloana from lovs_def where lov_id = 10", OraConn);
            da1.Fill(tab1);
            DropDownList1.DataValueField = tab1.Tables[0].Columns["lov_coloana_id"].ToString();
            DropDownList1.DataTextField = tab1.Tables[0].Columns["lov_coloana"].ToString();
            DropDownList1.DataSource = tab1.Tables[0];      //assigning datasource to the dropdownlist  
            DropDownList1.DataBind();

            DataSet tab2 = new DataSet();
            OracleDataAdapter da2 = new OracleDataAdapter("select lov_coloana_id, lov_coloana from lovs_def where lov_id = 9", OraConn);
            da2.Fill(tab2);
            //DropDownList DropDownList2 = new DropDownList();
            DropDownList2.DataValueField = tab2.Tables[0].Columns["lov_coloana_id"].ToString();
            DropDownList2.DataTextField = tab2.Tables[0].Columns["lov_coloana"].ToString();
            DropDownList2.DataSource = tab2.Tables[0];      //assigning datasource to the dropdownlist  
            DropDownList2.DataBind();

            DataSet tab3 = new DataSet();
            OracleDataAdapter da3 = new OracleDataAdapter("select lov_coloana_id, lov_coloana from lovs_def where lov_id = 6", OraConn);
            da3.Fill(tab3);
            //DropDownList DropDownList2 = new DropDownList();
            DropDownList3.DataValueField = tab3.Tables[0].Columns["lov_coloana_id"].ToString();
            DropDownList3.DataTextField = tab3.Tables[0].Columns["lov_coloana"].ToString();
            DropDownList3.DataSource = tab3.Tables[0];      //assigning datasource to the dropdownlist  
            DropDownList3.DataBind();

            DataSet tab4 = new DataSet();
            OracleDataAdapter da4 = new OracleDataAdapter("select lov_coloana_id, lov_coloana from lovs_def where lov_id = 4", OraConn);
            da4.Fill(tab4);
            //DropDownList DropDownList2 = new DropDownList();
            DropDownList4.DataValueField = tab4.Tables[0].Columns["lov_coloana_id"].ToString();
            DropDownList4.DataTextField = tab4.Tables[0].Columns["lov_coloana"].ToString();
            DropDownList4.DataSource = tab4.Tables[0];      //assigning datasource to the dropdownlist  
            DropDownList4.DataBind();

            DataSet tab5 = new DataSet();
            OracleDataAdapter da5 = new OracleDataAdapter("select lov_coloana_id, lov_coloana from lovs_def where lov_id = 8", OraConn);
            da5.Fill(tab5);
            //DropDownList DropDownList2 = new DropDownList();
            DropDownList5.DataValueField = tab5.Tables[0].Columns["lov_coloana_id"].ToString();
            DropDownList5.DataTextField = tab5.Tables[0].Columns["lov_coloana"].ToString();
            DropDownList5.DataSource = tab5.Tables[0];      //assigning datasource to the dropdownlist  
            DropDownList5.DataBind();

            DataSet tab6 = new DataSet();
            OracleDataAdapter da6 = new OracleDataAdapter("select lov_coloana_id, lov_coloana from lovs_def where lov_id = 7", OraConn);
            da6.Fill(tab6);
            //DropDownList DropDownList2 = new DropDownList();
            DropDownList6.DataValueField = tab6.Tables[0].Columns["lov_coloana_id"].ToString();
            DropDownList6.DataTextField = tab6.Tables[0].Columns["lov_coloana"].ToString();
            DropDownList6.DataSource = tab6.Tables[0];      //assigning datasource to the dropdownlist  
            DropDownList6.DataBind();

            DataSet tab7 = new DataSet();
            OracleDataAdapter da7 = new OracleDataAdapter("select lov_coloana_id, lov_coloana from lovs_def where lov_id = 5", OraConn);
            da7.Fill(tab7);
            //DropDownList DropDownList2 = new DropDownList();
            DropDownList7.DataValueField = tab7.Tables[0].Columns["lov_coloana_id"].ToString();
            DropDownList7.DataTextField = tab7.Tables[0].Columns["lov_coloana"].ToString();
            DropDownList7.DataSource = tab7.Tables[0];      //assigning datasource to the dropdownlist  
            DropDownList7.DataBind();

            DataSet tab8 = new DataSet();
            OracleDataAdapter da8 = new OracleDataAdapter("select lov_coloana_id, lov_coloana from lovs_def where lov_id = 3", OraConn);
            da8.Fill(tab8);
            //DropDownList DropDownList2 = new DropDownList();
            DropDownList8.DataValueField = tab8.Tables[0].Columns["lov_coloana_id"].ToString();
            DropDownList8.DataTextField = tab8.Tables[0].Columns["lov_coloana"].ToString();
            DropDownList8.DataSource = tab8.Tables[0];      //assigning datasource to the dropdownlist  
            DropDownList8.DataBind();

            DataSet tab9 = new DataSet();
            OracleDataAdapter da9 = new OracleDataAdapter("select lov_coloana_id, lov_coloana from lovs_def where lov_id = 11", OraConn);
            da9.Fill(tab9);
            //DropDownList DropDownList2 = new DropDownList();
            DropDownList9.DataValueField = tab9.Tables[0].Columns["lov_coloana_id"].ToString();
            DropDownList9.DataTextField = tab9.Tables[0].Columns["lov_coloana"].ToString();
            DropDownList9.DataSource = tab9.Tables[0];      //assigning datasource to the dropdownlist  
            DropDownList9.DataBind();

            DataSet tab10 = new DataSet();
            OracleDataAdapter da10 = new OracleDataAdapter("select lov_coloana_id, lov_coloana from lovs_def where lov_id = 12", OraConn);
            da10.Fill(tab10);
            //DropDownList DropDownList2 = new DropDownList();
            DropDownList10.DataValueField = tab10.Tables[0].Columns["lov_coloana_id"].ToString();
            DropDownList10.DataTextField = tab10.Tables[0].Columns["lov_coloana"].ToString();
            DropDownList10.DataSource = tab10.Tables[0];      //assigning datasource to the dropdownlist  
            DropDownList10.DataBind();

            DataSet tab11 = new DataSet();
            OracleDataAdapter da11 = new OracleDataAdapter("select lov_coloana_id, lov_coloana from lovs_def where lov_id = 13", OraConn);
            da11.Fill(tab11);
            //DropDownList DropDownList2 = new DropDownList();
            DropDownList26.DataValueField = tab11.Tables[0].Columns["lov_coloana_id"].ToString();
            DropDownList26.DataTextField = tab11.Tables[0].Columns["lov_coloana"].ToString();
            DropDownList26.DataSource = tab11.Tables[0];      //assigning datasource to the dropdownlist  
            DropDownList26.DataBind();
            DropDownList11.DataValueField = tab11.Tables[0].Columns["lov_coloana_id"].ToString();
            DropDownList11.DataTextField = tab11.Tables[0].Columns["lov_coloana"].ToString();
            DropDownList11.DataSource = tab11.Tables[0];      //assigning datasource to the dropdownlist  
            DropDownList11.DataBind();
            DropDownList12.DataValueField = tab11.Tables[0].Columns["lov_coloana_id"].ToString();
            DropDownList12.DataTextField = tab11.Tables[0].Columns["lov_coloana"].ToString();
            DropDownList12.DataSource = tab11.Tables[0];      //assigning datasource to the dropdownlist  
            DropDownList12.DataBind();

            OracleCommand cmd = new OracleCommand("select text from apl_text where text_id = 1", OraConn);
            Label40.Text = cmd.ExecuteScalar().ToString();


            OraConn.Close();
            //   OraConn.Dispose();
        }

        protected void btnSell_Click(object sender, EventArgs e)
        {
            ScriptManager.RegisterStartupScript(this, GetType(), "ServerControlScript", "<script>$('#sell_request').modal('show');</script>", false);
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

                string sex_button = "null";

                if (RadioButton6.Checked)
                {
                    sex_button = RadioButton6.Text;
                }
                else if (RadioButton7.Checked)
                {
                    sex_button = RadioButton7.Text;
                }

                string citiz = DropDownList26.SelectedItem.Text;

                OracleCommand oraCmd = new OracleCommand(string.Format("insert into APL_CLIENTI ( client_nume , client_prenume, client_data_nastere, client_cnp, client_sex, client_cetatenie, client_telefon, client_email)" + 
                                                                    "values('" +  TextBox1.Text + "', '" + TextBox2.Text + "', '" + TextBox3.Text + "', '" + TextBox4.Text + "', '" + sex_button + "', '" + citiz +
                                                                   "', '" + TextBox7.Text + "', '" + TextBox8.Text +
                                                                   "')"), OraConn);
                oraCmd.ExecuteNonQuery();

                //OracleCommand cmd = new OracleCommand("select last_number from all_sequences where sequence_name = 'SEQ_APL_CLIENTI'", OraConn);
                OracleCommand cmd = new OracleCommand("select max(client_id) from apl_clienti", OraConn);
                
                Session["_client"] = cmd.ExecuteScalar().ToString();


                System.Diagnostics.Debug.WriteLine("Client " + Session["_client"]);
                string tara = DropDownList11.SelectedItem.Text;
                oraCmd = new OracleCommand(string.Format("insert into APL_CLI_CARTE_IDENTITATE ( client_tip_act , ci_serie, ci_numar, ci_data_emitere, ci_data_expirare" + 
                                                        ", ci_tara_emitenta, ci_institutia_emitenta)" +
                                                                   "values('" + TextBox15.Text + "', '" + TextBox9.Text + "', '" + TextBox10.Text + "', '" + TextBox11.Text + "', '" + TextBox12.Text + "', '" + tara +
                                                                  "', '" + TextBox14.Text + "')"), OraConn);
                
                oraCmd.ExecuteNonQuery();
                string taraadr = DropDownList12.SelectedItem.Text;
                oraCmd = new OracleCommand(string.Format("insert into APL_CLI_ADRESE ( cli_tara , cli_judet, cli_oras, cli_cod_postal, cli_strada" +
                                                       ", cli_numar, cli_bloc, cli_scara, cli_nr_apart, cli_etaj)" +
                                                                  "values('" + taraadr + "', '" + TextBox17.Text + "', '" + TextBox18.Text + "', '" + TextBox19.Text + "', '" + TextBox20.Text + "', '" + TextBox21.Text +
                                                                 "', '" + TextBox22.Text + "', '" + TextBox23.Text + "', '" + TextBox24.Text + "', '" + TextBox25.Text +"')"), OraConn);

                oraCmd.ExecuteNonQuery();

                string stat_soc = DropDownList1.SelectedItem.Text;
                string med_soc = DropDownList2.SelectedItem.Text;
                string tip_loc = DropDownList3.SelectedItem.Text;
                string educ = DropDownList4.SelectedItem.Text;
                string ocup = DropDownList5.SelectedItem.Text;
                string veni = DropDownList6.SelectedItem.Text;
                string tipang = DropDownList7.SelectedItem.Text;
                string domang = DropDownList8.SelectedItem.Text;
                string domact = DropDownList9.SelectedItem.Text;
                string peri = DropDownList10.SelectedItem.Text;

                oraCmd = new OracleCommand(string.Format("insert into APL_CLI_DETALII ( cli_status_social , cli_nr_membri_fam, cli_mediu_social, cli_tip_locuinta, cli_educatie" +
                                                      ", cli_ocupatie, cli_venit_mediu, cli_tip_angajator, cli_dom_angajator, cli_dom_activitate, cli_perioada_lucrata)" +
                                                                 "values('" + stat_soc + "', '" + TextBox27.Text + "', '" + med_soc + "', '" + tip_loc + "', '" + educ +
                                                                  "', '" +ocup + "', '" + veni + "', '" +tipang + "', '" + domang + "', '" + domact + "', '"  +  peri + "')"), OraConn);

                oraCmd.ExecuteNonQuery();

                string benef_real = "null";

                if (Radio1.Checked)
                {
                    benef_real = Radio1.Text;
                }
                else if (Radio2.Checked)
                {
                    benef_real = Radio2.Text;
                }

                string pers_exp = "null";

                if (RadioButton1.Checked)
                {
                    pers_exp = RadioButton1.Text;
                }
                else if (RadioButton2.Checked)
                {
                    pers_exp = RadioButton2.Text;
                }

                string sursa_fonduri = "null";

                if (RadioButton3.Checked)
                {
                    sursa_fonduri = RadioButton3.Text;
                }
                else if (RadioButton4.Checked)
                {
                    sursa_fonduri = RadioButton4.Text;
                }
                else if (RadioButton5.Checked)
                {
                    sursa_fonduri = RadioButton5.Text;
                }

                oraCmd = new OracleCommand(string.Format("insert into APL_CLI_KYC ( cli_benef_real , cli_pers_exp, cli_sursa_fonduri)" +
                                                                 "values('" + benef_real + "', '" + pers_exp + "', '" + sursa_fonduri + "')"), OraConn);

                oraCmd.ExecuteNonQuery();

                System.Diagnostics.Debug.WriteLine("Insert started");

                System.Threading.Thread.Sleep(20);
                Response.Redirect("AplicareCredit.aspx", true);

                Response.Write("Connected to Oracle " + OraConn.ServerVersion);
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

        //protected void ButtonSubmit2_Click(object sender, EventArgs e)
        //{
        //    try
        //    {
        //        if (OraConn.State != ConnectionState.Closed)
        //        {
        //            OraConn.Close();
        //        }
        //        //OracleConnection Con = new OracleConnection(TNS);
        //        OraConn.Open();
        //        System.Diagnostics.Debug.WriteLine("Insert connection opened");

        //        System.Diagnostics.Debug.WriteLine("Insert started");

        //        string sex_button = "null";

        //        if (RadioButton6.Checked)
        //        {
        //            sex_button = RadioButton6.Text;
        //        }
        //        else if (RadioButton7.Checked)
        //        {
        //            sex_button = RadioButton7.Text;
        //        }

        //        string citiz_button = "null";

        //        if (RadioButton8.Checked)
        //        {
        //            citiz_button = RadioButton8.Text;
        //        }
        //        else if (RadioButton9.Checked)
        //        {
        //            citiz_button = RadioButton9.Text;
        //        }

        //        OracleCommand oraCmd = new OracleCommand(string.Format("insert into APL_CLI_CARTE_IDENTITATE ( client_tip_act , ci_serie, ci_numar, ci_data_emitere, ci_data_expirare, ci_tara_emitenta, ci_institutia_emitenta)" +
        //                                                            "values('" + TextBox15.Text + "', '" + TextBox9.Text + "', '" + TextBox10.Text + "', '" + TextBox11.Text + "', '" + TextBox12.Text + "', '" + TextBox13.Text +
        //                                                           "', '" + TextBox14.Text +  "')"), OraConn);

        //        //System.Diagnostics.Debug.WriteLine(string.Format("insert into customers (customer_id, customer_name)" + "values('" + '1' + "', '" + TextBox1.Text + "')"));
        //        oraCmd.ExecuteNonQuery();
        //        System.Diagnostics.Debug.WriteLine("Insert started");
        //        Response.Write("Connected to Oracle " + OraConn.ServerVersion);
        //        OraConn.Close();
        //        System.Diagnostics.Debug.WriteLine("Insert connection closed");
        //        //Response.Write("disConnected to Oracle " + OraConn.ServerVersion);
        //        Response.Redirect(Request.RawUrl);
        //        //pnlFormFields.Visible = false;
        //        //pnlThankYouMessage.Visible = true;
        //    }
        //    catch (Exception ex)
        //    {
        //        System.Diagnostics.Debug.WriteLine("Insert Error " + ex);
        //    }
        //}
        //protected void Button1Submit_Click(object sender, EventArgs e)
        //{
        //    try
        //    {
        //        if (OraConn.State != ConnectionState.Closed)
        //        {
        //            OraConn.Close();
        //        }
        //        //OracleConnection Con = new OracleConnection(TNS);
        //        OraConn.Open();
        //        System.Diagnostics.Debug.WriteLine("Insert connection opened");

        //        System.Diagnostics.Debug.WriteLine("Insert started");

        //        string sex_button = "null";


        //        OracleCommand oraCmd = new OracleCommand(string.Format("insert into APL_CLIENTI_CARTE_IDENTITATE (client_id, client_bul_serie, client_bul_nr, client_bul_data_emit, client_bul_data_exp, client_instit_emit)" +
        //                                                           "values(" + "seq_apl_clienti.currval" + ", '" + TextBox9.Text + "', '" + TextBox10.Text + "', '" + TextBox11.Text + "', '" + TextBox12.Text + 
        //                                                           "', '" + TextBox13.Text + "')"), OraConn);

        //        //System.Diagnostics.Debug.WriteLine(string.Format("insert into customers (customer_id, customer_name)" + "values('" + '1' + "', '" + TextBox1.Text + "')"));
        //        oraCmd.ExecuteNonQuery();
        //        System.Diagnostics.Debug.WriteLine("Insert started");
        //        Response.Write("Connected to Oracle " + OraConn.ServerVersion);
        //        OraConn.Close();
        //        System.Diagnostics.Debug.WriteLine("Insert connection closed");
        //        //Response.Write("disConnected to Oracle " + OraConn.ServerVersion);
        //        Response.Redirect(Request.RawUrl);
        //        //pnlFormFields.Visible = false;
        //        //pnlThankYouMessage.Visible = true;
        //    }
        //    catch (Exception ex)
        //    {
        //        System.Diagnostics.Debug.WriteLine("Insert Error " + ex);
        //    }
        //}

    }
}