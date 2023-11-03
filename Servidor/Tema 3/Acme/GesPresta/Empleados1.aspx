<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Empleados1.aspx.cs" Inherits="GesPresta.Empleados1" %>

<%@ Register src="Cabecera.ascx" tagname="Cabecera" tagprefix="uc1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link rel="stylesheet"  type="text/css" media="screen" href="estiloEMP.css" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <uc1:Cabecera ID="Cabecera1" runat="server" />
        </div>
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
                 <asp:RadioButtonList ID="rblSexEmp" runat="server" RepeatDirection="Horizontal">
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
            <asp:Button ID="cmdEnviar" runat="server" Text="Enviar" OnClick="cmdEnviar_Click" />
         </p>
        </div>
        <div class="label">
            <asp:Label ID="lblValores" runat="server" BackColor="#66FFFF" Visible="False" Width="60%" style="display:flex;background-color:#66FFFF;width:60%;margin-left: 200px;"></asp:Label>
        </div>
    </form>
</body>
</html>
