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
    public partial class CDmaisMusica : System.Web.UI.Page
    {

        string connectionString = @"Data Source=SINSAON315\SQLEXPRESS;Initial Catalog=DB_TesteSinqia;User ID=sa;Password=1234";

        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                using (SqlConnection sqlCon = new SqlConnection(connectionString))
                {
                    sqlCon.Open();
                    SqlDataAdapter sqlDa = new SqlDataAdapter("CDmaisMusicas", sqlCon);
                    DataTable dtbl = new DataTable();
                    sqlDa.Fill(dtbl);
                    gvCDmaisMusica.DataSource = dtbl;
                    gvCDmaisMusica.DataBind();

                }
            }
            catch (Exception ex)
            {
               statusLabel1.Text = ex.Message;

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

                    statusLabel1.Text = "Excluido com sucesso com sucesso!";
                }
                else
                {

                    statusLabel1.Text = "ERRO NO ID";
                }
            }
            
              
            catch (Exception)
            {

                statusLabel1.Text = "Não foi reconhecido o Caracter"; 
            }
        }

        protected void gvCDmaisMusica_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}