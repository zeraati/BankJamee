using System;
using System.IO;

namespace BankJamee
{
    public partial class About : System.Web.UI.Page
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
            string strRootRelativePath = "~/App_Data/PageContent/About.html";
            string strPath = Server.MapPath(strRootRelativePath);

            if (File.Exists(strPath))
            {
                StreamReader oStreamReader = null;
                try
                {
                    oStreamReader = new StreamReader(strPath, System.Text.UnicodeEncoding.UTF8);

                    litPageContent.Text = oStreamReader.ReadToEnd();
                }

                catch (Exception ex)
                {
                    litPageContent.Text = ex.Message;
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
        }
    }
}