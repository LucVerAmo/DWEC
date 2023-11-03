<%@ Page Title="" Language="C#" MasterPageFile="~/PaginaMaestra.Master" AutoEventWireup="true" CodeBehind="PMEmplea2.aspx.cs" Inherits="GesPresta.PMEmplea2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        #titulo {
            text-align: center;
            font-size: large;
        }

        .texto {
            display: inline-block;
            width: 45%;
            margin: 5px;
            text-align: right;
            margin-left: -150px;
            margin-right: 30px;
        }

        .label {
            display: flex;
            margin-left: 200px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="contenedor">
        <p id="titulo">DATOS DE LOS EMPLEADOS</p>
        <div>
            <div class="texto">Código empleado</div>
            <asp:TextBox ID="txtCodEmp" runat="server" Width="115px"></asp:TextBox>
        </div>
        <br />
        <div>
            <div class="texto">NIF</div>
            <asp:TextBox ID="txtNifEmp" runat="server" Width="115px"></asp:TextBox>
        </div>
        <br />
        <div>
            <div class="texto">Apellidos y nombre</div>
            <asp:TextBox ID="txtNomEmp" runat="server" Width="207px"></asp:TextBox>
        </div>
        <br />
        <div>
            <div class="texto">Dirección</div>
            <asp:TextBox ID="txtDirEmp" runat="server" Width="284px"></asp:TextBox>
        </div>
        <br />
        <div>
            <div class="texto">Ciudad</div>
            <asp:TextBox ID="txtCiuEmp" runat="server" Width="286px"></asp:TextBox>
        </div>
        <br />
        <div>
            <div class="texto">Teléfonos</div>
            <asp:TextBox ID="txtTelEmp" runat="server" Width="283px"></asp:TextBox>
        </div>
        <br />
        <div>
            <div class="texto">Fecha nacimiento</div>
            <asp:TextBox ID="txtFnaEmp" runat="server" Width="115px"></asp:TextBox>
        </div>
        <br />
        <div>
            <div class="texto">Fecha ingreso</div>
            <asp:TextBox ID="txtFinEmp" runat="server" Width="115px"></asp:TextBox>
        </div>
        <br />
        <div>
            <div class="texto">Sexo:</div>
            <asp:RadioButtonList ID="rblSexEmp" runat="server" RepeatDirection="Horizontal" Style="display: inline;">
                <asp:ListItem Selected="True" Value="H">Hombre</asp:ListItem>
                <asp:ListItem Value="M">Mujer</asp:ListItem>
            </asp:RadioButtonList>
        </div>
        <br />
        <div>
            <div class="texto">Departamento</div>
            <asp:DropDownList ID="ddlDepEmp" runat="server">
                <asp:ListItem Selected="True">Investigación</asp:ListItem>
                <asp:ListItem>Desarrollo</asp:ListItem>
                <asp:ListItem>Innovación</asp:ListItem>
                <asp:ListItem>Administración</asp:ListItem>
            </asp:DropDownList>
        </div>
        <p>
            <asp:Button ID="cmdEnviar" runat="server" Text="Enviar" />
        </p>
    </div>
</asp:Content>
