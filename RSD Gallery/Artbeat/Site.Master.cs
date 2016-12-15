using System;
using System.Collections.Generic;
using System.Security.Claims;
using System.Security.Principal;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Linq;
using Artbeat.Models;


namespace Artbeat
{
    public partial class SiteMaster : MasterPage
    {

        

        protected void master_Page_PreLoad(object sender, EventArgs e)
        {
           
        }

        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

       

        public IQueryable<Category> GetCategories()
        {
            var _db = new Artbeat.Models.ProductContext();
            IQueryable<Category> query = _db.Categories;
            return query;
        }

        protected void Unnamed_LoggingOut(object sender, LoginCancelEventArgs e)
        {
           
        }
    }
}