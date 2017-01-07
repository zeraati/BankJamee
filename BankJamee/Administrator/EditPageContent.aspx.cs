using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BankJamee.Administrator
{
    public partial class EditPageContent : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Initialize();
            }
        }

        private void Initialize()
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

        protected void btnOpen_Click(object sender, EventArgs e)
        {
            string strPageName = txtPageName.Text.Trim();

            if (strPageName == "")
            {
                AlertWarning("نام صفحه را وارد کنید.");
                return;
            }

            string strRelativePath = string.Format("~/App_Data/PageContent/{0}.html", strPageName);

            string strPath = Server.MapPath(strRelativePath);

            if (!File.Exists(strPath))
            {
                string strAlert = string.Format("صفحه [{0}] وجود ندارد.", strPageName);
                AlertWarning(strAlert);
            }

            StreamReader oStreamReader = null;

            try
            {
                oStreamReader = new StreamReader(strPath, System.Text.Encoding.UTF8);
                txtPageContent.Text = oStreamReader.ReadToEnd();

                string strAlert = string.Format("صفحه [{0}] با موفقیت بارگذاری شد.", strPageName);
                AlertSuccess(strAlert);
            }
            catch (Exception)
            {
                string strAlert = string.Format("صفحه [{0}] بارگذاری نشد.", strPageName);
                AlertDanger(strAlert);
            }
            finally
            {
                if (oStreamReader != null)
                {
                    oStreamReader.Dispose();
                    oStreamReader = null;
                }
            }


        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            string strPageName = txtPageName.Text.Trim();

            string strPath = Server.MapPath(string.Format("~/App_Data/PageContent/{0}.html",strPageName));

            if (strPageName=="")
            {
                AlertWarning("نام صفحه را واردکنید.");
                return;
            }

            StreamWriter oStreamWriter = null;

            try
            {
                oStreamWriter = new StreamWriter(strPath,false,System.Text.Encoding.UTF8);
                oStreamWriter.Write(txtPageContent.Text);

                AlertSuccess(string.Format("صفحه {0} ذخیره شد.",strPageName));
            }
            catch (Exception)
            {
                string strAlert = string.Format("صفحه [{0}] ذخیره نشد.", strPageName);
                AlertDanger(strAlert);
                return;
            }
            finally
            {
                if (oStreamWriter!=null)
                {
                    oStreamWriter.Dispose();
                    oStreamWriter = null;
                }
            }
        }

        protected void btnTest_Click(object sender, EventArgs e)
        {

        }
    }
}