using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

namespace Laundry
{
    public partial class AddTransaksi : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Operator"] == null)
            {
                Response.Redirect("Login.aspx");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //                                                                                NAMA DATABASE
            SqlConnection koneksi = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);

            koneksi.Open();
            //int harga;
            string insert = "INSERT INTO [Transaksi] (nama,berat,metode,status,paket,tanggal,total,userId) VALUES (@nama,@berat,@metode,@status,@HargaPaket,@tanggal,@total,@userId)";
            SqlCommand insertquery = new SqlCommand(insert, koneksi);
            insertquery.Parameters.AddWithValue("@nama", nama.Text);
            insertquery.Parameters.AddWithValue("@berat", berat.Text);
            insertquery.Parameters.AddWithValue("@metode", metodepembayaran.SelectedItem.ToString());
            insertquery.Parameters.AddWithValue("@status", statuspembayaran.SelectedItem.ToString());
            /*if (paket.SelectedItem.Text == "Cuci + Setrika")
            {
                harga = 8000;
            }
            else if (paket.SelectedItem.Text == "Cuci Kering")
            {
                harga = 7000;
            }
            else
            {
                harga = 10000;
            }*/
            insertquery.Parameters.AddWithValue("@HargaPaket", HargaPaket.SelectedItem.ToString());
            insertquery.Parameters.AddWithValue("@tanggal", DateTime.Now.ToString("yyyy-MM-dd"));
            int total = Int32.Parse(HargaPaket.SelectedValue) * int.Parse(berat.Text);
            insertquery.Parameters.AddWithValue("@total", total);
            insertquery.Parameters.AddWithValue("@userId", Int32.Parse(nama.SelectedValue));
            insertquery.ExecuteNonQuery();
            koneksi.Close();
            Response.Redirect("Transaksi.aspx");
        }


    }
}