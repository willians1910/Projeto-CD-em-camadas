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
    public partial class AdicionarEditarMusica : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void salvarButton1_Click(object sender, EventArgs e)
        {

            try
            {
                if (nomemusicaTextBox1.Text != "" && idmusicaTextBox1.Text != "")
                {

                    MusicaController salvar = new MusicaController();
                    Musica music = new Musica();

                    music.Nome_Musica = nomemusicaTextBox1.Text;
                    music.Cd_IdMusica = Convert.ToInt32(idmusicaTextBox1.Text);
                    music.Tempo_Segundos = tempoTextBox1.Text;

                    salvar.Inserir(music);


                    nomemusicaTextBox1.Text = string.Empty;
                    idmusicaTextBox1.Text = string.Empty;
                    tempoTextBox1.Text = string.Empty;

                    salvarmLabel1.Text = "salvo com sucesso!";

                }

                
                else
                {
                    salvarMLabel.Text = string.Empty;
                    salvarMLabel.Text = "Algum campo está fazio ou não confere";
                }

            }
            catch (Exception ex)
            {

                salvarmLabel1.Text = ex.Message;
            }
          

        }

        protected void editarButton1_Click(object sender, EventArgs e)
        {
            //MusicaRepositorio edit = new MusicaRepositorio();
            //Musica editmusic = new Musica();


            //editmusic.Musica_Id = Convert.ToInt32(idmusicaTextBox1.Text);
            //editmusic.Nome_Musica = nomemusicaTextBox1.Text;
            //editmusic.Cd_IdMusica = Convert.ToInt32(idmusicaTextBox1.Text);
            //editmusic.Tempo_Segundos = Convert.ToInt32(tempoTextBox1.Text);

            //edit.AtualizarMusica(editmusic);

        }

        protected void editarButton1_Click1(object sender, EventArgs e)
        {

        }

        protected void editarButton1_Click2(object sender, EventArgs e)
        {

        }
    }
}