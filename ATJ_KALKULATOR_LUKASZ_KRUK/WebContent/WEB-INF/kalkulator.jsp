<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Łukasz Kruk - Kalkulator JSP</title>
<link rel="stylesheet" href="css/kalkulator2.css" type="text/css" />
</head>
<body>
	<!-- Deklaracja -->
	<%!String disabled;
	String display;%>
	<!-- Inicjalizacja -->
	<%
		disabled = (String) request.getAttribute("disabled");
		if (request.getAttribute("display") != null) {
			display = (String) request.getAttribute("display");
		} else
			display = "0";
	%>
	<!--<div align="center">ATJ - Łukasz Kruk<br></div>  -->
	<br>
	<div align="center">
	<table id="panelborder"><tr><td>
		<form action="Kalkulator" method="post">
			<table id="exttable">
				<tbody>
					<tr>
						<td id="extborder">
							<table>
								<tbody>
									<tr id="title">
										<td colspan="4">JSP Kalkulator</td>
										<td>- + X</td>
									</tr>
									<tr>
										<td colspan="5" class="separator"></td>
									</tr>
									<tr>
										<th id="display" colspan="4"><%=display%></th>
										<th><button class="button button3" type="submit"
												name="button" value="19">C</button></th>
									</tr>

									<tr>
										<td><button class="button button3" type="submit"
												name="button" value="7" <%=disabled%>>7</button></td>
										<td><button class="button button3" type="submit"
												name="button" value="8" <%=disabled%>>8</button></td>
										<td><button class="button button3" type="submit"
												name="button" value="9" <%=disabled%>>9</button></td>
										<td><button class="button button3" type="submit"
												name="button" value="10" <%=disabled%>>/</button></td>
										<td><button class="button button3" type="submit"
												name="button" value="11" <%=disabled%>>sqrt</button></td>
									</tr>
									<tr>
										<td><button class="button button3" type="submit"
												name="button" value="4" <%=disabled%>>4</button></td>
										<td><button class="button button3" type="submit"
												name="button" value="5" <%=disabled%>>5</button></td>
										<td><button class="button button3" type="submit"
												name="button" value="6" <%=disabled%>>6</button></td>
										<td><button class="button button3" type="submit"
												name="button" value="12" <%=disabled%>>*</button></td>
										<td><button class="button button3" type="submit"
												name="button" value="13" <%=disabled%>>%</button></td>

									</tr>
									<tr>
										<td><button class="button button3" type="submit"
												name="button" value="1" <%=disabled%>>1</button></td>
										<td><button class="button button3" type="submit"
												name="button" value="2" <%=disabled%>>2</button></td>
										<td><button class="button button3" type="submit"
												name="button" value="3" <%=disabled%>>3</button></td>
										<td><button class="button button3" type="submit"
												name="button" value="14" <%=disabled%>>-</button></td>
										<td rowspan="2" class="fix"><button
												class="button button3" type="submit" name="button"
												value="15" <%=disabled%>>=</button></td>
									</tr>
									<tr>
										<td><button class="button button3" type="submit"
												name="button" value="0" <%=disabled%>>0</button></td>
										<td><button class="button button3" type="submit"
												name="button" value="16" <%=disabled%>>.</button></td>
										<td><button class="button button3" type="submit"
												name="button" value="17" <%=disabled%>>+/-</button></td>
										<td><button class="button button3" type="submit"
												name="button" value="18" <%=disabled%>>+</button></td>

									</tr>
									<tr>
										<td colspan="5" class="separator"></td>
									</tr>
								</tbody>
								<tfoot>
									<tr>
										<td colspan="5">ATJ - Lukasz Kruk</td>
									</tr>
								</tfoot>
							</table>
						</td>
					</tr>
				</tbody>
			</table>
		</form></td></tr>
		<tr><td>
		<div align="left">
			<a href="Kalkulator?calcView=bs">widok Bootstrap</a>
		</div></td></tr>
		
		</table>
	</div>
</body>
</html>