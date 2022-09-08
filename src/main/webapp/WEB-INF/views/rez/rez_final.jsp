<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- C태그 쓰기 위해 넣은 taglib므로 반드시 확인 --> 
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>예약 최종 확인 팝업</title>

<script>

</script>
</head>
<body>
	<h3>차량번호</h3>
		<td>${cno.car_no }</td>			
	<h3>차종</h3>
		<td>${cno.car_type }</td>
	<h3>배기량</h3>
		<td>${cno.car_fuel }</td>		
	<h3>시간당 요금</h3>
		<td>${cno.car_price }</td>
	<h3>총금액</h3>
		<td>${cno.final_cost }</td>	
		
	
	<h3>예약 번<!-- 예약 종료일은 예약 시작일을 앞설 수 없다 --><!-- 예약 종료일은 예약 시작일을 앞설 수 없다 --><!-- 예약 종료일은 예약 시작일을 앞설 수 없다 --><!-- 예약 종료일은 예약 시작일을 앞설 수 없다 -->호</h3> <td>${rid.rez_no }</td>
</body>
</html>