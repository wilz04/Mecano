<%@page import="mecano.*, java.util.StringTokenizer"%>
<html>
	<head>
		<script language="JavaScript" type="text/JavaScript" src="Classes/Request.js"></script>
		<script language="JavaScript" type="text/JavaScript">
			<!--
			var req = new Request();
			var aValue = 0;
			
			function init() {
				<% session.setAttribute("materials", request.getParameter("taBuy"));
				if (request.getParameter("tPwd") != null) {
					User user = new User();
					user.login(request.getParameter("tId"), request.getParameter("tPwd")); %>
					var bValue = <%=user.getValue()%>;
					var total = req.getParameter("tTotal");
					aValue = bValue - parseInt(total.substring(3, total.length-3));
					
					var date = new Date();
					var day = date.getDate();
					var month = date.getMonth() + 1;
					var year = date.getYear();
					
					fCCard.tPwd.value = req.getParameter("tPwd");
					fCCard.tBValue.value = bValue.toString();
					fCCard.tAValue.value = aValue.toString();
					fCCard.tToday.value = day.toString() + "-" + month.toString() + "-" + year.toString();
					
					date.setMonth(month);
					var day = date.getDate();
					var month = date.getMonth() + 1;
					var year = date.getYear();
					fCCard.tTime.value = day.toString() + "-" + month.toString() + "-" + year.toString();
				<% } %>
			}
			
			function check() {
				if (fCCard.tPwd.value == "") {
					window.alert("Debes digitar tu Id!");
					return false;
				} else {
					return true;
				}
			}
			
			function fill() {
				if (check()) {
					fCCard.target = "_self";
					fCCard.action = "#&tId=" + req.getParameter("tId") + "&tPwd=" + fCCard.tPwd.value;
					fCCard.submit();
				}
			}
			-->
		</script>
		<style type="text/css">
			<!--
			Input {
				font-family: Verdana;
				font-size: 10px;
				font-weight: bold;
				background-color: #BFC7D2;
				border: 1px solid #000000;
			}
			.hide {
				background-color: #FFFFCC;
				border: 1px solid #FFFFCC;
			}
			-->
		</style>
	</head>
	<body bgcolor="#DFE3E9" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0" onLoad="init();">
		<br>
		<center>
			<form id="fCCard" method="POST" target="_parent" action='Bill.jsp?tId=<%=request.getParameter("tId")%>&name=<%=request.getParameter("tAName") + " " + request.getParameter("tBName") + " " + request.getParameter("tCName")%>&credit=1&total=<%=request.getParameter("tTotal")%>'>
				<font size="2" face="Verdana">
					<u>Cr�dito:</u><br>
				</font>
				<br>
				<table width="300" border="1" borderColor="#DFE3E9" cellSpacing="2" cellPadding="2">
					<tr>
						<td align="right" height="30" bgColor="#EFF1F4" borderColor="#7F8EA5">
							<font size="1" face="Verdana">
								Id [pin]: &nbsp;
							</font>
						</td>
						<td height="30" bgColor="#EFF1F4" borderColor="#7F8EA5">
							&nbsp; <input name="tPwd" type="Password" size="25">
							<input name="bUpdate" type="Button" value="Ver" onClick="fill();">
						</td>
					</tr>
					<tr>
						<td colspan="2" align="right" height="120" bgColor="#FFFFCC" borderColor="#FFCC00">
							<font size="1" face="Verdana">
								Capital anterior: &nbsp;
							</font>
							<input class="hide" name="tBValue" type="text" size="15" readonly="true"><br>
							<font size="1" face="Verdana">
								Capital posterior [-total]: &nbsp;
							</font>
							<input class="hide" name="tAValue" type="text" size="15" readonly="true"><br>
							<font size="1" face="Verdana">
								Fecha de compra: &nbsp;
							</font>
							<input class="hide" name="tToday" type="text" size="15" readonly="true"><br>
							<font size="1" face="Verdana">
								Fecha de corte: &nbsp;
							</font>
							<input class="hide" name="tTime" type="text" size="15" readonly="true">
						</td>
					</tr>
					<tr>
						<td bgColor="#EFF1F4" borderColor="#7F8EA5">
							&nbsp;
						</td>
						<td bgColor="#EFF1F4" borderColor="#7F8EA5">
							&nbsp;
						</td>
					</tr>
				</table>
				<input id="sSend" type="Submit" value="Enviar" onClick="return check();">
			</form>
		</center>
	</body>
</html>
