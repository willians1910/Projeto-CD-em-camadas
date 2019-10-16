<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="editarMusica .aspx.cs" Inherits="WebApplication2WD.Paginas_certas.editarMusica" %>

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

        <div class="container form-group">
            <br />
            <h2 class="text-center color alert-dark">Edição de Musicas!</h2>
            <h6 class="text-center">&nbsp;</h6>


            <h3>Edição de Musicas!</h3>
            <br />
            <div class="form-group">

                
               

            <div class="container form-group align-content-center">

                    <asp:Label ID="idmusicaLabel1" runat="server" Text="ID da musica que deseja alterar:"></asp:Label>
                    
     <asp:TextBox ID="editaridmusicaTextBox1" runat="server"></asp:TextBox>
                </div>

                <div class="container form-group">
                <asp:Label ID="editarnomeLabel1" runat="server" Text="Nome:"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="editarnomeTextBox1" runat="server" Width="464px"></asp:TextBox>
            </div>


          <div class="container form-group">

                <asp:Label ID="editaridcdLabel1" runat="server" Text="ID do CD da musica:"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="editaridcdTextBox1" runat="server" Height="27px" Width="458px"></asp:TextBox>
            </div>




           <div class="container form-group">

                <asp:Label ID="editarautorLabel1" runat="server" Text="Autor:"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="editarautorTextBox1" runat="server" Height="27px" Width="458px"></asp:TextBox>
            </div>



          <div class="container form-group">

                <asp:Label ID="tempoLabel1" runat="server" Text="Tempo em segundos:"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
           
              <asp:TextBox ID="tempoTextBox1" runat="server" Height="27px" Width="458px" TextMode="Time"></asp:TextBox>
            </div>

            <br />

            <asp:Button ID="Button1" class="btn btn-success" runat="server" Text="Editar" OnClick="Button1_Click1" />

            <%-- <asp:Button ID="salvarButton1" class="btn btn-success" runat="server" Text="Salvar" OnClick="salvarButton1_Click" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;--%>
            <asp:LinkButton ID="voltahomeLinkButton" class=" btn btn-danger" runat="server" PostBackUrl="~/Views/ListaDeMusicas.aspx">Voltar</asp:LinkButton>
            <asp:Label ID="statuseditmusicaLabel1" runat="server" Text=" "></asp:Label>
    </form>
</body>
</html>
