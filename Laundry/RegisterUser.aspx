<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegisterUser.aspx.cs" Inherits="Laundry.RegisterUser" MasterPageFile="~/TemplateWeb.Master" %>
<asp:Content ID="RegisterUser_content" ContentPlaceHolderID="MainContent" runat="server">
    <div class="card card-primary">
          <div class="card-header">
            <h3 class="card-title">Tambah Operator</h3>
          </div>
            <div class="card-body">
              <div class="form-group">
                <label for="exampleInputEmail1">Nama</label>
                  <asp:TextBox CssClass="form-control" ID="nama" runat="server"></asp:TextBox>
                  <small>
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Tidak boleh kosong" ControlToValidate="nama" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                  </small>
              </div>
              <div class="form-group">
                <label for="exampleInputEmail1">Email</label>
                  <asp:TextBox CssClass="form-control" ID="email" runat="server"></asp:TextBox>
                  <small>
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Tidak boleh kosong" ControlToValidate="email" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                      <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Email tidak valid" ControlToValidate="email" ForeColor="#FF3300" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                  </small>
              </div>
              <div class="form-group">
                <label for="exampleInputEmail1">Nomor Telepon</label>
                  <asp:TextBox CssClass="form-control" ID="telepon" runat="server"></asp:TextBox>
                  <small>
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Tidak boleh kosong" ControlToValidate="nama" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                  </small>
              </div>
              <div class="form-group">
                <label>Jenis Kelamin</label><br />
                  <asp:DropDownList ID="jeniskelamin" CssClass="form-control" runat="server">
                      <asp:ListItem>Pilih Jenis Kelamin</asp:ListItem>
                      <asp:ListItem>Pria</asp:ListItem>
                      <asp:ListItem>Wanita</asp:ListItem>
                  </asp:DropDownList>
                  <small>
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Tidak boleh kosong" ControlToValidate="jeniskelamin" ForeColor="#FF3300" InitialValue="Pilih Jenis Kelamin"></asp:RequiredFieldValidator>
                  </small>
              </div>
              <div class="form-group">
                <label>Alamat</label>
                <asp:TextBox ID="alamat" TextMode="multiline" CssClass="form-control" Columns="50" Rows="3" runat="server" />
                  <small>
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Tidak boleh kosong" ControlToValidate="alamat" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                  </small>
              </div>
            </div>
            <!-- /.card-body -->
            <div class="card-footer">
                <asp:Button ID="Button1" CssClass="btn btn-primary" runat="server" Text="Submit" OnClick="Daftar" />
                <asp:HyperLink ID="HyperLink1" runat="server" CssClass="btn btn-default float-right" NavigateUrl="~/Operator.aspx">Kembali</asp:HyperLink>
            </div>
        </div>
</asp:Content>

