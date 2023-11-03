<%@ Page Title="" Language="C#" MasterPageFile="~/PaginaMaestra.Master" AutoEventWireup="true" CodeBehind="PGPrestaciones.aspx.cs" Inherits="GesPresta.PGPrestaciones" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .texto {
            display: inline-block;
            width: 45%;
            margin: 5px;
            text-align: right;
            margin-left: -150px;
            margin-right: 30px;
        }

        #titulo {
            text-align: center;
            font-size: large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p id="titulo">DATOS DE LAS PRESTACIONES</p>
    <div>
        <div class="texto">Código prestacion</div>
        <asp:TextBox ID="txtCodPre" runat="server" Width="115px"></asp:TextBox>
    </div>
    <br />
    <div>
        <div class="texto">Descripcion</div>
        <asp:TextBox ID="txtDesPre" runat="server" Width="590px"></asp:TextBox>
    </div>
    <br />
    <div>
        <div class="texto">Importe fijo</div>
        <asp:TextBox ID="txtImpPre" runat="server" Width="115px"></asp:TextBox>
    </div>
    <br />
    <div>
        <div class="texto">Porcentaje del importe</div>
        <asp:TextBox ID="txtPorPre" runat="server" Width="115px"></asp:TextBox>
    </div>
    <br />
    <div>
        <div class="texto">Tipo de prestacion</div>
        <asp:DropDownList ID="ddlDepEmp" runat="server">
            <asp:ListItem>Dentaria</asp:ListItem>
            <asp:ListItem>Familiar</asp:ListItem>
            <asp:ListItem Selected="True">Ocular</asp:ListItem>
            <asp:ListItem>Otras</asp:ListItem>
        </asp:DropDownList>
    </div>
    <p>
        <asp:Button ID="cmdEnviar" runat="server" Text="Enviar"/>
    </p>
</asp:Content>
