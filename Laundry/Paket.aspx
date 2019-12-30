<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Paket.aspx.cs" Inherits="Laundry.Paket" MasterPageFile="~/TemplateWeb.Master" %>
<asp:Content ID="Paket_content" ContentPlaceHolderID="MainContent" runat="server">
    <div class="card card-primary card-outline">
        <div class="card-header">
            <h3 class="card-title mt-2">Data Transaksi</h3>
            <div class="float-right">
                <a href="AddPaket.aspx" class="btn btn-primary">Tambah</a>
            </div>
        </div>
        <div class="card-body">
            <asp:GridView ID="GridView1" CssClass="table table-bordered" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                    <asp:BoundField DataField="paket" HeaderText="paket" SortExpression="paket" />
                    <asp:BoundField DataField="harga" HeaderText="harga" SortExpression="harga" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Paket] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Paket] ([paket], [harga]) VALUES (@paket, @harga)" SelectCommand="SELECT * FROM [Paket]" UpdateCommand="UPDATE [Paket] SET [paket] = @paket, [harga] = @harga WHERE [Id] = @Id">
                <DeleteParameters>
                    <asp:Parameter Name="Id" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="paket" Type="String" />
                    <asp:Parameter Name="harga" Type="Int32" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="paket" Type="String" />
                    <asp:Parameter Name="harga" Type="Int32" />
                    <asp:Parameter Name="Id" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
    </div>
</asp:Content>