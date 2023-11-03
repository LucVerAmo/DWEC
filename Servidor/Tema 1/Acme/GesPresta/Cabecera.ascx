<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Cabecera.ascx.cs" Inherits="GesPresta.Cabecera" %>

<link rel="stylesheet"  type="text/css" media="screen" href="estiloCAB.css" />
<div id="contedor">
    <div id="enlaces">
        <asp:LinkButton ID="LinkButton1" runat="server" Class="link" PostBackUrl="~/Default.aspx">Inicio </asp:LinkButton>
        <asp:LinkButton ID="LinkButton2" runat="server" Class="link" PostBackUrl="~/Empleados.aspx">Empleados </asp:LinkButton>
        <asp:LinkButton ID="LinkButton3" runat="server" Class="link" PostBackUrl="~/Prestaciones.aspx">Presentaciones </asp:LinkButton>
    </div>
</div>
    <hr id="hrlink"/>
    <h1>ACME INNOVATIÓN, S. FIG.</h1>
<hr id="hrH1"/>
<p>Gestión de Prestaciones Sociales</p>
<hr id="hrP"/>
