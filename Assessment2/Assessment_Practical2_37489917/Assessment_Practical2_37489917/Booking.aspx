<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Booking.aspx.cs" Inherits="Assessment_Practical2_37489917.Booking" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style4 {
            width: 720px;
        }
        .auto-style5 {
            width: 698px;
        }
        .auto-style7 {
            width: 292px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" style="background-color: #003366">
        <table style="width:100%;">
            <tr>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="Movies" Font-Bold="True" Font-Size="XX-Large" ForeColor="#009999"></asp:Label>
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
                <td class="auto-style5">
                    <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="X-Large" ForeColor="#009999" Text="Select a Date to Book Your Movie:"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="Label2" runat="server" Text="List of Movies:" Font-Bold="True" Font-Size="X-Large" ForeColor="#009999"></asp:Label>
                </td>
            </tr>
        </table>
        <table class="auto-style1">
            <tr>
                <td class="auto-style4">
                    <asp:Calendar ID="Calendar1" runat="server" Font-Bold="True" ForeColor="#009999" OnSelectionChanged="Calendar1_SelectionChanged"></asp:Calendar>
                </td>
                <td>
                    <asp:ListBox ID="lstbMovies" runat="server" AutoPostBack="True" Height="293px" Width="678px"></asp:ListBox>
                </td>
            </tr>
        </table>
        <table class="auto-style1">
            <tr>
                <td class="auto-style7">
                    <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="#009999" Text="Enter Movie by Title:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtMovie" runat="server" TabIndex="1" Width="222px"></asp:TextBox>
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
                    <asp:Button ID="btnConfirm" runat="server" Font-Bold="True" Font-Size="Large" OnClick="btnConfirm_Click" TabIndex="2" Text="Confirm" Height="85px" Width="223px" />
                </td>
            </tr>
        </table>
        <table class="auto-style1">
            <tr>
                <td>
                    <asp:Label ID="lblDisplay" runat="server" Font-Bold="True" Font-Size="X-Large" ForeColor="#009999"></asp:Label>
                </td>
            </tr>
        </table>
        <table class="auto-style1">
            <tr>
                <td>
                    <asp:Label ID="lblDays" runat="server" Font-Bold="True" Font-Size="X-Large" ForeColor="#009999"></asp:Label>
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
                    <asp:HyperLink ID="HyperLink1" runat="server" Font-Bold="True" Font-Size="X-Large" ForeColor="Aqua" NavigateUrl="~/Default.aspx">Back</asp:HyperLink>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
