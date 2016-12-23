<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="purchase.aspx.cs" Inherits="Artbeat.UserDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="form-group"> 
        <asp:Label runat="server" CssClass="col-md-2 control-label" Font-Bold="True">First Name : </asp:Label>
         <div class="col-md-10"> 
            
        <asp:TextBox runat="server" ID="Fname" CssClass="form-control"/>
            
             <br />
         </div>
    </div>
    <div class="form-group"> 
        <asp:Label runat="server" CssClass="col-md-2 control-label" Font-Bold="True">Last Name : </asp:Label>
         <div class="col-md-10"> 
            
        <asp:TextBox runat="server" ID="Lname" CssClass="form-control"/>
            
             <br />
         </div>
    </div>
    <div class="form-group"> 
        <asp:Label runat="server" CssClass="col-md-2 control-label" Font-Bold="True">Address : </asp:Label>
         <div class="col-md-10"> 
             
        <asp:TextBox runat="server" ID="Address" CssClass="form-control" TextMode="MultiLine" Height="61px" Width="283px"/>
             <br />
         </div>
    </div>
    <div class="form-group"> 
        <asp:Label runat="server" CssClass="col-md-2 control-label" Font-Bold="True">Mobile number : </asp:Label>
         <div class="col-md-10"> 
              
            
        <asp:TextBox runat="server" ID="Mob" CssClass="form-control"/>
             <br />
         </div>

        <div class="form-group"> 
        <asp:Label runat="server" CssClass="col-md-2 control-label" Font-Bold="True">Payment Type : </asp:Label>
         <div class="col-md-10"> 
             <asp:Label ID="lblSPT" runat="server" Text="Please select one payment type."></asp:Label>
               <asp:RadioButtonList ID="RadioButtonList1" runat="server" AutoPostBack="True" >
                   <asp:ListItem>Visa</asp:ListItem>
                   <asp:ListItem>Master</asp:ListItem>
             </asp:RadioButtonList>
             <br />
         </div>

            <div class="form-group"> 
        <asp:Label runat="server" CssClass="col-md-2 control-label" Font-Bold="True">Card Number </asp:Label>
         <asp:TextBox ID="txtCCN" runat="server"></asp:TextBox>
    </div>  
            
            
           <b>Total price :</b>
           <b><asp:Label ID="lblTotalCost" runat="server"></asp:Label></b> 
            <br />

            <br />
             
             <br />
    <div class="form-group">
        <div class="col-md-offset-2 col-md-10">
            <asp:Button runat="server" Text="Confirm order" CssClass= "btn btn-success" PostBackUrl="~/ThankYou.aspx" />
            <asp:Button runat="server" Text="Cancel" CssClass= "btn btn-success" PostBackUrl="~/ShoppingCart.aspx" ID="btnCancel" OnClick="btnCancel_Click" CausesValidation="False" />
        </div>
    </div>
    </div>
    </div>
</asp:Content>
