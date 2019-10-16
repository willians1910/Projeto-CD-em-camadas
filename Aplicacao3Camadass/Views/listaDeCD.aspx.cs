using Aspnet3Camadas.BLL.Controler;
using Aspnet3Camadas.DTO;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace WebApplication2WD.Paginas_certas
{
    public partial class listaDeCD : System.Web.UI.Page
    {
        string connectionString = @"Data Source=SINSAON315\SQLEXPRESS;Initial Catalog=DB_TesteSinqia;User ID=sa;Password=1234";

        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                using (SqlConnection sqlCon = new SqlConnection(connectionString))
                {
                    sqlCon.Open();
                    SqlDataAdapter sqlDa = new SqlDataAdapter("SELECT * FROM  TB_CD", sqlCon);
                    DataTable dtbl = new DataTable();
                    sqlDa.Fill(dtbl);
                    gvCD.DataSource = dtbl;
                    gvCD.DataBind();

                }

            }
            catch (Exception)
            {

                throw;
            }

        }
            protected void excluirCDLinkButton1_Click(object sender, EventArgs e)
        {

            try
            {
                if (exluirrCDTextBox2.Text != "")
                {
                    CDController excluirCD = new CDController();
                    CD exCD = new CD();

                    exCD.Cd_Id = Convert.ToInt32(exluirrCDTextBox2.Text);
                    excluirCD.Excluir(exCD.Cd_Id);


                    statusexcluirLabel1.Text = "Excluido com sucesso";
                }
                else
                {
                    exluirrCDTextBox2.Text = "ID NÃO CONFERE!";
                }
            }
            catch (Exception ex)
            {

                statusexcluirLabel1.Text = ex.Message;
            }



        }
    }
}