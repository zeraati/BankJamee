using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
//using App_Code.DAL;

namespace BankJamee
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                Helper clsHelper = new Helper();
                string strAlertScript = string.Empty;

                dsUsers.dtUsersDataTable dtUsers = new dsUsers.dtUsersDataTable();
                dsUsersTableAdapters.taUsers taUsers = new dsUsersTableAdapters.taUsers();

                taUsers.FillUserByUserName(dtUsers, txtUserNam.Text);

                string strMessage = string.Empty;

                if (dtUsers.Count != 1)
                {
                    strMessage = "نام کاربری با رمز عبور صحیح نیست";
                    strAlertScript=clsHelper.Alert(4, strMessage, 3000);
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "Alert", strAlertScript, true);
                    return;
                }

                dsUsers.dtUsersRow UserRow = dtUsers[0];
                if (string.Compare(UserRow.Password.Trim(), txtPassword.Text.Trim(), false) != 0)
                {
                    strMessage = "نام کاربری با رمز عبور صحیح نیست";
                    strAlertScript = clsHelper.Alert(4, strMessage, 3000);
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "Alert", strAlertScript, true);
                    return;
                }

                if (UserRow.IsUserActive == false)
                {
                    strMessage = string.Format("کاربری گرامی {0}، شما مجوز ورود به سایت را ندارید. با بخش فنی سایت تماس بگیرید", UserRow.FullName);
                    strAlertScript = clsHelper.Alert(3, strMessage, 3000);
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "Alert", strAlertScript, true);
                    return;
                }

                strMessage = string.Format("{0} خوش آمدید", UserRow.FullName);
                strAlertScript = clsHelper.Alert(1, strMessage, 3000);
                Page.ClientScript.RegisterStartupScript(this.GetType(), "Alert", strAlertScript, true);
            }
        }
    }
}