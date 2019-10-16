<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CDmaisMusica.aspx.cs" Inherits="WebApplication2WD.Paginas_certas.CDmaisMusica" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Lista de Musicas</title>
    <link href="../Content/bootstrap.min.css" rel="stylesheet" />
    <script src="../Scripts/jquery-3.0.0.min.js"></script>
    <script src="../Scripts/bootstrap.min.js"></script>
    <script src="../Scripts/popper-utils.min.js"></script>
     <style type="text/css">
         .auto-style1 {
             margin-top: 0px;
         }
     </style>
     </head>
    <body>
  
    

   <br />

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
            <h3 class="text-center colo alert-danger"> CD's' com suas Musicas  </h3>
            <h6 class="text-center">&nbsp;</h6>
            </div>
   

    <form id="form1" runat="server">
       <div class="container form-group colo alert-dark ">

            <asp:GridView ID="gvCDmaisMusica" runat="server" AutoGenerateColumns="false" CssClass="auto-style1" OnSelectedIndexChanged="gvCDmaisMusica_SelectedIndexChanged" Width="1012px">

                <Columns>
                    <asp:BoundField DataField="Cd_id" HeaderText="ID do CD" />
                    <asp:BoundField DataField="Musica_Id" HeaderText="ID Da Musica" />
                    <asp:BoundField DataField="Nome" HeaderText="Nome" />
                    <asp:BoundField DataField="Autor" HeaderText="Autor" />
                    <asp:BoundField DataField="Nome_Musica" HeaderText="Nome da Musica" />
                    <asp:BoundField DataField="Tempo_Segundos" HeaderText="Tempo Da Musica" />
                    <asp:BoundField DataField="Data_Criacao" HeaderText="Data da Criacão" />


                </Columns>

            </asp:GridView>

          

        </div>
        <br />
          <div class="container align-content-center">

            <asp:Button ID="excluirCDLinkButton1" class="btn btn-danger" runat="server" Text="Digite o ID do CD que será excluido com suas Musicas:" OnClick="excluirCDLinkButton1_Click" />
            <asp:TextBox ID="exluirrCDTextBox2" runat="server"></asp:TextBox>
             <asp:Label ID="statusLabel1" runat="server" Text=""></asp:Label>
        </div>

        
    </form>
</body>
</html>
