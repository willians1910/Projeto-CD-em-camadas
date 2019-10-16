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
    public partial class editarMusica : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            try
            {
                if (editaridmusicaTextBox1.Text != "")
                {
                    MusicaController edit = new MusicaController();
                    Musica editmusic = new Musica();


                    editmusic.Musica_Id = Convert.ToInt32(editaridmusicaTextBox1.Text);
                    editmusic.Nome_Musica = editarnomeTextBox1.Text;
                    editmusic.Cd_IdMusica = Convert.ToInt32(editaridcdTextBox1.Text);
                    editmusic.Tempo_Segundos = tempoTextBox1.Text;

                    edit.Atualizar(editmusic);

                    statuseditmusicaLabel1.Text = "Editado com sucesso";


                }
                else
                {
                    editaridmusicaTextBox1.Text = "Não confere esse ID";
                    editaridcdTextBox1.Text = "Não foi localizado";
                }
            }
            catch (Exception ex)
            {

                statuseditmusicaLabel1.Text = ex.Message;
            }

           


        }
    }
}