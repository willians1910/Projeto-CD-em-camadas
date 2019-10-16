<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdicionarEditarCD.aspx.cs" Inherits="WebApplication2WD.Paginas_certas.AdicionarEditarCD" %>

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
            <h2 class="text-center color alert-danger">Cadastro de CD!</h2>
            <h6 class="text-center">&nbsp;</h6>


            <h3>Iclusão de CD's'</h3>
            <br />
            <div class="form-group">
            </div>
            <div class="container align-content-center">
                <asp:Label ID="nomeLabel1" runat="server" Text="Nome:"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="nomeTextBox1" runat="server" Width="464px"></asp:TextBox>

            </div>

                 <div class="container align-content-center">

                <asp:Label ID="autorLabel1" runat="server" Text="Autor:"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="autorTextBox1" runat="server" Height="27px" Width="458px"></asp:TextBox>
            </div>



                 <div class="container align-content-center">

                <asp:Label ID="dateLabe" runat="server" Text="Data da Criação:  "></asp:Label>
                <asp:TextBox ID="dataTextBox2" TextMode="Date" runat="server"> </asp:TextBox>
            </div>
        </div>

        <br />

        <asp:Button ID="salvarButton1" class="btn btn-success" runat="server" Text="Salvar" OnClick="salvarButton1_Click" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

        <asp:Label ID="salvaLabel" runat="server" Text="Label"></asp:Label>
        
     

        <asp:LinkButton ID="voltahomeLinkButton" class=" btn btn-danger" runat="server" PostBackUrl="~/Views/listaDeCD.aspx">Voltar</asp:LinkButton>

          

    </form>
</body>
</html>
