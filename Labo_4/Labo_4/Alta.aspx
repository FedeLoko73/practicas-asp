<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Alta.aspx.vb" Inherits="Labo_4.Alta" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <table>
    <tr>
    <td>Apellido: <asp:TextBox ID="txtApellido" runat="server" AutoPostBack="True"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
            ControlToValidate="txtApellido" Display="Dynamic" 
            ErrorMessage="Completar el apellido"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
    <td>Nombre: <asp:TextBox ID="txtNombre" runat="server"></asp:TextBox>
        <asp:Label ID="lblMensaje" runat="server"></asp:Label>
        </td>
    </tr>
    <tr>
    <td>Tipo Documento: 
        <asp:DropDownList ID="ddsTipodni" runat="server">
            <asp:ListItem Value="Dni"></asp:ListItem>
            <asp:ListItem Value="Pasaporte"></asp:ListItem>
        </asp:DropDownList>
        </td>
    </tr>
    <tr>
    <td>Nro Documento: 
        <asp:TextBox ID="txtDoc" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
    <td>Sexo:<asp:RadioButtonList ID="rbtsexo" runat="server" 
            RepeatDirection="Horizontal">
        <asp:ListItem Value="Masculino"></asp:ListItem>
        <asp:ListItem Value="Femenino"></asp:ListItem>
        </asp:RadioButtonList>
&nbsp;</td>
    </tr>
    <tr>
    <td>Cant. hs Catedra: 
        <asp:TextBox ID="txthoras" runat="server"></asp:TextBox>
        <asp:RangeValidator ID="RangeValidator1" runat="server" 
            ControlToValidate="txthoras" Display="Dynamic" 
            ErrorMessage="Ingrese hs correctas" MaximumValue="20" MinimumValue="4" 
            Type="Integer"></asp:RangeValidator>
        </td>
    </tr>
    <tr>
    <td>Direccion: 
        <asp:TextBox ID="txtdireccion" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
    <td>Unidad:<asp:TextBox ID="txtunidad" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
    <td>Mail:<asp:TextBox ID="txtmail" runat="server"></asp:TextBox>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
            ControlToValidate="txtmail" Display="Dynamic" 
            ErrorMessage="Ingrese mail valido" 
            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
    <td>Observaciones:<asp:TextBox ID="txtobs" runat="server" TextMode="MultiLine"></asp:TextBox>
        </td>
    </tr>
    </table>
    </div>
    <asp:Button ID="btnenviar" runat="server" Text="Enviar" />
    <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
    </form>
</body>
</html>
