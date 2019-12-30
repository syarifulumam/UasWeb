<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AddPaket.aspx.cs" Inherits="Laundry.AddPaket" MasterPageFile="~/TemplateWeb.Master" %>
<asp:Content ID="AddPaket_content" ContentPlaceHolderID="MainContent" runat="server">
<div class="card card-primary">
          <div class="card-header">
            <h3 class="card-title">Tambah Transaksi</h3>
          </div>
            <div class="card-body">
              <div class="form-group">
                <label for="exampleInputEmail1">Nama Paket</label>
                  <asp:TextBox CssClass="form-control" ID="nama" runat="server"></asp:TextBox>
                  <small>
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Tidak boleh kosong" ControlToValidate="nama" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                  </small>
              </div>
              <div class="form-group">
                <label for="exampleInputEmail1">Harga Paket</label>
                  <asp:TextBox CssClass="form-control" ID="harga" runat="server"></asp:TextBox>
                  <small>
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Tidak boleh kosong" ControlToValidate="harga" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                  </small>
              </div>
              
            </div>
            <!-- /.card-body -->
            <div class="card-footer">
                <asp:Button ID="Button1" CssClass="btn btn-primary" runat="server" Text="Submit" OnClick="Button1_Click" />
                <asp:HyperLink ID="HyperLink1" runat="server" CssClass="btn btn-default float-right" NavigateUrl="~/Operator.aspx">Kembali</asp:HyperLink>
            </div>
        </div>
</asp:Content>