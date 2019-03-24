using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MagazineClient
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void bntLogin_Click(object sender, EventArgs e)
        {
            if (IsValid)
            {
                try
                {
                    LoginInfo loginInfo = DatabaseHelper.Login(tbUsername.Text, tbPassword.Text);
                    Session.Add("login", loginInfo);
                    Response.Redirect("~/Home.aspx");
                }
                catch (Exception)
                {
                    lblInvalid.Visible = true;
                }
            }

        }
    }
}