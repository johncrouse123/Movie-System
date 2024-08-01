<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Assessment_Practical2_37489917.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 31px;
        }
        .auto-style2 {
            width: 190px;
        }
        .auto-style8 {
            width: 100%;
        }
        .auto-style9 {
            width: 206px;
        }
        .auto-style18 {
            height: 31px;
            width: 207px;
        }
        .auto-style21 {
            height: 31px;
            width: 204px;
        }
        .auto-style22 {
            width: 671px;
        }
        .auto-style23 {
            height: 31px;
            width: 188px;
        }
        .auto-style24 {
            height: 31px;
            width: 189px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" style="background-color: #003366">
        <table style="width: 100%;">
            <tr>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="MEGA Movies" Font-Bold="True" Font-Size="XX-Large" ForeColor="#66FFFF"></asp:Label>
                </td>
            </tr>
        </table>
        <table style="width: 100%;">
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="Label2" runat="server" Text="Login" Font-Bold="True" Font-Size="X-Large" ForeColor="#009999"></asp:Label>
                </td>
            </tr>
        </table>
        <table style="width: 100%;">
            <tr>
                <td class="auto-style1">&nbsp;</td>
            </tr>
        </table>
        <table style="width: 100%;">
            <tr>
                <td class="auto-style22">
                    <asp:Label ID="Label6" runat="server" Text="Viewer:" Font-Bold="True" Font-Size="X-Large" ForeColor="#009999"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="Label16" runat="server" Font-Bold="True" Font-Size="X-Large" ForeColor="#009999" Text="Staff Login:"></asp:Label>
                </td>
            </tr>
            </table>
        <table style="width: 100%;">
            <tr>
                <td class="auto-style22">&nbsp;</td>
                <td>
                    <asp:HyperLink ID="HyperLink1" runat="server" Font-Bold="True" Font-Size="X-Large" NavigateUrl="~/Staff.aspx">Login Here</asp:HyperLink>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
        <table style="width: 100%;">
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label3" runat="server" Text="Username:" Font-Bold="True" Font-Size="Large" ForeColor="#009999"></asp:Label>
                </td>
                <td class="auto-style9">
                    <asp:TextBox ID="txtViewerUser" runat="server" ValidationGroup="GroupA"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="(Enter valid username)" ControlToValidate="txtViewerUser" Font-Bold="True" ForeColor="#009999" SetFocusOnError="True" ValidationGroup="GroupA"></asp:RequiredFieldValidator>
                </td>
            </tr>
        </table>
        <table style="width: 100%;">
            <tr>
                <td>
                    <asp:Label ID="Label11" runat="server" Text="(James)" Font-Bold="True" ForeColor="#009999"></asp:Label>
                </td>
            </tr>
        </table>
        <table style="width: 100%;">
            <tr>
                <td>&nbsp;</td>
            </tr>
        </table>
        <table style="width: 100%;">
            <tr>
                <td class="auto-style23">
                    <asp:Label ID="Label4" runat="server" Text="Password:" Font-Bold="True" Font-Size="Large" ForeColor="#009999"></asp:Label>
                </td>
                <td class="auto-style18">
                    <asp:TextBox ID="txtViewerPass" runat="server" TabIndex="1" TextMode="Password" ValidationGroup="GroupA"></asp:TextBox>
                </td>
                <td class="auto-style1">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="(Enter valid password)" ControlToValidate="txtViewerPass" Font-Bold="True" ForeColor="#009999" SetFocusOnError="True" ValidationGroup="GroupA"></asp:RequiredFieldValidator>
                </td>
            </tr>
        </table>
        <table style="width: 100%;">
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="Label13" runat="server" Text="(123)" Font-Bold="True" ForeColor="#009999"></asp:Label>
                </td>
            </tr>
        </table>
        <table style="width: 100%;">
            <tr>
                <td class="auto-style1">&nbsp;</td>
            </tr>
        </table>
        <table style="width: 100%;">
            <tr>
                <td class="auto-style24">
                    <asp:Label ID="Label5" runat="server" Text="Email:" Font-Bold="True" Font-Size="Large" ForeColor="#009999"></asp:Label>
                </td>
                <td class="auto-style18">
                    <asp:TextBox ID="txtViewerEmail" runat="server" TabIndex="2" ValidationGroup="GroupA"></asp:TextBox>
                </td>
                <td class="auto-style1">
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="(Enter valid email address)" ControlToValidate="txtViewerEmail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Font-Bold="True" ForeColor="#009999" SetFocusOnError="True" ValidationGroup="GroupA"></asp:RegularExpressionValidator>
                </td>
            </tr>
        </table>
        <table style="width: 100%;">
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="Label15" runat="server" Text="(james@gmail.com)" Font-Bold="True" ForeColor="#009999"></asp:Label>
                </td>
            </tr>
        </table>
        <table style="width: 100%;">
            <tr>
                <td class="auto-style1">
                    &nbsp;</td>
            </tr>
        </table>
        <table style="width: 100%;">
            <tr>
                <td class="auto-style23">
                    <asp:Label ID="Label17" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="#009999" Text="Phone number:"></asp:Label>
                </td>
                <td class="auto-style21">
                    <asp:TextBox ID="txtNumber" runat="server" TabIndex="3" ValidationGroup="GroupA"></asp:TextBox>
                </td>
                <td class="auto-style1">
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtNumber" ErrorMessage="(Enter SA phone number)" Font-Bold="True" ForeColor="#009999" ValidationExpression="^(?:\+27|0)(?:\d{2})\d{7}$" SetFocusOnError="True" ValidationGroup="GroupA"></asp:RegularExpressionValidator>
                </td>
            </tr>
        </table>
        <table style="width: 100%;">
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="Label18" runat="server" Font-Bold="True" ForeColor="#009999" Text="(0123456789)"></asp:Label>
                </td>
            </tr>
        </table>
        <table style="width: 100%;">
            <tr>
                <td class="auto-style1">&nbsp;</td>
            </tr>
        </table>
        <table class="auto-style8">
            <tr>
                <td class="auto-style1">
                    <asp:Button ID="btnViewerLogin" runat="server" OnClick="btnViewerLogin_Click" Text="Login" TabIndex="4" Font-Bold="True" Font-Size="Large" ForeColor="#009999" ValidationGroup="GroupA" Height="83px" Width="186px" />
                </td>
            </tr>
        </table>
        <table class="auto-style8">
            <tr>
                <td class="auto-style1">&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
