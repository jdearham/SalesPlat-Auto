using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SalesPlat_Auto
{
    public partial class SelectStock : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            this.TextBox1.Text = Request.QueryString["customerId"];
            this.TextBox2.Text = Request.QueryString["salesmanId"];
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Invoice.aspx?customerId=" + this.TextBox1.Text + "&salesmanId=" + this.TextBox2.Text + "&stockId=" + this.DropDownList1.SelectedValue);
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("default.aspx");
        }
    }
}