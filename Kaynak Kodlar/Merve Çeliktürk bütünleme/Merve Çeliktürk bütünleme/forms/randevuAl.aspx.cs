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
    public partial class randevuAl : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnRandevuAl_Click(object sender, EventArgs e)
        {
            // Form verilerini al
            string isim = txtIsim.Text.Trim();
            string soyisim = txtSoyisim.Text.Trim();
            DateTime tarih = DateTime.Parse(txtTarih.Text);
            TimeSpan saat = TimeSpan.Parse(txtSaat.Text);
            string sube = ddlSube.SelectedValue;

            // Veritabanı bağlantı dizesini al
            string connectionString = ConfigurationManager.ConnectionStrings["MyDbConn"].ConnectionString;

            // Randevu ekleme sorgusu
            string query = "INSERT INTO Randevular (Isim, Soyisim, Tarih, Saat, Sube) VALUES (@Isim, @Soyisim, @Tarih, @Saat, @Sube)";

            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    // Parametreleri ekle
                    cmd.Parameters.AddWithValue("@Isim", isim);
                    cmd.Parameters.AddWithValue("@Soyisim", soyisim);
                    cmd.Parameters.AddWithValue("@Tarih", tarih);
                    cmd.Parameters.AddWithValue("@Saat", saat);
                    cmd.Parameters.AddWithValue("@Sube", sube);

                    try
                    {
                        // Veritabanına bağlan ve sorguyu çalıştır
                        conn.Open();
                        cmd.ExecuteNonQuery();
                        Response.Write("<script>alert('Randevu başarıyla alındı.');</script>");
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