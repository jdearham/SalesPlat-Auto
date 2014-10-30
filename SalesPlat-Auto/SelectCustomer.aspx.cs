using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SalesPlat_Auto
{
    public partial class SelectCustomer : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (RadioButtonList1.SelectedValue == "0")
            {
                Response.Redirect("AddCustomer.aspx");
            }
            if (RadioButtonList1.SelectedValue == "1")
            {
                Response.Redirect("Customer.aspx");
            }
        }
    }
}