<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="assets/css/login.css" />
<title>Insert title here</title>
</head>
<body class="">
	<!-- header -->
	<div id="header">
		<h1>김어항의 아기안전본부</h1>
	</div>
	<div id="container">
		<!-- content -->
		<p></p>
	</div>
	<form id="Login" name="login" target="top" autocomplete="off" action=""
		method="POST">
		<input type="hidden" name="" id="" value>
		<fieldset class="login_form">
			<legend class="blind">로그인</legend>
			<div class="input_row" id="id_area">
				<span class="input_box">
					<label for="id" id="label_id_area" class="lbl" style="display:none;">아이디</label>
					<input type="text" id="id" name="id" accessKey="L" placeholder="아이디" class="int" maxlength="41" value>
					</span>
					<button type="button" disabled title="delete" id="id_clear" class="wrg">삭제</button>		
			</div>
			<div class="error" id="err_empty_id" style="display:none"aria-live="assertive"></div>
			<div class="pw_area">
			<div class="input_row" id="pw_area">
				<span class="input_box">
					<label for="pw" id="label_pw_area" class="lbl" style="display:none;">비밀번호</label>
					<input type="password" id="pw" name="pw" placeholder="비밀번호" class="int" maxlength="16">
				</span>
			<button type="button" disabled title="delete" id="pw_clear" class="wrg">삭제</button>
			<div claee="ly_v2" id="err_capslock" style="display:none;">
				<div class="ly_box">
					<p>
					<strong> Caps Lock</strong>
					</p>
				</div>
				<span class="sp ly_point"></span>
			</div>
			</div>
			<div class="error" id="err_empty_pw" style="display:none" aria-live="assertive"></div>
		</div>
		<input type= "submit" title="로그인 " alt="로그인" value="로그인" class="btn_global" id="log.login">
		<div class="check_info">
		<div class="login_check">
			<span class="login_check_box">
				<input type="checkbox" id="login_chk" name="nvlong" class value="off">
				<label for="login_chk" id="label_login_chk" class="ico_keep_check">
				::before
				"로그인 상태 유지"
				</label>
			</span>
		</div>
		</div>
		</fieldset>
	</form>
	<div class= "find_info">
		<a target="_blank" id="join" href="">회원가입</a>
	</div>
	<!-- footer -->
	<input type="hidden" id="nclicks_nsc" name="nclicks_nsc" value="nid.login_kr">
	<input type="hidden" id="nid_buk" name="nid_buk" value="exist">
	<input type="hidden" id="ncaptchaSplit" name="ncaptchaSplit" value="none">
	<input type="hidden" id="id_error_msg" name="id_error_msg" value="아이디를 입력해주세요.">
	<input type="hidden" id="pw_error_msg" name="pw_error_msg" value="비밀번호를 입력해주세요.">
	<input type="hidden" id="locale" name="locale" value="ko_KR">
	<input type="hidden" id="adult_sule_v2" name="adult_surl_v2" value>

</body>
</html>