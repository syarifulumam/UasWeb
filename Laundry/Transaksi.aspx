<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Transaksi.aspx.cs" Inherits="Laundry.Transaksi" MasterPageFile="~/TemplateWeb.Master" %>
<asp:Content ID="Transaksi_content" ContentPlaceHolderID="MainContent" runat="server">
    <div class="card card-primary card-outline">
        <div class="card-header">
            <h3 class="card-title mt-2">Data Transaksi</h3>
            <div class="float-right">
                <a href="AddTransaksi.aspx" class="btn btn-primary">Tambah</a>
            </div>
        </div>
        <div class="card-body">
            <asp:GridView ID="GridView1" CssClass="table table-bordered" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                    <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                    <asp:BoundField DataField="nama" HeaderText="nama" SortExpression="nama" />
                    <asp:BoundField DataField="berat" HeaderText="berat" SortExpression="berat" />
                    <asp:BoundField DataField="metode" HeaderText="metode" SortExpression="metode" />
                    <asp:BoundField DataField="status" HeaderText="status" SortExpression="status" />
                    <asp:BoundField DataField="paket" HeaderText="paket" SortExpression="paket" />
                    <asp:BoundField DataField="tanggal" HeaderText="tanggal" SortExpression="tanggal" />
                    <asp:BoundField DataField="total" HeaderText="total" SortExpression="total" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Transaksi] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Transaksi] ([nama], [berat], [metode], [status], [paket], [tanggal], [total]) VALUES (@nama, @berat, @metode, @status, @paket, @tanggal, @total)" SelectCommand="SELECT [User].nama, [Transaksi].Id, [Transaksi].berat, [Transaksi].metode, [Transaksi].status, [Transaksi].paket, [Transaksi].tanggal, [Transaksi].total FROM [Transaksi] INNER JOIN [User] ON [Transaksi].userId = [User].Id" UpdateCommand="UPDATE [Transaksi] SET [nama] = @nama, [berat] = @berat, [metode] = @metode, [status] = @status, [paket] = @paket, [tanggal] = @tanggal, [total] = @total WHERE [Id] = @Id">
                <DeleteParameters>
                    <asp:Parameter Name="Id" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="nama" Type="String" />
                    <asp:Parameter Name="berat" Type="Int32" />
                    <asp:Parameter Name="metode" Type="String" />
                    <asp:Parameter Name="status" Type="String" />
                    <asp:Parameter Name="paket" Type="String" />
                    <asp:Parameter Name="tanggal" Type="String" />
                    <asp:Parameter Name="total" Type="Int32" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="nama" Type="String" />
                    <asp:Parameter Name="berat" Type="Int32" />
                    <asp:Parameter Name="metode" Type="String" />
                    <asp:Parameter Name="status" Type="String" />
                    <asp:Parameter Name="paket" Type="String" />
                    <asp:Parameter Name="tanggal" Type="String" />
                    <asp:Parameter Name="total" Type="Int32" />
                    <asp:Parameter Name="Id" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
    </div>
</asp:Content>
