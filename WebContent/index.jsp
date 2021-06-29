<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>

<script>
	$(function() {
		$("#toInput").on("click", function() {
			location.href = "inputForm.per";
		})

		$("#toOutput").on("click", function() {
			location.href = "output.per";
		})

		$("#toModify").on("click", function() {
			location.href = "modifyList.per";
		})

		$("#toDelete").on("click", function() {
			location.href = "deleteList.per";
		})

	})
</script>
<style>
* {
	box-sizing: border-box;
}

div {
	border: 1px solid black;
}

.container {
	width: 400px;
	height: 80px;
	margin: auto;
}

.title {
	text-align: center;
	height: 25px;
}

.toInput {
	float: left;
	width: 25%;
	height: 55px;
	text-align: center;
	line-height: 45px;
}

.toOutput {
	float: left;
	width: 25%;
	height: 55px;
	text-align: center;
	line-height: 45px;
}

.toDelete {
	float: left;
	width: 25%;
	height: 55px;
	text-align: center;
	line-height: 45px;
}

.toModify {
	float: left;
	width: 25%;
	height: 55px;
	text-align: center;
	line-height: 45px;
}
</style>
</head>
<body>
	<div class="container">
		<div class="title">Index</div>
		<div class="toInput">
			<button id="toInput">toInput</button>
		</div>
		<div class="toOutput">
			<button id="toOutput">toOutput</button>
		</div>
		<div class="toDelete">
			<button id="toDelete">toDelete</button>
		</div>
		<div class="toModify">
			<button id="toModify">toModify</button>
		</div>
	</div>
</body>
</html>