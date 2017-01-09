using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace BankJamee
{
    public class Helper
    {
        #region Alert
        /// <summary>
        /// 1=>Success;    2=>Info;    3=>Warning;    4=>Danger
        /// </summary>
        /// <param name="oType"></param>
        /// <param name="oMessage"></param>
        /// <param name="oTimeShow"></param>
        public virtual string Alert(int intType, string strMessage, int intTimeShow = 2500)
        {
            string strAlertFunction = string.Empty;
            string strType = string.Empty;

            switch (intType)
            {
                case 1: strType = "Success"; break;
                case 2: strType = "Info"; break;
                case 3: strType = "Warning"; break;
                case 4: strType = "Danger"; break;
            }

            return strAlertFunction = string.Format("Alert('{0}','{1}',{2})", strType, strMessage, intTimeShow);            
        }

        public virtual string MultiAlert(int intType, List<string> lstMessage, int intTimeShow = 5000)
        {
            if (lstMessage.Count == 1)
            {
                return Alert(intType, lstMessage[0], intTimeShow);
            }

            string strMessage = string.Empty;
            for (int i = 0; i < lstMessage.Count; i++)
            {
                if (i == 0)
                {
                    strMessage = lstMessage[i];
                    continue;
                }

                strMessage += "<br/><br/>" + lstMessage[i];
            }

           return Alert(intType, strMessage, intTimeShow);
        }
        #endregion
    }
}