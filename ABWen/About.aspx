<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="ABWen.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <main aria-labelledby="title">
        <h2>Rühmad</h2>
    <p>&nbsp;</p>
    <p>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" DataKeyNames="ryhmId" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display." GridLines="Horizontal">
            <Columns>
                <asp:BoundField DataField="ryhmId" HeaderText="ryhmId" ReadOnly="True" SortExpression="ryhmId" />
                <asp:BoundField DataField="ryhmNimi" HeaderText="ryhmNimi" SortExpression="ryhmNimi" />
                <asp:BoundField DataField="Osakond_osakondId" HeaderText="Osakond_osakondId" SortExpression="Osakond_osakondId" />
            </Columns>
            <FooterStyle BackColor="White" ForeColor="#333333" />
            <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="White" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F7F7F7" />
            <SortedAscendingHeaderStyle BackColor="#487575" />
            <SortedDescendingCellStyle BackColor="#E5E5E5" />
            <SortedDescendingHeaderStyle BackColor="#275353" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:opilaneMudelConnectionString2 %>" DeleteCommand="DELETE FROM [ryhmSet] WHERE [ryhmId] = @ryhmId" InsertCommand="INSERT INTO [ryhmSet] ([ryhmNimi], [Osakond_osakondId]) VALUES (@ryhmNimi, @Osakond_osakondId)" ProviderName="<%$ ConnectionStrings:opilaneMudelConnectionString2.ProviderName %>" SelectCommand="SELECT [ryhmId], [ryhmNimi], [Osakond_osakondId] FROM [ryhmSet]" UpdateCommand="UPDATE [ryhmSet] SET [ryhmNimi] = @ryhmNimi, [Osakond_osakondId] = @Osakond_osakondId WHERE [ryhmId] = @ryhmId">
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
