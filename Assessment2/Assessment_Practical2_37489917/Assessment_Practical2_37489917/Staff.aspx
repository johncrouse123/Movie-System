<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Staff.aspx.cs" Inherits="Assessment_Practical2_37489917.Staff" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style10 {
            width: 213px;
        }
        .auto-style11 {
            width: 211px;
        }
        .auto-style12 {
            width: 207px;
        }
        .auto-style13 {
            width: 163px;
        }
        .auto-style14 {
            width: 166px;
        }
        .auto-style15 {
            width: 170px;
        }
        .auto-style16 {
            width: 172px;
        }
        .auto-style17 {
            width: 214px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" style="background-color: #FF6600">
        <table class="auto-style1">
            <tr>
                <td>
                    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="XX-Large" ForeColor="White" Text="Staff Login"></asp:Label>
                </td>
            </tr>
        </table>
        <table class="auto-style1">
            <tr>
                <td>&nbsp;</td>
            </tr>
        </table>
        <table class="auto-style1">
            <tr>
                <td class="auto-style16">
                    <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="White" Text="Username:"></asp:Label>
                </td>
                <td class="auto-style10">
                    <asp:TextBox ID="txtUsername" runat="server" ValidationGroup="Group1"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtUsername" ErrorMessage="(Enter valid username)" Font-Bold="True" Font-Size="Large" ForeColor="White" ValidationGroup="Group1"></asp:RequiredFieldValidator>
                </td>
            </tr>
        </table>
        <table class="auto-style1">
            <tr>
                <td>
                    <table class="auto-style1">
                        <tr>
                            <td>
                                <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="White" Text="(John)"></asp:Label>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
        <table class="auto-style1">
            <tr>
                <td>&nbsp;</td>
            </tr>
        </table>
        <table class="auto-style1">
            <tr>
                <td class="auto-style15">
                    <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="White" Text="Password:"></asp:Label>
                </td>
                <td class="auto-style11">
                    <asp:TextBox ID="txtPassword" runat="server" ValidationGroup="Group1"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtPassword" ErrorMessage="(Enter valid password)" Font-Bold="True" Font-Size="Large" ForeColor="White" ValidationGroup="Group1"></asp:RequiredFieldValidator>
                </td>
            </tr>
        </table>
        <table class="auto-style1">
            <tr>
                <td>
                    <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="White" Text="(123)"></asp:Label>
                </td>
            </tr>
        </table>
        <table class="auto-style1">
            <tr>
                <td>&nbsp;</td>
            </tr>
        </table>
        <table class="auto-style1">
            <tr>
                <td class="auto-style14">
                    <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="White" Text="Email:"></asp:Label>
                </td>
                <td class="auto-style12">
                    <asp:TextBox ID="txtEmail" runat="server" ValidationGroup="Group1"></asp:TextBox>
                </td>
                <td>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmail" ErrorMessage="(Enter valid email address)" Font-Bold="True" Font-Size="Large" ForeColor="White" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="Group1"></asp:RegularExpressionValidator>
                </td>
            </tr>
        </table>
        <table class="auto-style1">
            <tr>
                <td>
                    <asp:Label ID="Label7" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="White" Text="(john@gmail.com)"></asp:Label>
                </td>
            </tr>
        </table>
        <table class="auto-style1">
            <tr>
                <td>&nbsp;</td>
            </tr>
        </table>
        <table class="auto-style1">
            <tr>
                <td class="auto-style13">
                    <asp:Label ID="Label8" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="White" Text="Phone Number:"></asp:Label>
                </td>
                <td class="auto-style17">
                    <asp:TextBox ID="txtNumber" runat="server" ValidationGroup="Group1"></asp:TextBox>
                </td>
                <td>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="(Enter SA phone number)" Font-Bold="True" Font-Size="Large" ForeColor="White" ValidationExpression="^(?:\+27|0)(?:\d{2})\d{7}$" ControlToValidate="txtNumber"></asp:RegularExpressionValidator>
                </td>
            </tr>
        </table>
        <table class="auto-style1">
            <tr>
                <td>
                    <asp:Label ID="Label9" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="White" Text="(0123456789)"></asp:Label>
                </td>
            </tr>
        </table>
        <table class="auto-style1">
            <tr>
                <td>&nbsp;</td>
            </tr>
        </table>
        <table class="auto-style1">
            <tr>
                <td>
                    <asp:Button ID="btnLogin" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="#0000CC" OnClick="btnLogin_Click" Text="Login" Height="69px" ValidationGroup="Group1" Width="169px" />
                </td>
            </tr>
        </table>
        <table class="auto-style1">
            <tr>
                <td>&nbsp;</td>
            </tr>
        </table>
        <table class="auto-style1">
            <tr>
                <td>
                    <asp:HyperLink ID="HyperLink1" runat="server" Font-Bold="True" Font-Size="X-Large" NavigateUrl="~/Default.aspx" ValidateRequestMode="Disabled">Back</asp:HyperLink>
                </td>
            </tr>
        </table>
        <table class="auto-style1">
            <tr>
                <td>&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
