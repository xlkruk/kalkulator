<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Łukasz Kruk - Kalkulator JSP</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="css/kalkulator_bs.css" type="text/css" />
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
	<br>
	<form action="Kalkulator" method="post">
		<div class="row">
			<div class="col-sm-4"></div>
			<div class="col-sm-4">
				<div class="form-group">
					<input type="text" class="form-control text-right" id="display"
						disabled value="<%=display%>">
				</div>
			</div>
			<div class="col-sm-1" style="padding: 0px">
				<button type="submit" class="btn btn-info btn-lg" name="button"
					value="19">C</button>
			</div>
		</div>
		<div class="row">
			<div class="col-sm-4" style="padding: 0px"></div>
			<div class="col-sm-1">
				<button type="submit" class="btn btn-info btn-lg" name="button"
					value="7" <%=disabled%>>7</button>
			</div>
			<div class="col-sm-1">
				<button type="submit" class="btn btn-info btn-lg" name="button"
					value="8" <%=disabled%>>8</button>
			</div>
			<div class="col-sm-1">
				<button type="submit" class="btn btn-info btn-lg" name="button"
					value="9" <%=disabled%>>9</button>
			</div>
			<div class="col-sm-1">
				<button type="submit" class="btn btn-info btn-lg" name="button"
					value="10" <%=disabled%>>/</button>
			</div>
			<div class="col-sm-1">
				<button type="submit" class="btn btn-info btn-lg" name="button"
					value="11" <%=disabled%>>sqrt</button>
			</div>
		</div>
		<div class="row">
			<div class="col-sm-4" style="padding: 0px"></div>
			<div class="col-sm-1">
				<button type="submit" class="btn btn-info btn-lg" name="button"
					value="4" <%=disabled%>>4</button>
			</div>
			<div class="col-sm-1">
				<button type="submit" class="btn btn-info btn-lg" name="button"
					value="5" <%=disabled%>>5</button>
			</div>
			<div class="col-sm-1">
				<button type="submit" class="btn btn-info btn-lg" name="button"
					value="6" <%=disabled%>>6</button>
			</div>
			<div class="col-sm-1">
				<button type="submit" class="btn btn-info btn-lg" name="button"
					value="12" <%=disabled%>>*</button>
			</div>
			<div class="col-sm-1">
				<button type="submit" class="btn btn-info btn-lg" name="button"
					value="13" <%=disabled%>>%</button>
			</div>
		</div>
		<div class="row">
			<div class="col-sm-4" style="padding: 0px"></div>
			<div class="col-sm-4" style="padding: 0px">
				<div class="row2">
					<div class="col-sm-3">
						<button type="submit" class="btn btn-info btn-lg" name="button"
							value="1" <%=disabled%>>1</button>
					</div>
					<div class="col-sm-3">
						<button type="submit" class="btn btn-info btn-lg" name="button"
							value="2" <%=disabled%>>2</button>
					</div>
					<div class="col-sm-3">
						<button type="submit" class="btn btn-info btn-lg" name="button"
							value="3" <%=disabled%>>3</button>
					</div>
					<div class="col-sm-3">
						<button type="submit" class="btn btn-info btn-lg" name="button"
							value="14" <%=disabled%>>-</button>
					</div>
				</div>
				<div class="row3">
					<div class="col-sm-3">
						<button type="submit" class="btn btn-info btn-lg" name="button"
							value="0" <%=disabled%>>0</button>
					</div>
					<div class="col-sm-3">
						<button type="submit" class="btn btn-info btn-lg" name="button"
							value="16" <%=disabled%>>.</button>
					</div>
					<div class="col-sm-3">
						<button type="submit" class="btn btn-info btn-lg" name="button"
							value="17" <%=disabled%>>+/-</button>
					</div>
					<div class="col-sm-3">
						<button type="submit" class="btn btn-info btn-lg" name="button"
							value="18" <%=disabled%>>+</button>
					</div>
				</div>
			</div>

			<div class="col-sm-1">
				<button type="submit" class="btn btn-info btn-md" name="button"
					value="15" <%=disabled%>>=</button>
			</div>
		</div>

	</form>
		<div class="row">
		<div class="col-sm-4"></div>
		</div>
	</div>
	<div class="row">
		<div class="col-sm-4"></div>
		<div class="col-sm-4">
			<a href="Kalkulator?calcView=def">widok standardowy</a>
		</div>
	</div>


</body>
</html>