<%@ Page Title="" Language="C#" MasterPageFile="~/forms/UyeanaSayfasi.Master" AutoEventWireup="true" CodeBehind="sporprogramlari.aspx.cs" Inherits="Merve_Çeliktürk_bütünleme.forms.sporprogramlari" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <!-- Sayfa başlığı ve meta etiketleri buraya eklenebilir -->
    <style>
        /* Sayfa özel stil ayarları */
        .program-container {
            max-width: 800px;
            margin: 20px auto;
            text-align: center;
        }

        .program-container h2 {
            font-size: 28px;
            color: #00274d; /* Lacivert */
        }

        .program-container p {
            font-size: 16px;
            line-height: 1.6;
            margin-top: 10px;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="program-container">
        <h2>Full Body Programı</h2>
        <p>
            Full body programı, vücudun tüm major kas gruplarını tek bir antrenmanda çalıştıran bir antrenman programıdır.
            Her seans, tüm vücudunuzun güçlenmesini ve dengeli bir gelişim sağlamayı hedefler.
        </p>

        <h2>Bölgesel Ağırlık Antrenmanı</h2>
        <p>
            Bölgesel ağırlık antrenmanı, belirli kas gruplarını hedefleyen ve bu kasların güçlenmesini ve hacim kazanmasını sağlayan
            bir antrenman programıdır. Örneğin, göğüs, sırt, bacak gibi belirli bölgelere odaklanabilirsiniz.
        </p>
    </div>
</asp:Content>