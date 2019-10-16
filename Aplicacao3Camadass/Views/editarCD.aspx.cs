using Aspnet3Camadas.BLL.Controler;
using Aspnet3Camadas.DTO;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;



namespace WebApplication2WD.Paginas_certas
{
    public partial class editarCD : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void editarButton1_Click(object sender, EventArgs e)
        {

            try
            {

                CDController edit = new CDController();
                CD editcd = new CD();
                editcd.Cd_Id = Convert.ToInt32(alteraridcdTextBox1.Text);
                editcd.Nome = editarnomecdTextBox1.Text;
                editcd.Autor = editarautorcdTextBox1.Text;
                editcd.Data_Criacao = Convert.ToDateTime(editardatacdTextBox2.Text);

                edit.Atualizar(editcd);
                statuseditLabel1.Text = "Editado com Sucesso";
            }
            catch (Exception ex)
            {

                statuseditLabel1.Text = ex.Message;
            }

        
        }
    }
}