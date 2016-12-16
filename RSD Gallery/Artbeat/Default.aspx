<%@ Page Title="Welcome" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Artbeat._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    
   <div id="slideshow" class="auto-style1" style="margin-top:50px;">
   <div><img src="images/g1.jpg" width="900" height="380"></div>
   <div><img src="images/g2.jpg" width="900" height="380"></div>
   <div><img src="images/g15.jpg" width="900" height="380"></div>
</div>

  <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
 
 
  <script>
    $("#slideshow > div:gt(0)").hide();

setInterval(function() { 
  $('#slideshow > div:first')
    .fadeOut(1000)
    .next()
    .fadeIn(1000)
    .end()
    .appendTo('#slideshow');
}, 3000);

</script>
    </div>

    <div class="row">
        <div class="col-md-4">
            <h2 style="background-color: rgba(252, 156, 22, 0.72)">Gallery</h2>
            <p>
                We have some display artworks checkout our gallery!!!</p>
            <p>
                <a class="btn btn-default" href="Gallery.aspx">Gallery</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2 style="background-color: rgba(252, 156, 22, 0.72)">Know more</h2>
            <p>
                Want to know more about RSD Gallery<br /> Navigate here
            </p>
            <p>
                <a class="btn btn-default" href="About.aspx">About RSD Gallery&raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2 style="background-color: rgba(252, 156, 22, 0.72)">Online Products</h2>
            <p>
                We have some awesome products for you. Visit our product section right now...!!!</p>
            <p>
                <a class="btn btn-default" href="ProductList.aspx">Shop now &raquo;</a>
            </p>
        </div>
    </div>
</asp:Content>
