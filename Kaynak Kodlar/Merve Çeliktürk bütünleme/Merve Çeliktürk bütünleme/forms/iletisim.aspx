<%@ Page Title="" Language="C#" MasterPageFile="~/forms/AnaSayfa.Master" AutoEventWireup="true" CodeBehind="iletisim.aspx.cs" Inherits="Merve_Çeliktürk_bütünleme.forms.iletisim" %>

<asp:Content ID="HeaderContent" ContentPlaceHolderID="HeadContent" runat="server">
<!-- Head içeriği, stil ve meta etiketleri buraya eklenebilir -->

    <style>
        /* İletişim sayfası ana stil ayarları */
        .contact-container {
            text-align: center;
            padding: 50px;
            background-color: #f9f9f9;
        }

        .contact-info {
            margin-top: 20px;
            font-size: 18px;
        }

        .contact-info a {
            color: #00274d; /* Lacivert renk */
            text-decoration: none;
            margin: 0 10px;
        }
    </style>
</asp:Content>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
<!-- Ana içerik alanı, içerik sayfalarının ekleyeceği ana içerik içindir -->

    <!-- İletişim sayfası içeriği -->
    <div class="contact-container">
        <h1>İletişim</h1>
        <div class="contact-info">
            <!-- Şirketin sosyal medya adresleri ve iletişim numarası -->
            <p>Facebook: <a href="https://www.facebook.com/sirket-facebook" target="_blank">facebook.com/lionrona-facebook</a></p>
            <p>Instagram: <a href="https://www.instagram.com/sirket-instagram" target="_blank">instagram.com/lionrona-instagram</a></p>
            <p>Telefon Numarası: +90 123 456 78 90</p>
        </div>
    </div>
</asp:Content>
