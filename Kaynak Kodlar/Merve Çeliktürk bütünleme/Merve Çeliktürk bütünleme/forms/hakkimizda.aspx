<%@ Page Title="" Language="C#" MasterPageFile="~/forms/AnaSayfa.Master" AutoEventWireup="true" CodeBehind="hakkimizda.aspx.cs" Inherits="Merve_Çeliktürk_bütünleme.forms.hakkimizda" %>

<asp:Content ID="HeaderContent" ContentPlaceHolderID="HeadContent" runat="server">
<!-- Head içerik alanı, içerik sayfalarının ekleyebileceği ek head içeriği içindir. -->

    <style>
        /* Hakkımızda sayfası ana stil ayarları */
        .about-container {
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            text-align: center;
            padding: 50px;
            background-color: #f9f9f9;
            color: #333;
        }

        .about-container h1 {
            color: #00274d; /* Lacivert renk */
            margin-bottom: 20px;
        }

        .about-container p {
            color: #333; /* Siyah renge yakın bir gri */
            font-size: 16px;
            max-width: 800px;
        }
    </style>
</asp:Content>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
<!-- Ana içerik alanı, içerik sayfalarının ekleyeceği ana içerik içindir. -->

    <!-- Hakkımızda sayfası ana içerik alanı -->
    <div class="about-container">
        <h1>Hakkımızda</h1>
        <p>Bu, şirketimiz hakkında bilgi veren bir paragraftır. 
            Şirketimizin misyonu, vizyonu ve değerleri burada yer alabilir. 
            Amacımız, müşterilerimize en iyi hizmeti sunmaktır ve 
            bu doğrultuda sürekli olarak kendimizi geliştiriyoruz.</p>
    </div>
</asp:Content>