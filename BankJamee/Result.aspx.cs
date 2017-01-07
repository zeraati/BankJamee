using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BankJamee
{
    public partial class result : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //int STID = Int32.Parse(Request.QueryString["STID"]);
            int STID = 66516;

            dsStudent.dtHamsarFarzandDataTable dtHamsarFarzand = new dsStudent.dtHamsarFarzandDataTable();
            dsStudentTableAdapters.taHamsarFarzand taHamsarFarzand = new dsStudentTableAdapters.taHamsarFarzand();

            taHamsarFarzand.FillHamsarFarzandByMKID(dtHamsarFarzand, STID);


            string s = HtmlResult("HamsarFarzand", dtHamsarFarzand);
            ltrResult.Text = s;
        }

        private string HtmlResult(string Title,DataTable dt)
        {
            StringBuilder html = new StringBuilder();

            string strTitle =string.Empty;
            string strIcon = string.Empty;

            switch (Title)
            {
                case "csis":
                    strTitle = "مرکزخدمات";
                    strIcon = "<img src = 'img/csis.png' alt='csis' />";
                    break;

                case "HamsarFarzand":
                    strTitle = "خانواده";
                    strIcon= "<i class='material-icons'>supervisor_account</i>";
                    break;

                default:
                    strTitle = "بدون عنوان";
                    break;
            }


            html.Append("<li><div class='collapsible-header'>"+ strIcon + "<h5>"+strTitle+" </h5></div>");

            html.Append("<div class='collapsible-body' style='display: none; '><table class='striped highlight responsive-table'>");

            html.Append("<thead><tr>");
            foreach (DataColumn column in dt.Columns)
            { html.Append(string.Format("<th>{0}</th>", column.ColumnName)); }
            html.Append("</tr></thead>");

            html.Append("<tbody>");
            foreach (DataRow row in dt.Rows)
            {
                html.Append("<tr>");
                foreach (DataColumn column in dt.Columns)
                { html.Append(string.Format("<td>{0}</td>", row[column.ColumnName])); }
                html.Append("</tr>");
            }
            html.Append("</tbody>");

            html.Append("</table></div></li>");

            return html.ToString();
        }
    }
}