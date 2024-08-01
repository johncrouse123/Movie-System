<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Maintain.aspx.cs" Inherits="Assessment_Practical2_37489917.Maintain" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 31px;
        }
        .auto-style2 {
            width: 359px;
        }
        .auto-style5 {
            height: 31px;
            width: 359px;
        }
        .auto-style9 {
            width: 77px;
        }
        .auto-style10 {
            margin-left: 0px;
        }
        .auto-style11 {
            width: 84px;
        }
        .auto-style13 {
            width: 85px;
        }
        .auto-style14 {
            width: 214px;
        }
        .auto-style15 {
            width: 213px;
        }
        .auto-style16 {
            width: 185px;
        }
        .auto-style17 {
            width: 103px;
        }
        .auto-style18 {
            width: 139px;
        }
        .auto-style19 {
            width: 101px;
        }
        .auto-style20 {
            width: 116px;
        }
        .auto-style21 {
            width: 98px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" style="background-color: #FF6600">
        <table style="width:100%;">
            <tr>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="Maintain Movies" Font-Bold="True" Font-Size="XX-Large" ForeColor="White"></asp:Label>
                </td>
            </tr>
        </table>
        <table style="width:100%;">
            <tr>
                <td>&nbsp;</td>
            </tr>
        </table>
        <table style="width:100%;">
            <tr>
                <td>
                    <asp:GridView ID="dgvMovies" runat="server" Font-Bold="True" ForeColor="White">
                    </asp:GridView>
                </td>
            </tr>
        </table>
        <table style="width:100%;">
            <tr>
                <td>&nbsp;</td>
            </tr>
        </table>
        <table style="width:100%;">
            <tr>
                <td class="auto-style5">
                    <asp:Label ID="Label2" runat="server" Text="Search:" Font-Bold="True" Font-Size="X-Large" ForeColor="White"></asp:Label>
                </td>
                <td class="auto-style1">
                    <asp:Label ID="Label5" runat="server" Text="Delete by Title:" Font-Bold="True" Font-Size="X-Large" ForeColor="White"></asp:Label>
                </td>
            </tr>
        </table>
        <table style="width:100%;">
            <tr>
                <td class="auto-style2">
                    <asp:TextBox ID="txtSearch" runat="server" OnTextChanged="txtSearch_TextChanged"></asp:TextBox>
                </td>
                <td>
                    <asp:TextBox ID="txtDelete" runat="server" Width="187px" TabIndex="2"></asp:TextBox>
                </td>
            </tr>
        </table>
        <table style="width:100%;">
            <tr>
                <td class="auto-style2">
                    <asp:Button ID="btnSearch" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="#0000CC" OnClick="Button1_Click" TabIndex="1" Text="Search Movies" />
                </td>
                <td>
                    <asp:Button ID="btnDelete" runat="server" OnClick="btnDelete_Click" Text="Remove Movie" Font-Bold="True" Font-Size="Large" ForeColor="#0000CC" TabIndex="3" />
                </td>
            </tr>
        </table>
        <table style="width:100%;">
            <tr>
                <td>&nbsp;</td>
            </tr>
        </table>
        <table style="width:100%;">
            <tr>
                <td>&nbsp;</td>
            </tr>
        </table>
        <table style="width:100%;">
            <tr>
                <td>&nbsp;</td>
            </tr>
        </table>
        <table style="width:100%;">
            <tr>
                <td>
                    <asp:Label ID="Label3" runat="server" Text="Insert and Update:" Font-Bold="True" Font-Size="X-Large" ForeColor="White"></asp:Label>
                </td>
            </tr>
        </table>
        <table style="width:100%;">
            <tr>
                <td>&nbsp;</td>
            </tr>
        </table>
        <table style="width:100%;">
            <tr>
                <td class="auto-style9">
                    <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="White" Text="Title:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtTitle" runat="server" TabIndex="4" Width="278px"></asp:TextBox>
                </td>
            </tr>
        </table>
        <table style="width:100%;">
            <tr>
                <td>&nbsp;</td>
            </tr>
        </table>
        <table style="width:100%;">
            <tr>
                <td>
                    <asp:Label ID="Label7" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="White" Text="Genre:"></asp:Label>
                </td>
            </tr>
        </table>
        <table style="width:100%;">
            <tr>
                <td class="auto-style17">
                    <asp:RadioButton ID="rdbAction" runat="server" Font-Bold="True" ForeColor="White" GroupName="Genres" OnCheckedChanged="rdbAction_CheckedChanged" TabIndex="5" Text="Action" />
                </td>
                <td class="auto-style18">
                    <asp:RadioButton ID="rdbAdventure" runat="server" Font-Bold="True" ForeColor="White" GroupName="Genres" OnCheckedChanged="rdbAdventure_CheckedChanged" TabIndex="6" Text="Adventure" />
                </td>
                <td class="auto-style19">
                    <asp:RadioButton ID="rdbDrama" runat="server" Font-Bold="True" ForeColor="White" GroupName="Genres" OnCheckedChanged="rdbDrama_CheckedChanged" TabIndex="7" Text="Drama" />
                </td>
                <td class="auto-style20">
                    <asp:RadioButton ID="rdbComedy" runat="server" Font-Bold="True" ForeColor="White" GroupName="Genres" OnCheckedChanged="rdbComedy_CheckedChanged" TabIndex="8" Text="Comedy" />
                </td>
                <td class="auto-style21">
                    <asp:RadioButton ID="rdbHorror" runat="server" Font-Bold="True" ForeColor="White" GroupName="Genres" OnCheckedChanged="rdbHorror_CheckedChanged" TabIndex="9" Text="Horror" />
                </td>
                <td>
                    <asp:RadioButton ID="rdbRomance" runat="server" Font-Bold="True" ForeColor="White" GroupName="Genres" OnCheckedChanged="rdbRomance_CheckedChanged" TabIndex="10" Text="Romance" />
                </td>
            </tr>
        </table>
        <table style="width:100%;">
            <tr>
                <td>&nbsp;</td>
            </tr>
        </table>
        <table style="width:100%;">
            <tr>
                <td class="auto-style11">
                    <asp:Label ID="Label8" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="White" Text="Rating:"></asp:Label>
                </td>
                <td class="auto-style14">
                    <asp:TextBox ID="txtRating" runat="server" CssClass="auto-style10" TabIndex="11"></asp:TextBox>
                </td>
                <td>
                    <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtRating" ErrorMessage="(Enter number 1 - 10)" Font-Bold="True" Font-Size="Large" ForeColor="White" MaximumValue="10" MinimumValue="1" Type="Integer"></asp:RangeValidator>
                </td>
            </tr>
        </table>
        <table style="width:100%;">
            <tr>
                <td>&nbsp;</td>
            </tr>
        </table>
        <table style="width:100%;">
            <tr>
                <td class="auto-style13">
                    <asp:Label ID="Label9" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="White" Text="Price:"></asp:Label>
                </td>
                <td class="auto-style15">
                    <asp:TextBox ID="txtPrice" runat="server" TabIndex="12" ValidateRequestMode="Disabled"></asp:TextBox>
                </td>
                <td>
                    <asp:RangeValidator ID="RangeValidator2" runat="server" ControlToValidate="txtPrice" ErrorMessage="(Enter a price R100 - R200)" Font-Bold="True" Font-Size="Large" ForeColor="White" MaximumValue="200" MinimumValue="100" Type="Double" ValidateRequestMode="Disabled"></asp:RangeValidator>
                </td>
            </tr>
        </table>
        <table style="width:100%;">
            <tr>
                <td>&nbsp;</td>
            </tr>
        </table>
        <table style="width:100%;">
            <tr>
                <td>&nbsp;</td>
            </tr>
        </table>
        <table style="width:100%;">
            <tr>
                <td class="auto-style16">
                    <asp:Button ID="btnInsert" runat="server" OnClick="btnInsert_Click" Text="Add Movies" Font-Bold="True" Font-Size="Large" ForeColor="#0000CC" TabIndex="13" />
                </td>
                <td>
                    <asp:Button ID="btnUpdate" runat="server" OnClick="btnUpdate_Click" Text="Update Movies" Font-Bold="True" Font-Size="Large" ForeColor="#0000CC" TabIndex="14" />
                </td>
            </tr>
        </table>
        <table style="width:100%;">
            <tr>
                <td>&nbsp;</td>
            </tr>
        </table>
        <table style="width:100%;">
            <tr>
                <td>
                    <asp:HyperLink ID="HyperLink1" runat="server" Font-Bold="True" Font-Size="X-Large" NavigateUrl="~/Staff.aspx" TabIndex="15">Back</asp:HyperLink>
                </td>
            </tr>
        </table>
        <table style="width:100%;">
            <tr>
                <td>&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
