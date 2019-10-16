<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdicionarEditarMusica.aspx.cs" Inherits="WebApplication2WD.Paginas_certas.AdicionarEditarMusica" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Edição / Inclução de CD's'</title>
    <link href="../Content/bootstrap.min.css" rel="stylesheet" />
    <script src="../Scripts/jquery-3.0.0.min.js"></script>
    <script src="../Scripts/bootstrap.min.js"></script>
    <script src="../Scripts/popper-utils.min.js"></script>



</head>
<body>


   

    <form id="form1" runat="server">

   <br />
       
          <div class="container form-group">
            <br />
            <h2 class="text-center color alert-dark">Cadastro de Musica!</h2>
            <h6 class="text-center">&nbsp;</h6>
            </div>
           
        
               <div class="container form-group">
                    <asp:Label ID="nomemusicaLabel1" runat="server" Text="Nome da musica:"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="nomemusicaTextBox1" runat="server" Width="464px"></asp:TextBox>
                </div>

        <br />

                <br />

             <div class="container form-group">

                    <asp:Label ID="id_musicaLabel1" runat="server" Text="Forneça o ID do CD :"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="idmusicaTextBox1" runat="server" Width="464px"></asp:TextBox>
                </div>


               



              <div class="container form-group">

                    <br />
                    <div>
                    <asp:Label ID="tempoLabel1" runat="server" Text="Tempo em segundos::"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="tempoTextBox1" runat="server" Height="27px" Width="458px" TextMode="Time"></asp:TextBox>
                </div>

            </div>

            <br />
           <div class="container form-group">
                <asp:Button ID="salvarButton1" class="btn btn-success" runat="server" Text="Salvar" OnClick="salvarButton1_Click" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         
                <asp:LinkButton ID="voltahomeLinkButton" class=" btn btn-danger" runat="server" PostBackUrl="~/Views/ListaDeMusicas.aspx">Voltar </asp:LinkButton>
            </div>


      

          
        <p>
         
                <asp:Label ID="salvarmLabel1" runat="server" Text="Status"></asp:Label>
                <asp:Label ID="salvarMLabel" runat="server" Text="Status"></asp:Label>

           
        </p>
    </form>
</body>
</html>
