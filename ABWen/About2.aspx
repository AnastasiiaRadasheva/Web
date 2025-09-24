<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About2.aspx.cs" Inherits="ABWen.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <main aria-labelledby="title">
        <h2>Lisa rühmad</h2>
    <p>&nbsp;</p>
    <p>
        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="ryhmId" DataSourceID="SqlDataSource1Ryhm" DefaultMode="Insert" Height="50px" Width="125px">
            <Fields>
                <asp:BoundField DataField="ryhmId" HeaderText="ryhmId" InsertVisible="False" ReadOnly="True" SortExpression="ryhmId" />
                <asp:BoundField DataField="ryhmNimi" HeaderText="ryhmNimi" SortExpression="ryhmNimi" />
                <asp:TemplateField HeaderText="Osakond_osakondId" SortExpression="Osakond_osakondId">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Osakond_osakondId") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1Ryhmlisa" DataTextField="osakondNimi" DataValueField="osakondId" SelectedValue='<%# Bind("Osakond_osakondId") %>'>
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource1Ryhmlisa" runat="server" ConnectionString="<%$ ConnectionStrings:opilaneMudelConnectionString2 %>" DeleteCommand="DELETE FROM [OsakondSet] WHERE [osakondId] = @osakondId" InsertCommand="INSERT INTO [OsakondSet] ([osakondNimi]) VALUES (@osakondNimi)" SelectCommand="SELECT * FROM [OsakondSet]" UpdateCommand="UPDATE [OsakondSet] SET [osakondNimi] = @osakondNimi WHERE [osakondId] = @osakondId">
                            <DeleteParameters>
                                <asp:Parameter Name="osakondId" Type="Int32" />
                            </DeleteParameters>
                            <InsertParameters>
                                <asp:Parameter Name="osakondNimi" Type="String" />
                            </InsertParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="osakondNimi" Type="String" />
                                <asp:Parameter Name="osakondId" Type="Int32" />
                            </UpdateParameters>
                        </asp:SqlDataSource>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("Osakond_osakondId") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:CommandField ShowInsertButton="True" />
            </Fields>
        </asp:DetailsView>
        <asp:SqlDataSource ID="SqlDataSource1Ryhm" runat="server" ConnectionString="<%$ ConnectionStrings:opilaneMudelConnectionString2 %>" DeleteCommand="DELETE FROM [ryhmSet] WHERE [ryhmId] = @ryhmId" InsertCommand="INSERT INTO [ryhmSet] ([ryhmNimi], [Osakond_osakondId]) VALUES (@ryhmNimi, @Osakond_osakondId)" SelectCommand="SELECT * FROM [ryhmSet]" UpdateCommand="UPDATE [ryhmSet] SET [ryhmNimi] = @ryhmNimi, [Osakond_osakondId] = @Osakond_osakondId WHERE [ryhmId] = @ryhmId">
            <DeleteParameters>
                <asp:Parameter Name="ryhmId" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="ryhmNimi" Type="String" />
                <asp:Parameter Name="Osakond_osakondId" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="ryhmNimi" Type="String" />
                <asp:Parameter Name="Osakond_osakondId" Type="Int32" />
                <asp:Parameter Name="ryhmId" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </p>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    </main>
</asp:Content>
