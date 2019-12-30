﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace Laundry
{
    public partial class RegisterOperator : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Operator"] == null)
            {
                Response.Redirect("Login.aspx");
            }
        }

        protected void Daftar(object sender, EventArgs e)
        {
            //                                                                                NAMA DATABASE
            SqlConnection koneksi = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            koneksi.Open();
            string cekuser = "SELECT COUNT(*) FROM [Operator] WHERE nama= '" + nama.Text + "'";
            SqlCommand query = new SqlCommand(cekuser, koneksi);
            int jumlah = Convert.ToInt32(query.ExecuteScalar().ToString());
            koneksi.Close();
            if(jumlah != 0){
                Response.Write("Nama sudah digunakan");
            }else{
                koneksi.Open();
                string insert = "INSERT INTO [Operator] (nama,email,password,jeniskelamin,alamat) VALUES (@nama,@email,@password,@jeniskelamin,@alamat)";
                SqlCommand insertquery = new SqlCommand(insert, koneksi);
                insertquery.Parameters.AddWithValue("@nama", nama.Text);
                insertquery.Parameters.AddWithValue("@email", email.Text);
                insertquery.Parameters.AddWithValue("@password", password.Text);
                insertquery.Parameters.AddWithValue("@jeniskelamin", jeniskelamin.SelectedItem.ToString());
                insertquery.Parameters.AddWithValue("@alamat", alamat.Text);
                insertquery.ExecuteNonQuery();
                koneksi.Close();
                Response.Redirect("Operator.aspx");
            }
        }
    }
}