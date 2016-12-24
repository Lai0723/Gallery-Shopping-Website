using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Artbeat.Logic;

namespace Artbeat
{
    public partial class UserDetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            using (ShoppingCartActions usersShoppingCart = new ShoppingCartActions())
            {
                decimal cartTotal = 0;
                cartTotal = usersShoppingCart.GetTotal();

                // Display Total.
                lblTotalCost.Text = String.Format("{0:c}", cartTotal);

            }
        }

       

        protected void btnCancel_Click(object sender, EventArgs e)
        {
           

            Fname.Text = "";
            Lname.Text = "";
            Address.Text = "";
            Mob.Text = "";
          

        }

        protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (RadioButtonList1.SelectedIndex == 0)
            {
               VisaCardValid.Enabled = true;
                MasterCardValid.Enabled = false;

            }
            else
            {
                VisaCardValid.Enabled = false;
               MasterCardValid.Enabled = true;
            }
        }

    }
}