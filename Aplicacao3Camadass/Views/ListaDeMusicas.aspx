<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ListaDeMusicas.aspx.cs" Inherits="WebApplication2WD.Paginas_certas.ListaDeMusicas" %>

<!DOCTYPE html>


<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <body>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Lista de Musicas</title>
    <link href="../Content/bootstrap.min.css" rel="stylesheet" />
    <script src="../Scripts/jquery-3.0.0.min.js"></script>
    <script src="../Scripts/bootstrap.min.js"></script>
    <script src="../Scripts/popper-utils.min.js"></script>
    </head>
    <body>
  
     <%--   <form id="form2" runat="server">--%>

   <br />
       

        <ul class="nav justify-content-center color alert-dark">

  <li class="nav-item">
    <a class="nav-link active" href="listaDeCD.aspx">CRUD CD's'</a>
  </li>
  <li class="nav-item">
    <a class="nav-link" href="editarMusica .aspx">CRUD DE Musicas</a>
  </li>
  <li class="nav-item">
    <a class="nav-link" href="CDmaisMusica.aspx">Lista de CD com suas Musicas</a>
  </li>
  <li class="nav-item">
    <a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true">MaxMusic</a>
  </li>
</ul>
        <br />
       

            <div class="container form-group">
                <br />
                <h3 class="text-center color alert-danger">Lista de Musicas </h3>
                <h6 class="text-center">&nbsp;</h6>
                </div>
       
    
</head>

<body>
    <form id="form1" runat="server">
           <div class="container align-content-center">

            <asp:GridView ID="gvMusica" runat="server" AutoGenerateColumns="false" OnSelectedIndexChanged="gvMusica_SelectedIndexChanged" Width="910px">

                <Columns>
                    <asp:BoundField DataField="Musica_Id" HeaderText="Musica_Id" />
                    <asp:BoundField DataField="Cd_IdMusica" HeaderText="Cd_IdMusica" />
                    <asp:BoundField DataField="Nome_Musica" HeaderText="Nome da Musica" />
                    <asp:BoundField DataField="Tempo_Segundos" HeaderText="Tempo/Segundos" />


                </Columns>
            </asp:GridView>
            <br />
        </div>
        <br />
            <div class="container align-content-center">
            <asp:LinkButton ID="addLinkButton1" class="btn btn-primary" runat="server" PostBackUrl="~/Views/AdicionarEditarMusica.aspx">Adicionar  Musica</asp:LinkButton>
            <asp:LinkButton ID="editLinkButton" class="btn btn-primary" runat="server" PostBackUrl="~/Views/editarMusica .aspx">Editar Musica</asp:LinkButton>


            <asp:Button ID="excluirLinkButton1" class="btn btn-danger" runat="server" Text="Excluir Musica por ID:" OnClick="excluirLinkButton1_Click" />
            <asp:TextBox ID="exluirmusicaTextBox2" runat="server"></asp:TextBox>

            <asp:Label ID="erroLabel1" runat="server" CssClass="alert-danger" Text="Status" ></asp:Label>

            &nbsp;


            <asp:Label ID="statusexcluirmusicaLabel1" runat="server"  Text=""></asp:Label>
             <audio autoplay="autoplay" controls="controls">
                <source src="../musica.mp3" type="audio/mp3" /> 
                </div>
       
        
        <div>
        </div>

    </form>
</body>
</html>
