<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<script src="https://kit.fontawesome.com/a076d05399.js"></script>
<title>Insert title here</title>
</head>
<body>
	<u:navbar />

	<div class="container mt-5">
		<div class="row">
			<div class="col-3"></div>
			<div class="col-6">
				<h1>회원 가입</h1>
				<form action="${pageContext.request.contextPath }/view/joinWelcome.jsp" method="post">
					<div class="form-group">
						<label for="input1-id">아이디</label> <input type="text" name="id"
							value="${param.id }" class="form-control" id="input1-id">
						<c:if test="${errors.id }">
							<small class="form-text text-muted"> ID를 입력하세요. </small>
						</c:if>
						<c:if test="${errors.duplicatedId }">
							<small class="form-text text-muted"> 이미 사용중인 아이디입니다. </small>
						</c:if>
					</div>
					<div class="form-group">
						<label for="input2-name">이름</label> <input type="text" name="name"
							value="${param.name }" id="input2-name" class="form-control">
						<c:if test="${errors.name }">
							<small class="form-text text-muted"> 이름을 입력하세요. </small>
						</c:if>
					</div>


					<div class="form-group">
						<label for="input3-password">암호</label> <input type="password"
							name="password" class="form-control" id="input3-password">
						<c:if test="${errors.confirmPassword }">
							<small class="form-text text-muted"> 암호를 입력하세요. </small>
						</c:if>
					</div>
					<div class="form-group">
						<label for="input4-confirmPassword">확인</label> <input
							type="password" name="confirmPassword" class="form-control"
							id="input4-confrimPassword">
						<c:if test="{errors.confirmPassword}">
							<small class="form-text text-muted"> 확인을 입력하세요. </small>
						</c:if>
						<c:if test="${errors.notMatch }">
							<small class="form-text text-muted"> 암호와 확인이 일치하지 않습니다. </small>
						</c:if>
					</div>
					<button type="submit"  class="btn btn-primary">회원 가입</button>
				</form>
			</div>
			<div class="col-3"></div>
		</div>
	</div>
</body>
</html>


