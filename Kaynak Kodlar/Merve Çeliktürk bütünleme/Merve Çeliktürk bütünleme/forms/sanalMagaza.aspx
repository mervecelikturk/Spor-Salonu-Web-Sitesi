<%@ Page Title="" Language="C#" MasterPageFile="~/forms/UyeanaSayfasi.Master" AutoEventWireup="true" CodeBehind="sanalMagaza.aspx.cs" Inherits="Merve_Çeliktürk_bütünleme.forms.sanalMagaza" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <!-- Sayfa başlığı ve meta etiketleri buraya eklenebilir -->
    <style>
        /* Sayfa özel stil ayarları */
        .product-container {
            max-width: 1000px;
            margin: 20px auto;
            text-align: center;
        }

        .product-item {
            display: inline-block;
            width: 23%; /* Her satırda 3 ürün, bu nedenle %23'lük genişlik */
            margin: 10px;
            text-align: center;
        }

        .product-item img {
            max-width: 100%;
            height: auto;
        }

        .product-item p {
            margin-top: 5px;
            font-size: 14px;
            color: #555;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="product-container">
        <%-- 10 satır, her satırda 3 ürün --%>
        <% for (int i = 1; i <= 39; i++) { %>
            <div class="product-item">
                <img src="images/product<%= i %>.jpg" alt="Ürün <%= i %>" />
                <p>Ürün <%= i %></p>
            </div>
        <% } %>
    </div>
</asp:Content>