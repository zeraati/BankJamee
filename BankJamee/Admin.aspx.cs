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
    public partial class admin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            dsStudent.dtPersonInfoDataTable dtPersonInfo = new dsStudent.dtPersonInfoDataTable();
            dsStudentTableAdapters.taPersonInfo taPersonInfo = new dsStudentTableAdapters.taPersonInfo();

            string Name = txtName.Text;
            string Family = txtFamily.Text;
            string CodeMelli = txtCodeMelli.Text;
            string Shenasname = txtShenasname.Text;
            string STID = txtStudentID.Text;
            string MKID = txtMKID.Text;

            if (CodeMelli != "" && CodeMelli.Substring(0, 1) == "0") { CodeMelli = CodeMelli.Substring(1, CodeMelli.Length - 2); }

            StringBuilder html = new StringBuilder();

            taPersonInfo.FillPersonInfoByAll(dtPersonInfo, STID, Name, Family, CodeMelli, Shenasname, MKID);
          
            string[] aryColumnOrdinal = { "STID", "MKID", "Name_ST", "Name_MK", "Family_ST", "Family_MK", "Father_ST", "Father_MK", "CodeMelli_ST", "CodeMelli_MK", "Shenasname_ST", "Shenasname_MK", "Sadere_ST", "Sadere_MK" };
            for (int i = 0; i < dtPersonInfo.Columns.Count; i++)
            { dtPersonInfo.Columns[aryColumnOrdinal[i]].SetOrdinal(i);}

            html.Append("<div class='container-result'><h5>اطلاعات شخصی</h5>");

            html.Append("<table class='striped highlight responsive-table'>");

            string[] aryColumn = { "شناسه", "نام", "نام‌خانوادگی", "نام‌پدر", "کدملی", "شناسنامه", "صادره" };

            html.Append("<thead><tr>");
            for (int i = 0; i < aryColumn.Length; i++)
            { html.Append(string.Format("<th>{0}</th>", aryColumn[i])); }
            html.Append("</tr></thead>");

            #region tbody
            html.Append("<tbody>");
            for (int row = 0; row < dtPersonInfo.Rows.Count; row++)
            {
                html.Append("<tr>");
                for (int col = 0; col < dtPersonInfo.Columns.Count; col+=2)
                {
                    string ST = dtPersonInfo.Rows[row][col].ToString();
                    string MK = dtPersonInfo.Rows[row][col+1].ToString();

                    if (col==0)
                    {
                        html.Append("<td>");
                        html.Append(string.Format("<table class='tbl-in-cel responsive-table'><tr><td><b>مرکزمدیریت:</b><a href='result.aspx?STID={0}' target='_blank'>{0}</a></td></tr>", ST));
                        html.Append(string.Format("<tr><td><b>مرکزخدمات:</b><a href='result.aspx?STID={1}' target='_blank'>{0}</a></td></tr></table>", MK, ST));
                        html.Append("</td>");
                        continue;
                    }
                    

                    html.Append("<td>");
                    html.Append(string.Format("<table class='tbl-in-cel'><tr><td>{0}</td></tr>", MK));
                    html.Append(string.Format("<tr><td>{0}</td></tr></table>", ST));
                    html.Append("</td>");
                }
                html.Append("</tr>");
            }
            html.Append("</tbody>");
            #endregion

            html.Append("</table></div>");




            //daStudent.FillMKByPersonInfo(dtStudent,StudentID, MKID, CodeMelli, Name, Family, Shenasname);

            //html.Append("<div class='container-result'><h5>مرکزخدمات</h5>");

            //html.Append("<table class='striped highlight responsive-table'>");

            //html.Append("<thead><tr>");
            //foreach (DataColumn column in dtStudent.Columns)
            //{ html.Append(string.Format("<th>{0}</th>", column.ColumnName)); }
            //html.Append("</tr></thead>");

            //html.Append("<tbody>");
            //foreach (DataRow row in dtStudent.Rows)
            //{
            //    html.Append("<tr>");
            //    foreach (DataColumn column in dtStudent.Columns)
            //    { html.Append(string.Format("<td>{0}</td>", row[column.ColumnName])); }
            //    html.Append("</tr>");
            //}
            //html.Append("</tbody>");

            //html.Append("</table></div>");

















            ltrResult.Text = html.ToString();

        }
    }
}