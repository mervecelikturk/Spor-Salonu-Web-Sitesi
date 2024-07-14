using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Merve_Çeliktürk_bütünleme.forms
{
    public partial class adminRandevuEkrani : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        // Randevuları Listele butonu için
        protected void btnListele_Click(object sender, EventArgs e)
        {
            string connectionString = ConfigurationManager.ConnectionStrings["MyDbConn"].ConnectionString;
            string query = "SELECT * FROM Randevular"; // Randevular tablosundaki tüm randevuları listeler

            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    try
                    {
                        conn.Open();
                        SqlDataAdapter da = new SqlDataAdapter(cmd);
                        DataTable dt = new DataTable();
                        da.Fill(dt);

                        GridView1.DataSource = dt;
                        GridView1.DataBind();
                    }
                    catch (Exception ex)
                    {
                        // Hata durumunda hata mesajını göster
                        Response.Write("<script>alert('Hata: " + ex.Message + "');</script>");
                    }
                }
            }
        }

        // Randevu Oluştur butonu için
        protected void btnOlustur_Click(object sender, EventArgs e)
        {
            string isim = txtIsim.Text.Trim();
            string soyisim = txtSoyisim.Text.Trim();
            string tarih = txtTarih.Text.Trim();
            string saat = txtSaat.Text.Trim();
            string sube = ddlSube.SelectedValue;

            string connectionString = ConfigurationManager.ConnectionStrings["MyDbConn"].ConnectionString;
            string query = "INSERT INTO Randevular (Isim, Soyisim, Tarih, Saat, Sube) VALUES (@Isim, @Soyisim, @Tarih, @Saat, @Sube)";

            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@Isim", isim);
                    cmd.Parameters.AddWithValue("@Soyisim", soyisim);
                    cmd.Parameters.AddWithValue("@Tarih", tarih);
                    cmd.Parameters.AddWithValue("@Saat", saat);
                    cmd.Parameters.AddWithValue("@Sube", sube);

                    try
                    {
                        conn.Open();
                        cmd.ExecuteNonQuery();
                        Response.Write("<script>alert('Randevu başarıyla oluşturuldu.');</script>");
                    }
                    catch (Exception ex)
                    {
                        // Hata durumunda hata mesajını göster
                        Response.Write("<script>alert('Hata: " + ex.Message + "');</script>");
                    }
                }
            }
        }

        // Randevu Sil butonu için
        protected void btnSil_Click(object sender, EventArgs e)
        {
            string isim = txtSilIsim.Text.Trim();
            string soyisim = txtSilSoyisim.Text.Trim();
            string tarih = txtSilTarih.Text.Trim();
            string saat = txtSilSaat.Text.Trim();
            string sube = ddlSilSube.SelectedValue;

            string connectionString = ConfigurationManager.ConnectionStrings["MyDbConn"].ConnectionString;
            string query = "DELETE FROM Randevular WHERE Isim = @Isim AND Soyisim = @Soyisim AND Tarih = @Tarih AND Saat = @Saat AND Sube = @Sube";

            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@Isim", isim);
                    cmd.Parameters.AddWithValue("@Soyisim", soyisim);
                    cmd.Parameters.AddWithValue("@Tarih", tarih);
                    cmd.Parameters.AddWithValue("@Saat", saat);
                    cmd.Parameters.AddWithValue("@Sube", sube);

                    try
                    {
                        conn.Open();
                        cmd.ExecuteNonQuery();
                        Response.Write("<script>alert('Randevu başarıyla silindi.');</script>");
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