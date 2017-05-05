<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CourseInfo.aspx.cs" Inherits="AdminUnivPrereq.CourseInfo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="height: 526px">
    
        <asp:TextBox ID="TextBox1" runat="server" BackColor="#FFC062" BorderStyle="Solid" Font-Bold="True" Font-Size="X-Large" Height="56px"  Width="958px">University Prerequisite Checking</asp:TextBox>
    
        <asp:MultiView ID="CourseView" runat="server" ActiveViewIndex ="0">
            <asp:View ID="Course" runat="server">
                <asp:GridView ID="GridView2" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="CourseID" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView2_SelectedIndexChanged" ShowFooter="True" PageSize="25">
                    <Columns>
                        <asp:CommandField ShowSelectButton="True" ShowDeleteButton="True" ShowEditButton="True" />
                        <asp:TemplateField HeaderText="CourseID" InsertVisible="False" SortExpression="CourseID">
                            <EditItemTemplate>
                                <asp:TextBox ID="tCourseID" runat="server" 
                                Text='<%# Bind("CourseID") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="lCourseID" runat="server" 
                                Text='<%# Bind("CourseID") %>'></asp:Label>
                            </ItemTemplate>
                            <FooterTemplate>
                                 <asp:TextBox ID="txtCourseID" runat="server"> </asp:TextBox>
                            </FooterTemplate>

                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="Number" InsertVisible="False" SortExpression="Number">
                            <EditItemTemplate>
                                <asp:TextBox ID="tNumber" runat="server" 
                                Text='<%# Bind("Number") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="lNumber" runat="server" 
                                Text='<%# Bind("Number") %>'></asp:Label>
                            </ItemTemplate>
                            <FooterTemplate>
                                 <asp:TextBox ID="txtNumber" runat="server"> </asp:TextBox>
                            </FooterTemplate>

                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="Name" InsertVisible="False" SortExpression="Name">
                            <EditItemTemplate>
                                <asp:TextBox ID="tName" runat="server" 
                                Text='<%# Bind("Name") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="lName" runat="server" 
                                Text='<%# Bind("Name") %>'></asp:Label>
                            </ItemTemplate>
                            <FooterTemplate>
                                 <asp:TextBox ID="txtName" runat="server"> </asp:TextBox>
                            </FooterTemplate>

                        </asp:TemplateField>

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

                        <asp:TemplateField HeaderText="Prerequisite" InsertVisible="False" SortExpression="Prerequisite">
                            <EditItemTemplate>
                                <asp:TextBox ID="tPrerequisite" runat="server" 
                                Text='<%# Bind("Prerequisite") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="lPrerequisite" runat="server" 
                                Text='<%# Bind("Prerequisite") %>'></asp:Label>
                            </ItemTemplate>
                            <FooterTemplate>
                                 <asp:TextBox ID="txtPrerequisite" runat="server"> </asp:TextBox>
                            </FooterTemplate>

                        </asp:TemplateField>
                    </Columns>
                    
                    <EditRowStyle BorderStyle="Solid" />
                    
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:tamalConnectionString %>" SelectCommand="SELECT * FROM [Course]" DeleteCommand="DELETE FROM [Course] WHERE [CourseID] = @CourseID" InsertCommand="INSERT INTO [Course] ([CourseID], [Number], [Name], [SubjectID], [Prerequisite]) VALUES (@CourseID, @Number, @Name, @SubjectID, @Prerequisite)" UpdateCommand="UPDATE [Course] SET [CourseID] = @CourseID, [Number] = @Number, [Name] = @Name, [SubjectID] = @SubjectID, [Prerequisite] = @Prerequisite WHERE [CourseID] = @CourseID"></asp:SqlDataSource>
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Insert" style="height: 26px" />
                <asp:Button ID="ButtonSub" runat="server" OnClick="Button2_Click" Text="Go to Subject page" Width="209px" />
            </asp:View>
        </asp:MultiView>
    
    </div>
    </form>
</body>
</html>
