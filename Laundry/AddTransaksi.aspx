<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddTransaksi.aspx.cs" Inherits="Laundry.AddTransaksi" MasterPageFile="~/TemplateWeb.Master" %>
<asp:Content ID="AddTransaksi_content" ContentPlaceHolderID="MainContent" runat="server">
    <div class="card card-primary">
          <div class="card-header">
            <h3 class="card-title">Tambah Transaksi</h3>
          </div>
            <div class="card-body">
              <div class="form-group">
                <label for="exampleInputEmail1">Nama Pelanggan</label>
                  <asp:TextBox CssClass="form-control" ID="nama" runat="server"></asp:TextBox>
                  <small>
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Tidak boleh kosong" ControlToValidate="nama" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                  </small>
              </div>
              <div class="form-group">
                <label for="exampleInputEmail1">Berat(kg)</label>
                  <asp:TextBox CssClass="form-control" ID="berat" runat="server"></asp:TextBox>
                  <small>
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Tidak boleh kosong" ControlToValidate="berat" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                  </small>
              </div>
              <div class="form-group">
                <label>Metode Pembayaran</label><br />
                  <asp:DropDownList ID="metodepembayaran" CssClass="form-control" runat="server">
                      <asp:ListItem>Pilih Metode Pembayaran</asp:ListItem>
                      <asp:ListItem>Tunai</asp:ListItem>
                      <asp:ListItem>Debit</asp:ListItem>
                  </asp:DropDownList>
                  <small>
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Tidak boleh kosong" ControlToValidate="metodepembayaran" ForeColor="#FF3300" InitialValue="Pilih Metode Pembayaran"></asp:RequiredFieldValidator>
                  </small>
              </div>
              <div class="form-group">
                <label>Status Pembayaran</label><br />
                  <asp:DropDownList ID="statuspembayaran" CssClass="form-control" runat="server">
                      <asp:ListItem>Pilih Status Pembayaran</asp:ListItem>
                      <asp:ListItem>Lunas</asp:ListItem>
                      <asp:ListItem>Belum Lunas</asp:ListItem>
                  </asp:DropDownList>
                  <small>
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Tidak boleh kosong" ControlToValidate="statuspembayaran" ForeColor="#FF3300" InitialValue="Pilih Status Pembayaran"></asp:RequiredFieldValidator>
                  </small>
              </div>
              <!--<div class="form-group">
                <label>Paket</label><br />
                  <asp:DropDownList ID="paket" CssClass="form-control" runat="server">
                      <asp:ListItem>Pilih Jenis Paket</asp:ListItem>
                      <asp:ListItem>Cuci + Setrika</asp:ListItem>
                      <asp:ListItem>Cuci Kering</asp:ListItem>
                      <asp:ListItem>Paket Express</asp:ListItem>
                  </asp:DropDownList>
                  <small>
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Tidak boleh kosong" ControlToValidate="paket" ForeColor="#FF3300" InitialValue="Pilih Jenis Paket"></asp:RequiredFieldValidator>
                  </small>
              </div>-->
                <div class="form-group">
                <label>Paket</label><br />
                  <asp:DropDownList ID="HargaPaket" CssClass="form-control" runat="server" DataSourceID="SqlDataSource1" DataTextField="paket" DataValueField="harga">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [harga], [paket] FROM [Paket]"></asp:SqlDataSource>
                  <small>
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Tidak boleh kosong" ControlToValidate="HargaPaket" ForeColor="#FF3300" InitialValue="1"></asp:RequiredFieldValidator>
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
