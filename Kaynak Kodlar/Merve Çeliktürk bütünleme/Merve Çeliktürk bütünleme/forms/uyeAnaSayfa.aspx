<%@ Page Title="" Language="C#" MasterPageFile="~/forms/UyeanaSayfasi.Master" AutoEventWireup="true" CodeBehind="uyeAnaSayfa.aspx.cs" Inherits="Merve_Çeliktürk_bütünleme.forms.uyeAnaSayfa" %>

<asp:Content ID="HeaderContent" ContentPlaceHolderID="HeadContent" runat="server">

    <!-- Head içerik alanı, içerik sayfalarının ekleyebileceği ek head içeriği içindir. -->
    <style>
        /* Ana içerik alanının stil ayarları */
        .main-content {
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            height: calc(100vh - 60px); /* Navbar yüksekliğini çıkartarak tam ekran yapar */
            text-align: center;
            padding: 20px;
        }

        /* Başlık stil ayarları */
        .main-content h1 {
            font-size: 36px;
            color: #00274d; /* Lacivert renk */
            margin-bottom: 20px;
        }

        /* Paragraf stil ayarları */
        .main-content p {
            font-size: 18px;
            color: #333; /* Siyah renge yakın bir gri */
            max-width: 600px;
        }
    </style>
</asp:Content>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
<!-- Ana içerik alanı, içerik sayfalarının ekleyeceği ana içerik içindir. -->
    <!-- Ortalanmış içerik alanı -->
    <div class="main-content">
        <h1>HOŞ GELDİNİZ...</h1>
        <p>
            Üye girişi yapıldı.
        </p>
    </div>
</asp:Content>
