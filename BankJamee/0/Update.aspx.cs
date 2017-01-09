using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BankJamee
{
    public partial class Update : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack == false)
            { Initialize(); }
            
        }

        protected void Initialize()
        {
            Helper clsHelper = new Helper();

            dsUsers.dtUsersDataTable dtUsers = new dsUsers.dtUsersDataTable();
            dsUsersTableAdapters.taUsers taUsers = new dsUsersTableAdapters.taUsers();

            taUsers.FillUserByUserID(dtUsers, 5);

            if (dtUsers.Count!=1)
            {
                string strMessage = "کاربری برای بروز رسانی وجود ندارد";
                string strAlertScript = clsHelper.Alert(3, strMessage);
                Page.ClientScript.RegisterStartupScript(this.GetType(), "Alert", strAlertScript, true);
                return;
            }

            dsUsers.dtUsersRow UsersRow = dtUsers[0];

            txtUserName.Text = UsersRow.UserName;

            if (UsersRow.IsNamNull()==false)
            { txtNam.Text = UsersRow.Nam;}

            if (UsersRow.IsFamilyNull()==false)
            {txtFamily.Text = UsersRow.Family;}

            if (UsersRow.IsMobileNull() == false)
            { txtMobile.Text = UsersRow.Mobile; }
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            if (Page.IsValid==true)
            {
                Helper clsHelper = new Helper();

                dsUsers.dtUsersDataTable dtUsers = new dsUsers.dtUsersDataTable();
                dsUsersTableAdapters.taUsers taUsers = new dsUsersTableAdapters.taUsers();

                taUsers.FillUserByUserID(dtUsers, 5);
                dsUsers.dtUsersRow UsersRow = dtUsers[0];

                if (txtNam.Text==string.Empty)
                {UsersRow.SetNamNull();}
                else
                { UsersRow.Nam = txtNam.Text; }

                if (txtFamily.Text==string.Empty)
                {UsersRow.SetFamilyNull();}
                else
                {UsersRow.Family = txtFamily.Text;}

                if (txtPassword.Text!=string.Empty)
                {UsersRow.Password = txtPassword.Text;}

                if (txtEmail.Text != string.Empty)
                { UsersRow.Email = txtEmail.Text; }

                if (txtMobile.Text != string.Empty)
                { UsersRow.Mobile = txtMobile.Text; }

                taUsers.Update(dtUsers);

                string strMessage = "اطلاعات بروز رسانی شد.";
                string strAlertScript = clsHelper.Alert(1, strMessage);
                Page.ClientScript.RegisterStartupScript(this.GetType(), "Alert", strAlertScript, true);
            }
        }
    }
}