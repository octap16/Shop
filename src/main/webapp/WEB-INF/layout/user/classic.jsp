<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Internet shop</title>
<link rel="icon" href="/resources/images/logoico.ico" type="images/x-icon">
<script type="text/javascript" src="/resources/js/jquery-3.1.1.min.js"></script>
<link rel="stylesheet" href="/resources/css/bootstrap.min.css">
<link rel="stylesheet" href="/resources/css/style.css">
 <script  src="/resources/js/bootstrap.min.js"></script>
<script type="text/javascript" src="/resources/js/chosen.jquery.min.js"></script>
<link rel="stylesheet" href="/resources/font-awesome-4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="/resources/css/chosen.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script type="text/javascript">

	$(function() {
		$("select").chosen();
	});
</script>
<style type="text/css">
body{
style="padding:0 14%; "
}
</style>
<title><tiles:getAsString name="title" /></title>
</head>
<body>
    <tiles:insertAttribute name="header" />
	<div class="container-fluid" style="padding:0px;">
		<tiles:insertAttribute name="body" />
	</div>
		<tiles:insertAttribute name="footer" />
</body>
</html>