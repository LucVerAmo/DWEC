<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="ProductosVer.aspx.cs" Inherits="GesTienda.ProductosVer" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="InfoContenido" runat="server">
    <h1>Productos </h1>
    <p>
        <asp:Label ID="lblResultado" runat="server"></asp:Label>
        <br />
        <asp:Label ID="lblMensajes" runat="server"></asp:Label>
    </p>
</asp:Content>
