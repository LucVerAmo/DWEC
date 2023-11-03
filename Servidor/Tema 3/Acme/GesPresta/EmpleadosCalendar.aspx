<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EmpleadosCalendar.aspx.cs" Inherits="GesPresta.EmpleadosCalendar" %>

<%@ Register Src="Cabecera.ascx" TagName="Cabecera" TagPrefix="uc1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link rel="stylesheet" type="text/css" media="screen" href="estiloEMPC.css" />
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
                <asp:RadioButtonList ID="rblSexEmp" runat="server" RepeatDirection="Horizontal" class="sexo">
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
            <div style="height: 230px">
                <div>
                    <div class="nac">
                        Fecha nacimiento
                        <div>
                            <asp:TextBox ID="txtNac" runat="server"></asp:TextBox>
                        </div>
                    </div>
                    <asp:Calendar ID="calNac" runat="server" class="calendario" OnSelectionChanged="calNac_SelectionChanged">
                        <WeekendDayStyle BackColor="#FFFF66" />
                    </asp:Calendar>
                    <div class="ing">
                        Fecha de ingreso
                        <div>
                            <asp:TextBox ID="txtIng" runat="server"></asp:TextBox>
                        </div>
                    </div>
                     <asp:Calendar ID="calIn" runat="server" class="calendario" OnSelectionChanged="calIn_SelectionChanged">
                        <WeekendDayStyle BackColor="Yellow" />
                    </asp:Calendar>
                    <div class="anti">
                        Antigüedad:
                    <br />
                        <asp:TextBox ID="txtAnyos" runat="server"></asp:TextBox>
                        Años 
                    <br />
                        <asp:TextBox ID="txtMeses" runat="server"></asp:TextBox>
                        Meses
                    <br />
                        <asp:TextBox ID="txtDias" runat="server"></asp:TextBox>
                        Días
                    </div>
                   
                </div>
            </div>
            <br />
            <div>
                <asp:Label ID="lblErrores" runat="server" Visible="False" Class="labelError" BackColor="Red" Font-Size="X-Large"></asp:Label>
            </div>
            <p>
                <asp:Button ID="cmdEnviar" runat="server" Text="Enviar" OnClick="cmdEnviar_Click"/>
            </p>
        </div>
    </form>
</body>
</html>
