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
    public partial class adminKayitEkrani : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnKayit_Click(object sender, EventArgs e)
        {
            // Form verilerini al
            string ad = txtAd.Text.Trim();
            string soyad = txtSoyad.Text.Trim();
            string telefon = txtTelefon.Text.Trim();
            string kullaniciAdi = txtKullaniciAdi.Text.Trim();
            string sifre = txtSifre.Text.Trim();

            // Veritabanı bağlantı dizesini al
            string connectionString = ConfigurationManager.ConnectionStrings["MyDbConn"].ConnectionString;

            // Kullanıcı ekleme sorgusu
            string query = "INSERT INTO Kullanicilar ((Ad, Soyad, TelefonNumarasi, KullaniciAdi, Sifre) VALUES (@Ad, @Soyad, @TelefonNumarasi, @KullaniciAdi, @Sifre)";

            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    // Parametreleri ekle
                    cmd.Parameters.AddWithValue("@Ad", ad);
                    cmd.Parameters.AddWithValue("@Soyad", soyad);
                    cmd.Parameters.AddWithValue("@TelefonNumarasi", telefon);
                    cmd.Parameters.AddWithValue("@KullaniciAdi", kullaniciAdi);
                    cmd.Parameters.AddWithValue("@Sifre", sifre);

                    try
                    {
                        // Veritabanına bağlan ve sorguyu çalıştır
                        conn.Open();
                        cmd.ExecuteNonQuery();
                        Response.Write("<script>alert('Kullanıcı başarıyla eklendi.');</script>");
                    }
                    catch (Exception ex)
                    {
                        // Hata durumunda hata mesajını göster
                        Response.Write("<script>alert('Hata: " + ex.Message + "');</script>");
                    }
                }
            }
        }

        protected void btnSil_Click(object sender, EventArgs e)
        {
            // Silinecek kullanıcı adını al
            string kullaniciAdi = txtKullaniciAdiSil.Text.Trim();

            // Veritabanı bağlantı dizesini al
            string connectionString = ConfigurationManager.ConnectionStrings["MyDbConn"].ConnectionString;

            // Kullanıcı silme sorgusu
            string query = "DELETE FROM Kullanicilar WHERE KullaniciAdi = @KullaniciAdi";

            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    // Parametreyi ekle
                    cmd.Parameters.AddWithValue("@KullaniciAdi", kullaniciAdi);

                    try
                    {
                        // Veritabanına bağlan ve sorguyu çalıştır
                        conn.Open();
                        int rowsAffected = cmd.ExecuteNonQuery();
                        if (rowsAffected > 0)
                        {
                            Response.Write("<script>alert('Kullanıcı başarıyla silindi.');</script>");
                        }
                        else
                        {
                            Response.Write("<script>alert('Belirtilen kullanıcı adı ile eşleşen kayıt bulunamadı.');</script>");
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