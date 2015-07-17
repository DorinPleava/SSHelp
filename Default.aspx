<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script type="text/javascript">
<!--

    function updateClock() {
        var currentTime = new Date();

        var currentHours = currentTime.getHours();
        var currentMinutes = currentTime.getMinutes();
        var currentSeconds = currentTime.getSeconds();

        // Pad the minutes and seconds with leading zeros, if required
        currentMinutes = (currentMinutes < 10 ? "0" : "") + currentMinutes;
        currentSeconds = (currentSeconds < 10 ? "0" : "") + currentSeconds;

        // Choose either "AM" or "PM" as appropriate
        var timeOfDay = (currentHours < 12) ? "AM" : "PM";

        // Convert the hours component to 12-hour format if needed
        currentHours = (currentHours > 12) ? currentHours - 12 : currentHours;

        // Convert an hours component of "0" to "12"
        currentHours = (currentHours == 0) ? 12 : currentHours;

        // Compose the string for display
        var currentTimeString = currentHours + ":" + currentMinutes + ":" + currentSeconds + " " + timeOfDay;

        // Update the time display
        document.getElementById("clock").firstChild.nodeValue = currentTimeString;
    }

    // -->
</script>
    <link href="Layout.css" rel="stylesheet" type="text/css" />
</head>
<body onload="updateClock(); setInterval('updateClock()', 1000 )">
    <form id="form1" runat="server">
    <div style="height: 907px; text-align: center">
        <div style ="text-align:left">
            <span id="clock">&nbsp;</span>
        </div>
        <asp:Label ID="Label2" runat="server" Text="<%$ Resources:Resource, SmartSetHelperTitle %>" ></asp:Label>
        <br />
        <asp:Label ID="lblDLMSDateTime" runat="server" Text="DLMS Date Time"></asp:Label>
        <span class ="divider"></span>
        <asp:TextBox ID="TextBox1" runat="server" Width="232px"></asp:TextBox>
        <span class ="divider"></span>
        <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />
        <span class ="divider"></span>
        <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
        <br />
        <br />
        <br />
        <asp:Label ID="Label4" runat="server" Text="Hex To String"></asp:Label>
        <span class ="divider"></span>
        <asp:TextBox ID="TextBox2" runat="server" Height="86px" Width="192px" TextMode="MultiLine"></asp:TextBox>
        <span class ="divider"></span>
        <asp:Button ID="Button2" runat="server" Text="Button" OnClick="Button2_Click" />
        <span class ="divider"></span>
        <asp:TextBox ID="TextBox8" runat="server" Height="86px" Width="192px" TextMode="MultiLine"></asp:TextBox>

        <br />
        <br />
        <br />
        <asp:Label ID="Label6" runat="server" Text="String To Hex"></asp:Label>
        <span class ="divider"></span>
        <asp:TextBox ID="TextBox3" runat="server" Height="86px" Width="192px" TextMode="MultiLine"></asp:TextBox>
        <span class ="divider"></span>
        <asp:Button ID="Button3" runat="server" Text="Button" OnClick="Button3_Click" />
        <span class ="divider"></span>
        <asp:TextBox ID="TextBox9" runat="server" Height="86px" Width="192px" TextMode="MultiLine"></asp:TextBox>

         <br />
        <br />
        <br />
        <asp:Label ID="Label8" runat="server" Text="All To All"></asp:Label>
        <div style="height: 36px;text-align: center"">

             <asp:Label ID="lblDecimal" runat="server" Text="Decimal"></asp:Label>
             <span class ="divider"></span>
        <asp:TextBox ID="txtDecimal" runat="server" Height="16px" Width="119px"></asp:TextBox>
                <asp:Label ID="lblHex" runat="server" Text="Hex"></asp:Label>
             <span class ="divider"></span>
        <asp:TextBox ID="txtHex" runat="server" Height="16px" Width="119px"></asp:TextBox>
    <asp:Label ID="lblBinary" runat="server" Text="Binary"></asp:Label>
             <span class ="divider"></span>
        <asp:TextBox ID="txtBinary" runat="server" Height="16px" Width="119px"></asp:TextBox>
    <asp:Label ID="Label13" runat="server" Text="???"></asp:Label>
             <span class ="divider"></span>
        <asp:TextBox ID="TextBox7" runat="server" Height="16px" Width="119px"></asp:TextBox>

        </div>
        <asp:CheckBox ID="CheckBox4" runat="server" Text ="ToOtherEndian?" BorderStyle="Groove" />
        <span class ="divider"></span>
        <asp:Button ID="Button4" runat="server" Text="Button" />
        <span class ="divider"></span>
        <asp:Label ID="Label9" runat="server" Text="Label"></asp:Label>
       <br />
        <br />
          <asp:Label ID="Label1" runat="server" Text="Zigbee Time(seconds from 2000)"></asp:Label>
        <span class ="divider"></span>
        <asp:TextBox ID="TextBox4" runat="server" Width="232px"></asp:TextBox>
        <span class ="divider"></span>
        <asp:CheckBox ID="CheckBox5" runat="server" Text ="ToOtherEndian?" BorderStyle="Groove" />
        <span class ="divider"></span>
        <asp:Button ID="Button5" runat="server" Text="Button" OnClick="Button5_Click" />
        <span class ="divider"></span>
        <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
        <br />
        <br />
        <asp:Label ID="Label7" runat="server" Text="Decript my payload"></asp:Label>
        <span class ="divider"></span>
        <asp:TextBox ID="TextBox5" runat="server" Width="459px"></asp:TextBox>
        <span class ="divider"></span>
        <asp:Button ID="Button6" runat="server" Text="Button" />
        <br />
        <asp:Label ID="Label10" runat="server" Text="Label"></asp:Label> <span class ="divider"></span> <span class ="divider"></span><asp:Label ID="Label11" runat="server" Text="Label"></asp:Label>
    
         </div>
        

    </form>
</body>
</html>
