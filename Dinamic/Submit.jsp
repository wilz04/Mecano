<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.util.StringTokenizer" errorPage="" %>
<html>
	<head>
		<script language="JavaScript" type="text/JavaScript" src="Classes/Request.js"></script>
		<script language="JavaScript" type="text/JavaScript" src="Classes/Tool.js"></script>
		<script language="JavaScript" type="text/JavaScript">
			<!--
			function init() {
				var req = new Request();
				var tools = new Array(
					new Tool("cbPolisher", "-1.TALON Pulidora el�ctica", 39900),
					new Tool("cbSkate", "-1.TALON Sierra pat�n", 31000),
					new Tool("cbGun", "-1.TALON Pistola", 39900),
					new Tool("cbBDrill", "-1.TECHWAY Taladro", 18700),
					new Tool("cbSharpening", "-1.DRILL DOCTOR Afiladora de brocas", 39800),
					new Tool("cbMotoTool", "-1.DREMEL MotoTool", 41999),
					new Tool("cbEmery", "-1.Esmeriladora angular", 31900),
					new Tool("cbEDrill", "-1.Taladro el�ctrico", 23900),
					new Tool("cbSander", "-1.Lijadora orbital", 39000)
				);
				var price = 0;
				<%
				if (session.getAttribute("blocks") == null) { %>
					fSubmit.taBuy.value = "";
					for (var i=0; i<9; i++) {
						if (req.getParameter(tools[i].name) != null) {
							fSubmit.taBuy.value += tools[i].legend + '\n';
							price += tools[i].price;
						}
					}
				<% } else {
					String blocks = session.getAttribute("blocks").toString();
					StringTokenizer tokens = new StringTokenizer(blocks, "-.\\n");
					int n;
					String desc = "";
					int price = 0;
					while (tokens.hasMoreTokens()) {
						n = Integer.parseInt(tokens.nextToken());
						desc = tokens.nextToken();
						if (desc.equals("Block 25 x 25 cm")) {
							price += n * 500;
						}
						if (desc.equals("Block 40 x 20 cm")) {
							price += n * 600;
						}
						if (desc.equals("Ladrillo")) {
							price += n * 400;
						}
					} %>
					price = <%=price%>;
					fSubmit.taBuy.value = "<%=blocks%>";
				<% } %>
				fSubmit.tPrice.value = '$' + price.toString() + ".00";
				price += percent(price, 13);
				fSubmit.tTotal.value = '$' + price.toString() + ".00";
			}
			
			function percent(x, y) {
				return y/100*x;
			}
			
			function redirect(url) {
				if ((fSubmit.tId.value == "") || (fSubmit.tAName.value == "") || (fSubmit.tBName.value == "") || (fSubmit.tCName.value == "")) {
					window.alert("Debes digitar todos tus datos!");
				} else {
					fSubmit.tId.readOnly = true;
					fSubmit.tAName.readOnly = true;
					fSubmit.tBName.readOnly = true;
					fSubmit.tCName.readOnly = true;
					
					fSubmit.action = url;
					fSubmit.submit();
				}
			}
			-->
		</script>
	  <style type="text/css">
			<!--
			Input, TextArea {
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
	<body bgcolor="#DFE3E9" onLoad="init();">
    <center>
			<br>
			<font size="5" face="Verdana">
				<b>Gracias por comprar nuestros productos!</b><br>
			</font>
			<br>
			<form id="fSubmit" method="GET" target="ifCard" action="CCard.jsp">
				<TextArea name="taBuy" cols="46" rows="8" readonly></TextArea><br>
				<br>
				<font size="2" face="Verdana">
					<u>Datos Personales:</u><br>
				</font>
				<br>
				<table width="300" border="1" borderColor="#DFE3E9" cellSpacing="2" cellPadding="2">
					<tr>
						<td bgColor="#EFF1F4" borderColor="#7F8EA5">&nbsp;
							
						</td>
						<td bgColor="#EFF1F4" borderColor="#7F8EA5">&nbsp;
							
						</td>
					</tr>
					<tr>
						<td align="right" height="30" bgColor="#EFF1F4" borderColor="#7F8EA5">
							<font size="1" face="Verdana">
								C�dula: &nbsp;
							</font>
						</td>
						<td height="30" bgColor="#EFF1F4" borderColor="#7F8EA5">
							&nbsp; <input name="tId" type="Text" size="30">
						</td>
					</tr>
					<tr>
						<td align="right" height="90" bgColor="#EFF1F4" borderColor="#7F8EA5">
							<font size="1" face="Verdana">
								Nombre: &nbsp;<br>
							</font>
							<br>
							<br>
						</td>
						<td height="30" bgColor="#EFF1F4" borderColor="#7F8EA5">
							&nbsp; <input name="tAName" type="Text" size="30"><br>
							&nbsp; <input name="tBName" type="Text" size="30"><br>
							&nbsp; <input name="tCName" type="Text" size="30">
						</td>
					</tr>
					<tr>
						<td colspan="2" align="right" height="60" bgColor="#FFFFCC" borderColor="#FFCC00">
							<font size="1" face="Verdana">
								Precio: &nbsp;
							</font>
              <input class="hide" name="tPrice" type="text" size="15" readonly="true"><br>
							<font size="1" face="Verdana">
								Total [+iv]: &nbsp;
							</font>
              <input class="hide" name="tTotal" type="text" size="15" readonly="true">
						</td>
					</tr>
					<tr>
						<td colspan="2" align="center" height="80" bgColor="#EFF1F4" borderColor="#7F8EA5">
							<a target="ifCard" onClick="redirect('CCard.jsp');"><img src="Images/CCard.jpg" border="0"></a>
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							<a target="ifCard" onClick="redirect('DCard.jsp');"><img src="Images/DCard.jpg" border="0"></a>
						</td>
					</tr>
				</table>
				<IFrame name="ifCard" width="300" height="330" frameBorder="0" scrolling="no" src="Nothing.htm">
				</IFrame>
			</form>
		</center>
	</body>
</html>
