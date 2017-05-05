<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Subject.aspx.cs" Inherits="AdminUnivPrereq.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="height: 660px">
    
        <asp:TextBox ID="TextBox1" runat="server" BackColor="#FFC062" BorderStyle="Solid" Font-Bold="True" Font-Size="X-Large" Height="56px"  Width="960px">University Prerequisite Checking</asp:TextBox>
        <br />
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="SubjectID" DataSourceID="SqlDataSource1" ShowFooter="True">
            <Columns>
                <asp:CommandField ShowSelectButton="True" ShowDeleteButton="True" ShowEditButton="True" />
                        <asp:TemplateField HeaderText="SubjectID" InsertVisible="False" SortExpression="SubjectID">
                            <EditItemTemplate>
                                <asp:TextBox ID="tSubjectID" runat="server" 
                                Text='<%# Bind("SubjectID") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="lSubjectID" runat="server" 
                                Text='<%# Bind("SubjectID") %>'></asp:Label>
                            </ItemTemplate>
                            <FooterTemplate>
                                 <asp:TextBox ID="txtSubjectID" runat="server"> </asp:TextBox>
                            </FooterTemplate>

                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="Alias" InsertVisible="False" SortExpression="Alias">
                           <EditItemTemplate>
                                <asp:TextBox ID="tAlias" runat="server" 
                                Text='<%# Bind("Alias") %>'></asp:TextBox>
                            </EditItemTemplate>
                             <ItemTemplate>
                                <asp:Label ID="lAlias" runat="server" 
                                Text='<%# Bind("Alias") %>'></asp:Label>
                            </ItemTemplate>
                            <FooterTemplate>
                                 <asp:TextBox ID="txtAlias" runat="server"> </asp:TextBox>
                            </FooterTemplate>

                        </asp:TemplateField>
                
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:tamalConnectionString %>" SelectCommand="SELECT * FROM [Subject]" DeleteCommand="DELETE FROM [Subject] WHERE [SubjectID] = @SubjectID" InsertCommand="INSERT INTO [Subject] ([SubjectID], [Alias]) VALUES (@SubjectID, @Alias)" UpdateCommand="UPDATE [Subject] SET [SubjectID] = @SubjectID, [Alias] = @Alias WHERE [SubjectID] = @SubjectID"></asp:SqlDataSource>
    
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Insert" />
        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Go to Course page" />
    
    </div>
    </form>
</body>
</html>
