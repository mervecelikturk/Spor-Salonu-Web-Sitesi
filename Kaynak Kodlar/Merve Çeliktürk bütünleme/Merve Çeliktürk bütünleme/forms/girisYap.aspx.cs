using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;

namespace Merve_Çeliktürk_bütünleme.forms
{
    public partial class girisYap : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnGiris_Click(object sender, EventArgs e)
        {
            string kullaniciAdi = txtKullaniciAdi.Text.Trim();
            string sifre = txtSifre.Text.Trim();

            string connectionString = ConfigurationManager.ConnectionStrings["MyDbConn"].ConnectionString;
            string query = "SELECT COUNT(*) FROM Kullanicilar WHERE KullaniciAdi = @KullaniciAdi AND Sifre = @Sifre";

            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@KullaniciAdi", kullaniciAdi);
                    cmd.Parameters.AddWithValue("@Sifre", sifre);

                    try
                    {
                        conn.Open();
                        int result = (int)cmd.ExecuteScalar();
                        if (result > 0)
                        {
                            // Kullanıcı doğrulandıysa giriş yap
                            Response.Redirect("UyeAnaSayfa.aspx");
                        }
                        else
                        {
                            // Kullanıcı doğrulanamadıysa hata mesajı göster
                            Response.Write("<script>alert('Kullanıcı adı veya şifre yanlış.');</script>");
                        }
                    }
                    catch (Exception ex)
                    {
                        // Hata durumunda hata mesajını göster
                        Response.Write("<script>alert('Hata: " + ex.Message + "');</script>");
                    }
                }
            }
        }
    }
}