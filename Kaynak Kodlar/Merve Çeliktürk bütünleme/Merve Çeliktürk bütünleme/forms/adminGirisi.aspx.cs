using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Merve_Çeliktürk_bütünleme.forms
{
    public partial class adminGirisi : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnGiris_Click(object sender, EventArgs e)
        {
            try
            {
                // Form verilerini al
                string kullaniciAdi = txtKullaniciAdi.Text.Trim();
                string sifre = txtSifre.Text.Trim();

                // Veritabanı bağlantı dizesini al
                string connectionString = ConfigurationManager.ConnectionStrings["MyDbConn"].ConnectionString;

                // Admin doğrulama sorgusu
                string query = "SELECT COUNT(*) FROM Adminler WHERE KullaniciAdi = @KullaniciAdi AND Sifre = @Sifre";

                using (SqlConnection conn = new SqlConnection(connectionString))
                {
                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        // Parametreleri ekle
                        cmd.Parameters.AddWithValue("@KullaniciAdi", kullaniciAdi);
                        cmd.Parameters.AddWithValue("@Sifre", sifre);

                        // Veritabanına bağlan ve sorguyu çalıştır
                        conn.Open();
                        int result = (int)cmd.ExecuteScalar();
                        if (result > 0)
                        {
                            // Admin doğrulandıysa giriş yap
                            Response.Redirect("adminAnaSayfasi.aspx");
                        }
                        else
                        {
                            // Admin doğrulanamadıysa hata mesajı göster
                            Response.Write("<script>alert('Kullanıcı adı veya şifre yanlış.');</script>");
                        }
                    }
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