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
    public partial class kayitOl : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnKayit_Click(object sender, EventArgs e)
        {
            // Veritabanı bağlantı dizesini web.config dosyasından al
            string connectionString = ConfigurationManager.ConnectionStrings["MyDbConn"].ConnectionString;

            // Kullanıcıdan alınan verileri değişkenlere aktar
            string ad = txtAd.Text.Trim();
            string soyad = txtSoyad.Text.Trim();
            string telefon = txtTelefon.Text.Trim();
            string kullaniciAdi = txtKullaniciAdi.Text.Trim();
            string sifre = txtSifre.Text.Trim();

            // Veritabanına kullanıcıyı ekleme SQL komutu
            string query = "INSERT INTO Kullanicilar (Ad, Soyad, TelefonNumarasi, KullaniciAdi, Sifre) " +
                           "VALUES (@Ad, @Soyad, @TelefonNumarasi, @KullaniciAdi, @Sifre)";

            // SQL komutunu ve bağlantıyı oluştur
            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    // Parametreleri ekleyerek SQL injection saldırılarından koru
                    cmd.Parameters.AddWithValue("@Ad", ad);
                    cmd.Parameters.AddWithValue("@Soyad", soyad);
                    cmd.Parameters.AddWithValue("@TelefonNumarasi", telefon);
                    cmd.Parameters.AddWithValue("@KullaniciAdi", kullaniciAdi);
                    cmd.Parameters.AddWithValue("@Sifre", sifre);

                    try
                    {
                        // Bağlantıyı aç
                        conn.Open();

                        // Komutu çalıştır (kullanıcıyı veritabanına ekle)
                        int rowsAffected = cmd.ExecuteNonQuery();

                        if (rowsAffected > 0)
                        {
                            // Başarılı kayıt durumunda mesaj göster
                            Response.Write("<script>alert('Kayıt başarıyla tamamlandı.');</script>");

                            // İsteğe bağlı olarak başka bir sayfaya yönlendirme yapabilirsiniz.
                            // Response.Redirect("Default.aspx");
                        }
                        else
                        {
                            // Kayıt başarısız durumunda mesaj göster
                            Response.Write("<script>alert('Kayıt işlemi başarısız oldu.');</script>");
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