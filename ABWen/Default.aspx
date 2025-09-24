<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ABWen._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <main>
        <section class="row" aria-labelledby="aspnetTitle">
            <h1 id="aspnetTitle" style="font-size: xx-large">Kooli õpilase andmebaasi tabelist</h1>
            <h1>
                <asp:GridView ID="GridView2" runat="server" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" DataKeyNames="opilaneId" DataSourceID="SqlDataSource2" EmptyDataText="There are no data records to display." GridLines="Horizontal">
                    <Columns>
                        <asp:BoundField DataField="opilaneId" HeaderText="opilaneId" InsertVisible="False" ReadOnly="True" SortExpression="opilaneId" />
                        <asp:BoundField DataField="eesnimi" HeaderText="eesnimi" SortExpression="eesnimi" />
                        <asp:BoundField DataField="perenimi" HeaderText="perenimi" SortExpression="perenimi" />
                        <asp:BoundField DataField="syniaeg" DataFormatString="{0:d}" HeaderText="syniaeg" SortExpression="syniaeg" />
                        <asp:BoundField DataField="ryhmNimi" HeaderText="ryhmNimi" SortExpression="ryhmNimi" />
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
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:opilaneMudelConnectionString2 %>" DeleteCommand="DELETE FROM [opilaneSet] WHERE [opilaneId] = @opilaneId" InsertCommand="INSERT INTO [opilaneSet] ([eesnimi], [perenimi], [syniaeg], [ryhm_ryhmId]) VALUES (@eesnimi, @perenimi, @syniaeg, @ryhm_ryhmId)" SelectCommand="SELECT opilaneSet.opilaneId, opilaneSet.eesnimi, opilaneSet.perenimi, opilaneSet.syniaeg, ryhmSet.ryhmNimi FROM opilaneSet INNER JOIN ryhmSet ON opilaneSet.ryhm_ryhmId = ryhmSet.ryhmId" UpdateCommand="UPDATE [opilaneSet] SET [eesnimi] = @eesnimi, [perenimi] = @perenimi, [syniaeg] = @syniaeg, [ryhm_ryhmId] = @ryhm_ryhmId WHERE [opilaneId] = @opilaneId">
                    <DeleteParameters>
                        <asp:Parameter Name="opilaneId" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="eesnimi" Type="String" />
                        <asp:Parameter Name="perenimi" Type="String" />
                        <asp:Parameter DbType="Date" Name="syniaeg" />
                        <asp:Parameter Name="ryhm_ryhmId" Type="Int32" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="eesnimi" Type="String" />
                        <asp:Parameter Name="perenimi" Type="String" />
                        <asp:Parameter DbType="Date" Name="syniaeg" />
                        <asp:Parameter Name="ryhm_ryhmId" Type="Int32" />
                        <asp:Parameter Name="opilaneId" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </h1>
        </section>
    </main>

</asp:Content>
