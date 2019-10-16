using Aspnet3Camadas.BLL.Controler;
using Aspnet3Camadas.DTO;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;



namespace WebApplication2WD.Paginas_certas
{
    public partial class AdicionarEditarCD : System.Web.UI.Page

    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }
       

        protected void salvarButton1_Click(object sender, EventArgs e)
        {
            

            try
            {
                if (nomeTextBox1.Text != "" && autorTextBox1.Text != "" )
                {
                    CDController salva = new CDController();
                    CD cd = new CD();

                    cd.Nome = nomeTextBox1.Text;
                    cd.Autor = autorTextBox1.Text;
                    cd.Data_Criacao = Convert.ToDateTime(dataTextBox2.Text);

                    salva.Inserir(cd);

                    nomeTextBox1.Text = string.Empty;
                    autorTextBox1.Text = string.Empty;
                    dataTextBox2.Text = string.Empty;


                    salvaLabel.Text = "salvo com sucesso!";
                }
                else
                {
                   salvaLabel.Text = "Possui alguns campos vazios! ";
                   
                }
                    nomeTextBox1.Text = String.Empty;
                   autorTextBox1.Text = String.Empty;


            }
            
            catch (Exception ex)
            {

                salvaLabel.Text = ex.Message;
              
            }



        }
    }
}