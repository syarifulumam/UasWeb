using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace Laundry
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["User"] != null)
            {
                Response.Redirect("Operator.aspx");
            }
        }

        protected void Button_login(object sender, EventArgs e)
        {
            SqlConnection Koneksi = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            Koneksi.Open();
            string cekuser = "select count(*) from [User] where email='" + email.Text + "'";
            SqlCommand query = new SqlCommand(cekuser, Koneksi);
            int jumlah = Convert.ToInt32(query.ExecuteScalar().ToString());
            Koneksi.Close();
            if (jumlah == 1)
            {
                Koneksi.Open();
                string passwordsql = "select password from [User] where email='" + email.Text + "'";
                SqlCommand passquery = new SqlCommand(passwordsql, Koneksi);
                string passwordbaru = passquery.ExecuteScalar().ToString();
                Koneksi.Close();
                if (passwordbaru == password.Text)
                {
                    Session["User"] = email.Text;
                    Response.Redirect("Operator.aspx");
                }
                else
                {
                    Response.Write("<script>alert('Password Salah');</script>");
                }
            }
            else
            {
                Response.Write("<script>alert('User tidak ada');</script>");
            }
        }
    }
}