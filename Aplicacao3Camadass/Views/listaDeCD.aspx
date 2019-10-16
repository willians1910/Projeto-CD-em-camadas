<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="listaDeCD.aspx.cs" Inherits="WebApplication2WD.Paginas_certas.listaDeCD" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Lista de Musicas</title>
    <link href="../Content/bootstrap.min.css" rel="stylesheet" />
    <script src="../Scripts/jquery-3.0.0.min.js"></script>
    <script src="../Scripts/bootstrap.min.js"></script>
    <script src="../Scripts/popper-utils.min.js"></script>

    </head>
    <body>
   <br />
        <span class="border border-success"></span>

               <ul class="nav justify-content-center color alert-dark">
  <li class="nav-item">
    <a class="nav-link active" href="listaDeCD.aspx">CRUD CD's'</a>
  </li>
  <li class="nav-item">
    <a class="nav-link" href="ListaDeMusicas.aspx">CRUD DE Musicas</a>
  </li>
  <li class="nav-item">
    <a class="nav-link" href="CDmaisMusica.aspx">Lista de CD com suas Musicas</a>
  </li>
  <li class="nav-item">
    <a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true">MaxMusic</a>
  </li>
</ul>
        <br />
         <div class="container align-content-center">
            <br />
            <h3 class="text-center colo alert-danger"> Lista de CD's'  </h3>
            <h6 class="text-center">&nbsp;</h6>
            </div>
   

    <form id="form1" runat="server">
           <div class="container align-content-center">

            <asp:GridView ID="gvCD" runat="server" AutoGenerateColumns="false">

                <Columns>
                    <asp:BoundField DataField="Cd_id" HeaderText="Id_Cd" />
                    <asp:BoundField DataField="Nome" HeaderText="Nome" />
                    <asp:BoundField DataField="Autor" HeaderText="Autor" />
                    <asp:BoundField DataField="Data_Criacao" HeaderText="Data da Criacão" />


                </Columns>

            </asp:GridView>


        </div>
        <br />

           <div class="container align-content-center">
            <br />
            <asp:LinkButton ID="adicionarCDaddLinkButton1" class="btn btn-primary" runat="server" PostBackUrl="~/Views/AdicionarEditarCD.aspx">Adicionar  CD</asp:LinkButton>
            <asp:LinkButton ID="editarCDeditLinkButton" class="btn btn-primary" runat="server" PostBackUrl="~/Views/editarCD.aspx">Editar CD</asp:LinkButton>


            <asp:Button ID="excluirCDLinkButton1" class="btn btn-danger" runat="server" Text="Excluir CD por ID:" OnClick="excluirCDLinkButton1_Click" />
            <asp:TextBox ID="exluirrCDTextBox2" runat="server"></asp:TextBox>

            <asp:Label ID="statusexcluirLabel1" runat="server" Text=""></asp:Label>
        </div>

    </form>
</body>
</html>
