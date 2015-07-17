using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }


    protected void Button2_Click(object sender, EventArgs e)
    {
        TextBox8.Text = HexString2Ascii(TextBox2.Text);
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        TextBox9.Text = AsciiString2Hex(TextBox3.Text);
    }
    private string AsciiString2Hex(string str)
    {      
        char[] charValues = str.ToCharArray();
        string hexOutput = "";
        foreach (char _eachChar in charValues)
        {
            // Get the integral value of the character.
            int value = Convert.ToInt32(_eachChar);
            // Convert the decimal value to a hexadecimal value in string form.
            hexOutput += String.Format("{0:X}", value);
            // to make output as your eg 
            //  hexOutput +=" "+ String.Format("{0:X}", value);

        }
        return hexOutput;
    }
    private string HexString2Ascii(string hexString)
    {
        StringBuilder sb = new StringBuilder();
        hexString = hexString.Replace("\r\n","");
        hexString = hexString.Replace(" ", "");
        try
        {
            for (int i = 0; i <= hexString.Length - 2; i += 2)
            {
                sb.Append(Convert.ToString(Convert.ToChar(Int32.Parse(hexString.Substring(i, 2), System.Globalization.NumberStyles.HexNumber))));
            }
        }
        catch
        {
            return "Insert a HEX only string.";
        }
        return sb.ToString();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Label3.Text = DLMSDateTime2DateTime(TextBox1.Text);
    }
    private string DLMSDateTime2DateTime(string DLMSDateTime)
    {
        int year;
        int month;
        int day;
        int hour;
        int minute;
        int second;
        string hasError = "";
        try
        {
            if (Convert.ToInt32(DLMSDateTime.Substring(0, 4), 16) <= 2199)
            {
                year = Convert.ToInt32(DLMSDateTime.Substring(0, 4), 16);
            }
            else { year = 2000; hasError += "Year, "; }

            if (Convert.ToInt32(DLMSDateTime.Substring(4, 2), 16) <= 12)
            {
                month = Convert.ToInt32(DLMSDateTime.Substring(4, 2));
            }
            else { month = 1; hasError += "Months, "; }

            if (Convert.ToInt32(DLMSDateTime.Substring(6, 2), 16) <= 31)
            {
                day = Convert.ToInt32(DLMSDateTime.Substring(6, 2), 16);
            }
            else { day = 1; hasError += "Days, "; }


            if (Convert.ToInt32(DLMSDateTime.Substring(10, 2), 16) <= 24)
            {
                hour = Convert.ToInt32(DLMSDateTime.Substring(10, 2), 16);
            }
            else { hour = 1; hasError += "Hours, "; }


            if (Convert.ToInt32(DLMSDateTime.Substring(12, 2), 16) <= 60)
            {
                minute = Convert.ToInt32(DLMSDateTime.Substring(12, 2), 16);
            }
            else { minute = 1; hasError += "Minutes, "; }


            if (Convert.ToInt32(DLMSDateTime.Substring(14, 2), 16) <= 60)
            {
                second = Convert.ToInt32(DLMSDateTime.Substring(14, 2), 16);
            }
            else { second = 1; hasError += "Seconds, "; }
        }
        catch
        {
            year = 2000;
            month = 1;
            day = 1;
            hour = 1;
            minute = 1;
            second = 1;
            hasError += " Insert at least a 14 character string";
        }
        DateTime DateTime = new DateTime(year, month, day, hour, minute, second);
        if (hasError.Length > 3)
          hasError = hasError.Insert(0, " Errors found in: ");
        return DateTime.ToString() + hasError;
    }
    protected void Button5_Click(object sender, EventArgs e)
    {
        DateTime date = new DateTime(2000, 1, 1, 0, 0, 0);
        Int32 seconds = 0;
        try
        {
            if (CheckBox5.Checked == true)
            {
                seconds = Convert.ToInt32(ConvertToLittleEndian(TextBox4.Text), 16);
            }
            else
            {
                seconds = Convert.ToInt32(TextBox4.Text, 16);
            }
            date = date.AddSeconds(seconds);

            Label5.Text = date.ToString();
        }
        catch
        {
            Label5.Text = "Something went wrong. too many seconds"; 
        }

    }
    private static string ConvertToLittleEndian(string strOctStr)
    {
        string strRes = "";
        for (int i = strOctStr.Length - 2; i >= 0; i -= 2)
        {
            strRes += strOctStr.Substring(i, 2);
        }
        return strRes;
    }
    
}