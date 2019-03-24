using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MagazineClient
{
    public partial class Home : BasePage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnAddCustomer_Click(object sender, EventArgs e)
        {
            if (IsValid)
            {
                LoginInfo login = (LoginInfo)Session["login"];
                string prov = Convert.ToString(ddlProvince.SelectedValue);
                MagazineDAO magazineDAO = new MagazineDAO(login.UserName, login.Password);
                magazineDAO.AddCustomer(tbFirstName.Text, tbLastName.Text, tbAddress.Text, tbCity.Text, prov, tbPostalCode.Text, tbPhoneNumber.Text, tbEmail.Text);

                tbFirstName.Text = String.Empty;
                tbLastName.Text = String.Empty;
                tbAddress.Text = String.Empty;
                tbCity.Text = String.Empty;
                tbPostalCode.Text = String.Empty;
                tbPhoneNumber.Text = String.Empty;
                tbEmail.Text = String.Empty;
                ddlProvince.SelectedIndex = 0;

            }
        }

    }
}