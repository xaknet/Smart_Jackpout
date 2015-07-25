<%@ Page Language="C#" Inherits="Smart_Jackpout.Default" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>jQuery Countdown</title>
<link rel="stylesheet" href="css/jquery.countdown.css">
<style type="text/css">
#noDays { width: 240px; height: 45px; }
</style>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<script src="js/jquery.plugin.js"></script>
<script src="js/jquery.countdown.js"></script>
<script>
$(function () {
	var liftoff = new Date();
    liftoff = new Date(liftoff.getFullYear(), liftoff.getMonth(), liftoff.getDate(), 24, 0, 0);

    $('#noDays').countdown({until: liftoff, padZeroes: true});
});
</script>
</head>
<body>
	<form id="form1" runat="server">
		<h3>Time Until Launch</h3>
		<div id="noDays"></div>
		<div>
			<asp:Label id="lblLotteryJackpout"></asp:Label>
			<asp:TextBox id="txtAmount" runat="server" placeholder="Type amount for pay"></asp:TextBox>
			<asp:Button id="btnPay" Text="Pay" OnClick="OnClickPay" runat="server"></asp:Button>
			<asp:Label id="lblAmount" Visible="false" runat="server" Font="14px"></asp:Label>
		</div>
	</form>
</body>
</html>


