<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="editarCD.aspx.cs" Inherits="WebApplication2WD.Paginas_certas.editarCD" %>

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

            <div class="container align-content-center">
            <br />
            <h2 class="text-center color alert-danger">Editar  CD!</h2>
            <h6 class="text-center">&nbsp;</h6>


            <h3>Edição / Editar  CD's'</h3>
            <br />


             <div class="container align-content-center">

                <asp:Label ID="idcdLabel1" runat="server" Text="ID do CD que deseja alterar:"></asp:Label>
                &nbsp;
            <asp:TextBox ID="alteraridcdTextBox1" runat="server" Width="464px"></asp:TextBox>
            </div>




               <div class="container align-content-center">

                <asp:Label ID="editarnomeLabel1" runat="server" Text="Nome:"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="editarnomecdTextBox1" runat="server" Width="464px"></asp:TextBox>
            </div>


     <div class="container align-content-center">

                <asp:Label ID="editarautorLabel1" runat="server" Text="Autor:"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="editarautorcdTextBox1" runat="server" Height="27px" Width="458px"></asp:TextBox>
            </div>



              <div class="container align-content-center">

                <asp:Label ID="editardateLabe" runat="server" Text="Data da Criação:  "></asp:Label>
                <asp:TextBox ID="editardatacdTextBox2" TextMode="Date" runat="server"> </asp:TextBox>
            </div>
        </div>

        <br />
           <div class="container align-content-center">
        <asp:Button ID="editarButton1" class="btn btn-success" runat="server" Text="Editar CD" OnClick="editarButton1_Click" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <asp:LinkButton ID="voltahomeLinkButton" class=" btn btn-danger" runat="server" PostBackUrl="~/Views/listaDeCD.aspx">Voltar</asp:LinkButton>

        <asp:Label ID="statuseditLabel1" runat="server" Text=""></asp:Label>
            </div>

    </form>
</body>
</html>
