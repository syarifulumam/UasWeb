<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Operator.aspx.cs" Inherits="Laundry.Operator" MasterPageFile="~/TemplateWeb.Master" %>
<asp:Content ID="Operator_content" ContentPlaceHolderID="MainContent" runat="server">
    <div class="card card-primary card-outline">
        <div class="card-header">
            <h3 class="card-title mt-2">Data Operator</h3>
            <div class="float-right">
                <a href="RegisterOperator.aspx" class="btn btn-primary">Tambah</a>
            </div>
        </div>
        <div class="card-body">
        <asp:GridView ID="GridView1" CssClass="table table-bordered" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="nama" HeaderText="nama" SortExpression="nama" />
                <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                <asp:BoundField DataField="password" HeaderText="password" SortExpression="password" />
                <asp:BoundField DataField="jeniskelamin" HeaderText="jeniskelamin" SortExpression="jeniskelamin" />
                <asp:BoundField DataField="alamat" HeaderText="alamat" SortExpression="alamat" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [User]" DeleteCommand="DELETE FROM [User] WHERE [Id] = @Id" InsertCommand="INSERT INTO [User] ([nama], [email], [password], [jeniskelamin], [alamat]) VALUES (@nama, @email, @password, @jeniskelamin, @alamat)" UpdateCommand="UPDATE [User] SET [nama] = @nama, [email] = @email, [password] = @password, [jeniskelamin] = @jeniskelamin, [alamat] = @alamat WHERE [Id] = @Id">
            <DeleteParameters>
                <asp:Parameter Name="Id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="nama" Type="String" />
                <asp:Parameter Name="email" Type="String" />
                <asp:Parameter Name="password" Type="String" />
                <asp:Parameter Name="jeniskelamin" Type="String" />
                <asp:Parameter Name="alamat" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="nama" Type="String" />
                <asp:Parameter Name="email" Type="String" />
                <asp:Parameter Name="password" Type="String" />
                <asp:Parameter Name="jeniskelamin" Type="String" />
                <asp:Parameter Name="alamat" Type="String" />
                <asp:Parameter Name="Id" Type="Int32" />
            </UpdateParameters>
            </asp:SqlDataSource>
        </div>
    </div>
</asp:Content>
