<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<link rel="stylesheet" href="../resources/css/bootstrap.min.css" />
<script type="text/javascript">
	function checkForm() {

		if (!document.newMember.phone.value) {
			alert("휴대폰 번호를 입력하세요.");
			return false;
		}
		if (!document.newMember.password.value) {
			alert("비밀번호를 입력하세요.");
			return false;
		}

		if (document.newMember.password.value != document.newMember.password_confirm.value) {
			alert("비밀번호를 동일하게 입력하세요.");
			return false;
		}
	
	}
</script>
<title>회원 가입</title>
</head>
<body>
	<jsp:include page="/menu.jsp" />
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">회원 가입</h1>
		</div>
	</div>

	<div class="container">
		<form name="newMember" class="form-horizontal"
			action="processAddMember.jsp" method="post"
			onsubmit="return checkForm()">
			<div class="form-group  row">
				<label class="col-sm-2 ">아이디</label>
				<div class="col-sm-3">
					<input name="id" type="text" class="form-control" placeholder="id">
				</div>
			</div>

			<div class="form-group  row">
				<label class="col-sm-2">비밀번호</label>
				<div class="col-sm-3">
					<input name="password" type="text" class="form-control"
						placeholder="password">
				</div>
			</div>

			<div class="form-group  row">
				<label class="col-sm-2">비밀번호확인</label>
				<div class="col-sm-3">
					<input name="password_confirm" type="text" class="form-control"
						placeholder="password confirm">
				</div>
			</div>

			<div class="form-group  row">
				<label class="col-sm-2">성명</label>
				<div class="col-sm-3">
					<input name="name" type="text" class="form-control"
						placeholder="name">
				</div>
			</div>

			<div class="form-group row">
				<label class="col-sm-2">생일</label>
				<div class="col-sm-4  ">
					<input type="text" name="birthyy" maxlength="4" placeholder="년(4자)"
						size="6"> <select name="birthmm">
						<option value="">월</option>
						<option value="01">1</option>
						<option value="02">2</option>
						<option value="03">3</option>
						<option value="04">4</option>
						<option value="05">5</option>
						<option value="06">6</option>
						<option value="07">7</option>
						<option value="08">8</option>
						<option value="09">9</option>
						<option value="10">10</option>
						<option value="11">11</option>
						<option value="12">12</option>
					</select> <input type="text" name="birthdd" maxlength="2" placeholder="일"
						size="4">
				</div>
			</div>

			<div class="form-group  row">
				<label class="col-sm-2">성별</label>
				<div class="col-sm-10">
					<select name="gender">
						<option value="">성별</option>
						<option value="남">남</option>
						<option value="여">여</option>
						<option value="">선택안함</option>
					</select>
				</div>
			</div>

			<div class="form-group  row ">
				<label class="col-sm-2">이메일</label>
				<div class="col-sm-10">
					<input type="text" name="mail1" maxlength="50">@ <select
						name="mail2">
						<option>naver.com</option>
						<option>daum.net</option>
						<option>gmail.com</option>
						<option>nate.com</option>
					</select>
				</div>
			</div>

			<div class="form-group  row ">
				<label class="col-sm-2">국가명</label>
				<div class="col-sm-10">
					<select>
						<option>대한민국 +82</option>
						<option>뉴질랜드 +64</option>
						<option>노르웨이 +47</option>
						<option>네팔 +977</option>
					</select>
				</div>
			</div>

			<div class="form-group  row">
				<label class="col-sm-2">휴대폰번호</label>
				<div class="col-sm-3">
					<input name="phone" type="text" class="form-control"
						placeholder="phone">
				</div>
				<div>
					<input type="submit" class="btn btn-primary " value="휴대폰 인증">
				</div>
			</div>


			<div class="form-group  row">
				<label class="col-sm-2 ">인증번호 입력</label>
				<div class="col-sm-5">
					<input name="address" type="text" class="form-control"
						placeholder="인증번호 입력">
					<div class="form-group  row">
						
					</div>
				</div>
			</div>
			<div class="col-sm-offset-2 col-sm-10 ">
							<input type="submit" class="btn btn-primary " value="가입하기">
						</div>


		</form>
	</div>
</body>
</html>