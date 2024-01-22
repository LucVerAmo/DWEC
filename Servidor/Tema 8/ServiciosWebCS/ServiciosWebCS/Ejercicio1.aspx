<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Ejercicio1.aspx.cs" Inherits="ServiciosWebCS.Ejercicio1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link rel="stylesheet" type="text/css" media="screen" href="\Estilo\estilo.css"
    <title></title>
</head>
<body>
    <h2 class="titulos">Consumir un servidor web ya existente</h2>
    <br />
    <h1 class="titulos">Titulaciones Oficiales en la Universidad de Alicante</h1>
    
    <form id="form1" runat="server">
    <div>
        <p class="texto">
            Curso académico (formato aaaa-aa)
            <asp:TextBox ID="txtCurso" runat="server"></asp:TextBox>
            <asp:Button ID="btnObtenerInformacion" runat="server" Text="Obtener información" OnClick="btnObtenerInformacion_Click" />
        </p>
        <p>

            <asp:Label ID="lblResultado" runat="server" Text=""></asp:Label>

        </p>
    </div>
        <asp:GridView ID="GridView1" runat="server">
        </asp:GridView>
    </form>
</body>
</html>
