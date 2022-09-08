<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>유저 페이지</title>

<script type="text/javascript">
	console.log("<sec:authentication property='principal.username'/>")
</script>

</head>

<body>

	<h1>유저 페이지 입니다.</h1>

	<p>
		principal:
		<sec:authentication property="principal" />
	</p>
	<p>
		principal:
		<sec:authentication property="principal.username" />
		님 환영합니다.
	</p>



	<sec:authentication property="principal.username" />


	<p>
		<a href="<c:url value="/" />">홈</a>
	</p>

</body>
</html>
