using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BankJamee
{


    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        Helper clsHelper = new Helper();

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                string strAlertScript = string.Empty;

                dsUsers.dtUsersDataTable dtUsers = new dsUsers.dtUsersDataTable();
                dsUsersTableAdapters.taUsers taUsers = new dsUsersTableAdapters.taUsers();

                List<string> lstMessage = ChackValidationForUserNameAndMail(dtUsers, taUsers, txtUserName.Text, txtEmail.Text);
                if (lstMessage.Count > 0)
                {
                    strAlertScript = clsHelper.MultiAlert(3, lstMessage);
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "Alert", strAlertScript, true);
                    return;
                }

                dsUsers.dtUsersRow UserRow = dtUsers.NewdtUsersRow();
                UserRow.IsUserActive = true;
                UserRow.UserName = txtUserName.Text;
                UserRow.Password = txtPassword.Text;
                UserRow.Email = txtEmail.Text;

                dtUsers.AdddtUsersRow(UserRow);
                taUsers.Update(dtUsers);

                strAlertScript = clsHelper.Alert(1, "ثبت نام شما انجام شد.");
                Page.ClientScript.RegisterStartupScript(this.GetType(), "Alert", strAlertScript, true);

                txtUserName.Text = txtPassword.Text = txtPasswordConfirm.Text = txtEmail.Text = txtEmailConfirm.Text=string.Empty;
            }
        }

        private List<string> ChackValidationForUserNameAndMail(dsUsers.dtUsersDataTable UsersTable, dsUsersTableAdapters.taUsers UsersAdapters
            , string UserName, string Mail)
        {
            List<string> lst = new List<string>();

            UsersAdapters.FillUserByUserName(UsersTable, UserName);

            if (UsersTable.Count != 0)
            { lst.Add("نام کاربری تکراری است."); }

            UsersAdapters.FillUserByEmail(UsersTable, Mail);
            if (UsersTable.Count != 0)
            { lst.Add("رایانامه تکراری است."); }

            return lst;
        }
    }
}