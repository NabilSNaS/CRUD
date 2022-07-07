<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div style="padding:15px">

        <table class="nav-justified">
            <tr>
                <td colspan="2" style="font-family: 'Bahnschrift SemiLight Condensed'; font-size: xx-large; color: #000066; background-color: #669999;">Complete CRUD with ASP.NET and SQL</td>
            </tr>
            <tr>
                <td style="width: 116px">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 116px; height: 38px">
                    <asp:Label ID="Label1" runat="server" style="font-size: large; background-color: #FFFFFF" Text="Employee ID"></asp:Label>
                </td>
                <td style="height: 38px">
                    <asp:TextBox ID="TextBox1" runat="server" Height="30px" Width="201px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button4" runat="server" Height="30px" OnClick="Button4_Click" Text="Show Information" Width="134px" />
                </td>
            </tr>
            <tr>
                <td style="width: 116px; height: 38px">
                    <asp:Label ID="Label2" runat="server" style="font-size: large; background-color: #FFFFFF" Text="Name"></asp:Label>
                </td>
                <td style="height: 38px">
                    <asp:TextBox ID="TextBox2" runat="server" Height="30px" Width="201px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 116px">
                    <asp:Label ID="Label5" runat="server" style="font-size: large; background-color: #FFFFFF" Text="City"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server" Height="30px" Width="120px">
                        <asp:ListItem>Chicago</asp:ListItem>
                        <asp:ListItem Value="New York">New</asp:ListItem>
                        <asp:ListItem Value="Thiland"></asp:ListItem>
                        <asp:ListItem Value="India"></asp:ListItem>
                        <asp:ListItem>Bangladesh</asp:ListItem>
                        <asp:ListItem>Nepal</asp:ListItem>
                        <asp:ListItem>China</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td style="width: 116px; height: 22px">
                    <asp:Label ID="Label3" runat="server" style="font-size: large; background-color: #FFFFFF" Text="Age"></asp:Label>
                </td>
                <td style="height: 22px">
                    <asp:TextBox ID="TextBox3" runat="server" Height="30px" Width="201px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 116px; height: 38px">
                    <asp:Label ID="Label4" runat="server" style="font-size: large; background-color: #FFFFFF" Text="Sex"></asp:Label>
                </td>
                <td style="height: 38px">
                    <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal">
                        <asp:ListItem>Male</asp:ListItem>
                        <asp:ListItem>Female</asp:ListItem>
                        <asp:ListItem>Other</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
            <tr>
                <td style="width: 116px">
                    <asp:Label ID="Label7" runat="server" style="font-size: large; background-color: #FFFFFF" Text="Joining Date"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox7" runat="server" Height="30px" Width="201px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 116px; height: 38px">
                    <asp:Label ID="Label6" runat="server" style="font-size: large; background-color: #FFFFFF" Text="Contact"></asp:Label>
                </td>
                <td style="height: 38px">
                    <asp:TextBox ID="TextBox6" runat="server" Height="30px" Width="201px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 116px">&nbsp;</td>
                <td></td>
            </tr>
            <tr>
                <td style="width: 116px">&nbsp;</td>
                <td>
                    <asp:Button ID="Button1" runat="server" BackColor="#996633" ForeColor="#000066" Height="36px" OnClick="Button1_Click" Text="Register" Width="89px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button2" runat="server" BackColor="#009999" ForeColor="#000066" Height="36px" OnClick="Button2_Click" Text="Update Info" Width="89px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button3" runat="server" BackColor="#FF6666" ForeColor="#000066" Height="36px" OnClick="Button3_Click" OnClientClick="return confirm('Are You Sure to Delete?');" Text="Delete " Width="89px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button5" runat="server" Height="36px" OnClick="Button5_Click" Text="View" Width="89px" />
                </td>
            </tr>
            <tr>
                <td style="width: 116px; height: 22px"></td>
                <td style="height: 22px"></td>
            </tr>
            <tr>
                <td style="width: 116px">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 116px">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:GridView ID="GridView1" runat="server" BorderColor="#006600" Font-Bold="True" ForeColor="Black" Width="753px">
                        <HeaderStyle BackColor="#999999" BorderColor="#0033CC" />
                    </asp:GridView>
                </td>
            </tr>
        </table>

        </div>

    
</asp:Content>
