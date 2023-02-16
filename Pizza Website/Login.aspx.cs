using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Pizza_Website
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Loginbtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx");
        }

        protected void grdCustomer_SelectedIndexChanged(object sender, EventArgs e)
        {
            PizzaEntities db = new PizzaEntities();

            var customer = db.Customers.Find(grdCustomer.SelectedValue);

        }

        protected void DeleteRowbtn_Click(object sender, EventArgs e)
        {
            PizzaEntities db = new PizzaEntities();

            var customer = db.Customers.Find(grdCustomer.SelectedValue);

            db.Entry(customer).State = System.Data.Entity.EntityState.Deleted;

            db.SaveChanges();

            grdCustomer.DataBind();
        }

        protected void AddCustomerbtn_Click(object sender, EventArgs e)
        {
            PizzaEntities db = new PizzaEntities();

            var customer = new Customer();

            customer.Name = Nametb.Text;
            customer.Username = Usernametb.Text;
            customer.Password = Passwordtb.Text;

            db.Customers.Add(customer);

            db.SaveChanges();

            grdCustomer.DataBind();
        }
    }
}