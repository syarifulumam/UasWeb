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
    public partial class AddPaket : System.Web.UI.Page
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
            string insert = "INSERT INTO [Paket] (paket,harga) VALUES (@paket,@harga)";
            SqlCommand insertquery = new SqlCommand(insert, koneksi);
            insertquery.Parameters.AddWithValue("@paket", nama.Text);
            insertquery.Parameters.AddWithValue("@harga", harga.Text);
            insertquery.ExecuteNonQuery();
            koneksi.Close();
            Response.Redirect("Paket.aspx");
        }
    }
}