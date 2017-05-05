<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LogInPage.aspx.cs" Inherits="AdminUnivPrereq.LogInPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        #TextArea1 {
            height: 119px;
            width: 669px;
        }
        .auto-style1 {
            width: 100%;
            height: 70px;
            margin-top: 2px;
        }
        .auto-style2 {
            width: 182px;
            text-align: right;
        }
        .auto-style3 {
            width: 182px;
            text-align: right;
            height: 30px;
        }
        .auto-style4 {
            height: 30px;
        }
        #Password1 {
            width: 212px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div style="height: 526px">
    
        <asp:TextBox ID="TextBox1" runat="server" BackColor="#FFC062" BorderStyle="Solid" Font-Bold="True" Font-Size="X-Large" Height="56px" OnTextChanged="TextBox1_TextChanged" Width="963px">University Prerequisite Checking</asp:TextBox>
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">Email&nbsp; ID:</td>
                <td>
                    <asp:TextBox ID="TextBoxEmailID" runat="server" BorderStyle="Solid" Height="21px" Width="392px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Password:</td>
                <td>
                    <asp:TextBox ID="TextBoxPwd" TextMode="Password" runat="server" BorderStyle="Solid" Height="21px" Width="393px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3"></td>
                <td class="auto-style4">
                    <asp:Button ID="ButtonLogIn" runat="server" ForeColor="Black" OnClick="Button1_Click" Text="LogIn" Width="117px" />
                    <asp:Label ID="Label1" runat="server" ForeColor="Red"></asp:Label>
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
