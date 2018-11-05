<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
	integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
	crossorigin="anonymous">

<!-- Optional theme -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css"
	integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp"
	crossorigin="anonymous">

<!-- Latest compiled and minified JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"
	integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa"
	crossorigin="anonymous"></script>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h1>Guess A Number ${number.number}</h1>
	<h2>You have ${number.number_of_tries} left</h2>

	<form method="post">
		<div class="form-group">
			<label for="number">Insert Number</label> <input type="number"
				class="form-control" name="inputNumber" id="GuessNumber"
				placeholder="Enter The Number">
		</div>
		<div class="container">
			<div class="row">
				<div>
					<c:if test="${not number.finished or number.correct}">
						<button type="submit" class="btn btn-primary" name="SubmitNumber">Submit</button>
					</c:if>
					<button type="submit" class="btn btn-success" name="RestartAll">Restart</button>
				</div>
			</div>
		</div>

	</form>

	<c:if test="${number.number_of_tries < 7}">
		<c:if test="${number.correct}">
			<h3 style="color:green">The number is correct</h3>
		</c:if>
		<c:if test="${not number.correct}">
			<c:if test="${number.higher}">
				<h3 style="color:red">Wrong Number choose a smallest number</h3>
			</c:if>
			<c:if test="${not number.higher}">
				<h3 style="color:red">Wrong Number choose an higher number</h3>
			</c:if>
		</c:if>
	</c:if>


</body>
</html>