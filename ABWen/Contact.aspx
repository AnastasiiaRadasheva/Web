<%@ Page Title="Lisa uus õpilane" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="ABWen.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <main aria-labelledby="title">
        <h2 id="title"><%: Title %>.</h2>
    <p>
        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="opilaneId" DataSourceID="SqlDataSource1opilane" DefaultMode="Insert" Height="50px" Width="125px">
            <Fields>
                <asp:BoundField DataField="opilaneId" HeaderText="opilaneId" InsertVisible="False" ReadOnly="True" SortExpression="opilaneId" />
                <asp:BoundField DataField="eesnimi" HeaderText="eesnimi" SortExpression="eesnimi" />
                <asp:BoundField DataField="perenimi" HeaderText="perenimi" SortExpression="perenimi" />
                <asp:BoundField DataField="syniaeg" HeaderText="syniaeg" SortExpression="syniaeg" />
                <asp:TemplateField HeaderText="ryhm" SortExpression="ryhm_ryhmId">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("ryhm_ryhmId") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1Ryhm" DataTextField="ryhmNimi" DataValueField="ryhmId" SelectedValue='<%# Bind("ryhm_ryhmId") %>'>
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource1Ryhm" runat="server" ConnectionString="<%$ ConnectionStrings:opilaneMudelConnectionString2 %>" DeleteCommand="DELETE FROM [ryhmSet] WHERE [ryhmId] = @ryhmId" InsertCommand="INSERT INTO [ryhmSet] ([ryhmNimi]) VALUES (@ryhmNimi)" SelectCommand="SELECT [ryhmId], [ryhmNimi] FROM [ryhmSet]" UpdateCommand="UPDATE [ryhmSet] SET [ryhmNimi] = @ryhmNimi WHERE [ryhmId] = @ryhmId">
                            <DeleteParameters>
                                <asp:Parameter Name="ryhmId" Type="Int32" />
                            </DeleteParameters>
                            <InsertParameters>
                                <asp:Parameter Name="ryhmNimi" Type="String" />
                            </InsertParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="ryhmNimi" Type="String" />
                                <asp:Parameter Name="ryhmId" Type="Int32" />
                            </UpdateParameters>
                        </asp:SqlDataSource>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("ryhm_ryhmId") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:CommandField ShowInsertButton="True" />
            </Fields>
        </asp:DetailsView>
        <asp:SqlDataSource ID="SqlDataSource1opilane" runat="server" ConnectionString="<%$ ConnectionStrings:opilaneMudelConnectionString2 %>" DeleteCommand="DELETE FROM [opilaneSet] WHERE [opilaneId] = @opilaneId" InsertCommand="INSERT INTO [opilaneSet] ([eesnimi], [perenimi], [syniaeg], [ryhm_ryhmId]) VALUES (@eesnimi, @perenimi, @syniaeg, @ryhm_ryhmId)" SelectCommand="SELECT * FROM [opilaneSet]" UpdateCommand="UPDATE [opilaneSet] SET [eesnimi] = @eesnimi, [perenimi] = @perenimi, [syniaeg] = @syniaeg, [ryhm_ryhmId] = @ryhm_ryhmId WHERE [opilaneId] = @opilaneId">
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
    </p>
    </main>
</asp:Content>
