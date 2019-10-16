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
    public partial class ListaDeMusicas : System.Web.UI.Page
    {
        string connectionString = @"Data Source=SINSAON315\SQLEXPRESS;Initial Catalog=DB_TesteSinqia;User ID=sa;Password=1234";

        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                using (SqlConnection sqlCon = new SqlConnection(connectionString))
                {
                    sqlCon.Open();
                    SqlDataAdapter sqlDa = new SqlDataAdapter("SELECT * FROM  TB_MUSICA", sqlCon);
                    DataTable dtbl = new DataTable();
                    sqlDa.Fill(dtbl);
                    gvMusica.DataSource = dtbl;
                    gvMusica.DataBind();

                }

            }
            catch (Exception)
            {

                throw;
            }
        


        }

        protected void gvMusica_SelectedIndexChanged(object sender, EventArgs e)
        {
          




        }

        protected void excluirLinkButton1_Click(object sender, EventArgs e)
        {
            try
            {
                if (exluirmusicaTextBox2.Text != "") 
                {
                    MusicaController excluir = new MusicaController();
                    Musica exmusic = new Musica();

                    exmusic.Musica_Id = Convert.ToInt32(exluirmusicaTextBox2.Text);


                    excluir.Excluir(exmusic.Musica_Id);

                    erroLabel1.Text = string.Empty;
                    statusexcluirmusicaLabel1.Text = "Excluido com sucesso";
                  
                }
                else
                {   
                    statusexcluirmusicaLabel1.Text = string.Empty;
                    erroLabel1.Text = "ERRO NO ID";
                }
            }
            catch (Exception ex )
            {

                statusexcluirmusicaLabel1.Text = ex.Message;
            }
        


        }
    }
}