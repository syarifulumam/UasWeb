<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="User.aspx.cs" Inherits="Laundry.User" MasterPageFile="~/TemplateWeb.Master" %>
<asp:Content ID="User_content" ContentPlaceHolderID="MainContent" runat="server">
    <div class="card card-primary card-outline">
        <div class="card-header">
            <h3 class="card-title mt-2">Data Operator</h3>
            <div class="float-right">
                <a href="RegisterUser.aspx" class="btn btn-primary">Tambah</a>
            </div>
        </div>
        <div class="card-body">
        <asp:GridView ID="GridView1" CssClass="table table-bordered" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" InsertVisible="False" />
                <asp:BoundField DataField="nama" HeaderText="nama" SortExpression="nama" />
                <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                <asp:BoundField DataField="telepon" HeaderText="telepon" SortExpression="telepon" />
                <asp:BoundField DataField="jeniskelamin" HeaderText="jeniskelamin" SortExpression="jeniskelamin" />
                <asp:BoundField DataField="alamat" HeaderText="alamat" SortExpression="alamat" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [User]" DeleteCommand="DELETE FROM [User] WHERE [Id] = @Id" InsertCommand="INSERT INTO [User] ([nama], [email], [telepon], [jeniskelamin], [alamat]) VALUES (@nama, @email, @telepon, @jeniskelamin, @alamat)" UpdateCommand="UPDATE [User] SET [nama] = @nama, [email] = @email, [telepon] = @telepon, [jeniskelamin] = @jeniskelamin, [alamat] = @alamat WHERE [Id] = @Id">
            <DeleteParameters>
                <asp:Parameter Name="Id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="nama" Type="String" />
                <asp:Parameter Name="email" Type="String" />
                <asp:Parameter Name="telepon" Type="String" />
                <asp:Parameter Name="jeniskelamin" Type="String" />
                <asp:Parameter Name="alamat" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="nama" Type="String" />
                <asp:Parameter Name="email" Type="String" />
                <asp:Parameter Name="telepon" Type="String" />
                <asp:Parameter Name="jeniskelamin" Type="String" />
                <asp:Parameter Name="alamat" Type="String" />
                <asp:Parameter Name="Id" Type="Int32" />
            </UpdateParameters>
            </asp:SqlDataSource>
        </div>
    </div>
</asp:Content>

