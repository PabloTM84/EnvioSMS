<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Test_Sms.aspx.cs" Inherits="Envio_sms.Test_Sms" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 173px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>
                <asp:Label ID="Label1" runat="server" Text="Formulario de Test SMS"></asp:Label>
            </h1>
        </div>
        <div>
            <table style="width:100%;">
                <tr>
                    <td class="auto-style1" style="background-color: #000000">
                        <asp:Label ID="Label2" runat="server" style="color: #FFFFFF; background-color: #000000" Text="Datos de Envio para SMS"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="Label3" runat="server" Text="Nombre de Paciente"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtPx" runat="server" Width="274px"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="Label4" runat="server" Text="Fecha"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtFecha" runat="server" TextMode="Date"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="Label5" runat="server" Text="Hora"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtHora" runat="server" TextMode="Time"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="Label6" runat="server" Text="Clinica"></asp:Label>
                    </td>
                    <td>
                        <asp:DropDownList ID="dpClinicas" runat="server">
                            <asp:ListItem></asp:ListItem>
                            <asp:ListItem Value="17">Miraflores</asp:ListItem>
                            <asp:ListItem Value="21">Oakland Mall</asp:ListItem>
                            <asp:ListItem Value="13">Narajno Mall</asp:ListItem>
                            <asp:ListItem Value="7">Flores del Lago</asp:ListItem>
                            <asp:ListItem Value="10">Portales</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="Label7" runat="server" Text="Numero Telefono"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtTelefono" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Button ID="btnEnvio" runat="server" OnClick="btnEnvio_Click" Text="Envio Sms" />
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="lblConfirmacion" runat="server" style="font-weight: 700; font-style: italic" Visible="False"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
