using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Pizza_Website
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Totalbtn_Click(object sender, EventArgs e)
        {
            double total = 0.0;

            if (Margheritarb.Checked)
            {
                total = 3.60;
            }

            else if (Pepperonirb.Checked)
            {
                total = 3.80;
            }

            total = (Onionscb.Checked) ? total + 1.0: total;
            total = (GreenPepperscb.Checked) ? total + 0.50: total;
            total = (RedPepperscb.Checked) ? total + 0.75 : total;

            if ((Pepperonirb.Checked && Onionscb.Checked && GreenPepperscb.Checked && RedPepperscb.Checked))
                {
                total -= 2.0;
                }

            Totallbl.Text = "£" + total.ToString();
        }

        protected void grdPizza_SelectedIndexChanged(object sender, EventArgs e)
        {
            PizzaEntities db = new PizzaEntities();

            var customer = db.Customers.Find(grdCustomer.SelectedValue);
        }

        protected void Paymentbtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("Payment.aspx");
        }
    }
    }
