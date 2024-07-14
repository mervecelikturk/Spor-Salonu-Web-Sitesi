<%@ Page Title="" Language="C#" MasterPageFile="~/forms/AnaSayfa.Master" AutoEventWireup="true" CodeBehind="subelerimiz.aspx.cs" Inherits="Merve_Çeliktürk_bütünleme.forms.subelerimiz" %>

<asp:Content ID="HeaderContent" ContentPlaceHolderID="HeadContent" runat="server">
    
    <!-- Head içerik alanı, içerik sayfalarının ekleyebileceği ek head içeriği içindir. -->
    
    <style>
        /* Şubelerimiz sayfası ana stil ayarları */
        .branches-container {
            display: flex;
            padding: 20px;
        }

        /* Sol taraf (başlıklar ve paragraflar) stil ayarları */
        .branches-left {
            flex: 1;
            padding: 20px;
        }

        .branches-left h1 {
            color: #00274d; /* Lacivert renk */
            margin-bottom: 10px;
        }

        .branches-left p {
            color: #333; /* Siyah renge yakın bir gri */
            margin-bottom: 20px;
            font-size: 16px;
        }

        /* Sağ taraf (resimler) stil ayarları */
        .branches-right {
            flex: 1;
            padding: 20px;
            display: flex;
            flex-direction: column;
            align-items: center;
        }

        .branches-right img {
            width: 100%;
            max-width: 300px; /* Resimlerin maksimum genişliği */
            margin-bottom: 20px;
            border: 2px solid #00274d; /* Lacivert sınır */
        }
    </style>
</asp:Content>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
<!-- Ana içerik alanı, içerik sayfalarının ekleyeceği ana içerik içindir. -->

    <!-- Şubelerimiz sayfası ana içerik alanı -->
    <div class="branches-container">
        <div class="branches-left">
            <h1>Rize Şubemiz:</h1>
            <p>Bu, Şube 1 hakkında açıklayıcı bir paragraftır. Şube 1 adresi ve diğer bilgileri burada yer alabilir.</p>
            <h1>Ankara şubemiz:</h1>
            <p>Bu, Şube 2 hakkında açıklayıcı bir paragraftır. Şube 2 adresi ve diğer bilgileri burada yer alabilir.</p>
            <h1>İstanbul Şubemiz:</h1>
            <p>Bu, Şube 3 hakkında açıklayıcı bir paragraftır. Şube 3 adresi ve diğer bilgileri burada yer alabilir.</p>
            <h1>Ankara'da yeni açılacak şubemiz:</h1>
            <p>Bu, Şube 4 hakkında açıklayıcı bir paragraftır. Şube 4 adresi ve diğer bilgileri burada yer alabilir.</p>
        </div>
        <div class="branches-right">
            <img src="resim.jpg" alt="Şube 1 Resmi">
            <img src="resim.jpg" alt="Şube 2 Resmi">
            <img src="resim.jpg" alt="Şube 3 Resmi">
            <img src="resim.jpg" alt="Şube 4 Resmi">
        </div>
    </div>
</asp:Content>
