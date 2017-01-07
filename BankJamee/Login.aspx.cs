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

        #region Alert
        #region AlertSuccess
        protected virtual void AlertSuccess(string oMessage)
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "Alert", "AlertSuccess('" + oMessage + "');", true);
        }
        #endregion

        #region AlertInfo
        protected virtual void AlertInfo(string oMessage)
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "Alert", "AlertInfo('" + oMessage + "');", true);
        }
        #endregion

        #region AlertWarning
        protected virtual void AlertWarning(string oMessage)
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "Alert", "AlertWarning('" + oMessage + "');", true);
        }
        #endregion

        #region AlertDanger
        protected virtual void AlertDanger(string oMessage)
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "Alert", "AlertDanger('" + oMessage + "');", true);
        }
        #endregion

        #endregion

        protected void btnLogin_Click(object sender, EventArgs e)
        {
           ds
        }
    }
}