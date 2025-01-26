<%@page import="mecano.*, java.util.StringTokenizer"%>
<html>
	<head>
		<%
			User user = new User();
			StringTokenizer tokens = new StringTokenizer(request.getParameter("total"), "$.");
			int n = 0;
			if (user.login(request.getParameter("tId"), request.getParameter("tPwd"))) {
				n = user.buy(Integer.parseInt(tokens.nextToken())).getId();
			}
			user.exit();
		%>
		<script language="JavaScript" type="text/JavaScript" src="Classes/Request.js"></script>
		<script language="JavaScript" type="text/JavaScript">
			<!--
			function init() {
				var now = new Date();
				var day = now.getDate();
				var month = now.getMonth() + 1 ;
				var year = now.getYear();
				tDate.value = day.toString() + "-" + month.toString() + "-" + year.toString();
				
				var req = new Request();
				if (req.getParameter("credit") == "1") {
					rPayType[1].checked = true;
				} else {
					rPayType[0].checked = true;
				}
				
				tName.value = req.getParameter("name");
				
				tSubTotal.value = req.getParameter("total");
				tDiscount.value = "0";
				tTotal.value = req.getParameter("total");
			}
			-->
		</script>
	  <style type="text/css">
			<!--
			th, .2D {
				font-family: Verdana;
				font-size: 10px;
				font-weight: bold;
				background-color: #BFC7D2;
				border: 1px solid #000000;
			}
			
			td {
				font-family: Verdana;
				font-size: 10px;
			}
			
			.hidden {
				font-family: Verdana;
				font-size: 10px;
				background-color: #EFF1F4;
				border: 1px solid #EFF1F4;
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
			<font size="2" face="Verdana">
				<u>Factura de Compra:</u><br>
			</font>
			<br>
			<table width="400" border="1" borderColor="#DFE3E9" cellSpacing="2" cellPadding="2">
				<tr>
					<td colspan="2" align="right" height="30" bgColor="#EFF1F4" borderColor="#7F8EA5">
						 <input class="hidden" name="tDate" type="text" readonly="true" style="text-align:right"> &nbsp;
					</td>
				</tr>
				<tr>
					<td align="left" height="30" bgColor="#EFF1F4" borderColor="#7F8EA5">
						&nbsp; Factura # <%=n%>
					</td>
					<td height="30" bgColor="#EFF1F4" borderColor="#7F8EA5" align="right">
						<input type="Radio" name="rPayType" value="0" disabled>
						Contado &nbsp;&nbsp;&nbsp;&nbsp;
						<input type="Radio" name="rPayType" value="1" disabled>
						Crédito &nbsp;
					</td>
				</tr>
				<tr>
					<td colspan="2" align="left" height="30" bgColor="#EFF1F4" borderColor="#7F8EA5">
						&nbsp; Nombre: <input class="hidden" name="tName" type="text" readonly="true">
					</td>
				</tr>
				<tr>
					<td colspan="2" height="30" bgColor="#EFF1F4" borderColor="#7F8EA5">
						<table width="100%"  border="0" cellspacing="0" cellpadding="0">
							<tr>
								<th scope="col" width="25%">
									Artículo
								</th>
								<th scope="col" width="25%">
									Unidad
								</th>
								<th scope="col" width="25%">
									Cantidad
								</th>
								<th scope="col" width="25%">
									Monto
								</th>
							</tr>
							<%
								if (session.getAttribute("blocks") != null) {
									tokens = new StringTokenizer(session.getAttribute("blocks").toString(), "-.\\n");
									session.setAttribute("blocks", null);
								} else {
									tokens = new StringTokenizer(session.getAttribute("materials").toString(), "-.\\n");
								}
								String qua = "";
								String art = "";
								String uni = "";
								int mou = 0;
								while (tokens.hasMoreTokens()) {
									qua = tokens.nextToken();
									art = tokens.nextToken();
									if (art.equals("Block 25 x 25 cm")) {
										uni = "block";
										mou = 500;
									}
									if (art.equals("Block 40 x 20 cm")) {
										uni = "block";
										mou = 600;
									}
									if (art.equals("Ladrillo")) {
										uni = "ladrillo";
										mou = 400;
									}
									if (art.equals("TALON Pulidora eléctica")) {
										uni = "herramienta";
										mou = 39900;
									}
									if (art.equals("TALON Sierra patín")) {
										uni = "herramienta";
										mou = 31000;
									}
									if (art.equals("TALON Pistola")) {
										uni = "herramienta";
										mou = 39900;
									}
									if (art.equals("TECHWAY Taladro")) {
										uni = "herramienta";
										mou = 18700;
									}
									if (art.equals("DRILL DOCTOR Afiladora de brocas")) {
										uni = "herramienta";
										mou = 39800;
									}
									if (art.equals("DREMEL MotoTool")) {
										uni = "herramienta";
										mou = 41999;
									}
									if (art.equals("Esmeriladora angular")) {
										uni = "herramienta";
										mou = 31900;
									}
									if (art.equals("Taladro eléctrico")) {
										uni = "herramienta";
										mou = 23900;
									}
									if (art.equals("Lijadora orbital")) {
										uni = "herramienta";
										mou = 31900;
									}
									if (art.equals("Esmeriladora angular")) {
										uni = "herramienta";
										mou = 31900;
									}
									if (art.equals("Esmeriladora angular")) {
										uni = "herramienta";
										mou = 39000;
									}
									%>
										<tr>
											<td align="right">
												<%=art%>
											</td>
											<td align="right">
												<%=uni%> &nbsp;
											</td>
											<td align="right">
												<%=qua%> &nbsp;
											</td>
											<td align="right">
												$<%=mou%>.00 &nbsp;
											</td>
										</tr>
									<%
								}
							%>
							<tr>
								<td colspan="2">
								</td>
								<td align="right">
									Subtotal [ivi]: &nbsp;
								</td>
								<td align="right">
									<input class="hidden" name="tSubTotal" type="text" readonly="true" size="14" style="text-align:right"> &nbsp;
								</td>
							</tr>
							<tr>
								<td colspan="2">
								</td>
								<td align="right">
									Descuento: &nbsp;
								</td>
								<td align="right">
									<input class="hidden" name="tDiscount" type="text" readonly="true" size="14" style="text-align:right"> &nbsp;
								</td>
							</tr>
							<tr>
								<td colspan="2">
								</td>
								<td align="right">
									Total: &nbsp;
								</td>
								<td align="right">
									<input class="hidden" name="tTotal" type="text" readonly="true" size="14" style="text-align:right"> &nbsp;
								</td>
							</tr>
						</table>
					</td>
				</tr>
				<tr>
					<td colspan="2" align="left" height="30" bgColor="#EFF1F4" borderColor="#7F8EA5">
						&nbsp; Días de pago: 1 Mes
					</td>
				</tr>
			</table>
			<br>
			<input class="2D" name="bOK" type="button" value="Aceptar" onClick="window.open('Main.htm', '_self');">
		</center>
	</body>
</html>
