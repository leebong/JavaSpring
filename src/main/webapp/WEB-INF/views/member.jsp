<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page contentType = "text/html;charset=utf-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta charset="utf-8">
	<title>jQuery validation plug-in - main demo</title>
	<link rel="stylesheet" href="https://jqueryvalidation.org/files/demo/css/screen.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/jquery-validation@1.17.0/dist/jquery.validate.min.js"></script>
	<script>
	$.validator.setDefaults({
		submitHandler: function() {
			alert("submitted!");
		}
	});

	$().ready(function() {
		// validate signup form on keyup and submit
		$("#signupForm").validate({
			rules: {
				username: {
					required: true,
					minlength: 2
				},
				userid: {
					required: true,
					minlength: 4
				},
				password: {
					required: true,
					minlength: 8
				},
				confirm_password: {
					required: true,
					minlength: 8,
					equalTo: "#password"
				},
				email: {
					required: true,
					email: true
				},
				topic: {
					required: "#newsletter:checked",
					minlength: 2
				},
				agree: "required"
			},
			messages: {
				username: {
					required: "이름을 입력하세요",
					minlength: "이름은 1자리 이상 입력하세요"
				},
				userid: {
					required: "아이디를 입력하세요",
					minlength: "아이디는 4자리 이상 입력하세요"
				},
				password: {
					required: "암호를 입력하세요",
					minlength: "암호는 8자리 이상 입력하세요"
				},
				confirm_password: {
					required : "암호를 확인해 주세요",
					minlength: "암호는 8자리 이상 입력하세요",
					equalTo: "암호가 같지 않습니다"
				},
				email: "이메일을 입력해 주세요",
				gender: "성별을 선택하세요",
				agree: "회원정보에 동의해 주세요",
				topic: "2개이상 선택 하세요"
			}
		});


		//code to hide topic selection, disable for demo
		var newsletter = $("#newsletter");
		// newsletter topics are optional, hide at first
		var inital = newsletter.is(":checked");
		var topics = $("#newsletter_topics")[inital ? "removeClass" : "addClass"]("gray");
		var topicInputs = topics.find("input").attr("disabled", !inital);
		// show when newsletter is checked
		newsletter.click(function() {
			topics[this.checked ? "removeClass" : "addClass"]("gray");
			topicInputs.attr("disabled", !this.checked);
		});
	});
	</script>
	<style>
	#commentForm {
		width: 500px;
	}
	#commentForm label {
		width: 250px;
	}
	#commentForm label.error, #commentForm input.submit {
		margin-left: 253px;
	}
	#signupForm {
		width: 670px;
	}
	#signupForm label.error {
		margin-left: 10px;
		width: auto;
		display: inline;
	}
	#newsletter_topics label.error {
		display: none;
		margin-left: 103px;
	}
	</style>
</head>
<body>
<h1 id="banner"><a href="https://jqueryvalidation.org/">jQuery Validation Plugin</a> Demo</h1>
<div id="main">
	<form class="cmxform" id="signupForm" method="get" action="">
		<fieldset>
			<legend>Validating a complete form</legend>
			<p>
				<label for="username">이름</label>
				<input id="username" name="username" type="text">
			</p>
			<p>
				<label for="userid">아이디</label>
				<input id="userid" name="userid" type="text">
			</p>
			<p>
				<label for="password">암호</label>
				<input id="password" name="password" type="password">
			</p>
			<p>
				<label for="confirm_password">암호확인</label>
				<input id="confirm_password" name="confirm_password" type="password">
			</p>
			<p>
				<label for="email">Email</label>
				<input id="email" name="email" type="email">
			</p>
			<p>
				<legend>성별</legend>
				<label for="gender_male">
					<input type="radio" id="gender_male" value="m" name="gender" required>Male
				</label>
				<label for="gender_female">
					<input type="radio" id="gender_female" value="f" name="gender">Female
				</label>
				<label for="gender" class="error">성별을 선택하세요</label>
			</p>
			<p>
				<label for="agree">회원정보 정책에 동의 합니다</label>
				<input type="checkbox" class="checkbox" id="agree" name="agree">
			</p>
			<p>
				<label for="newsletter">뉴스레터를 받고 싶습니다r</label>
				<input type="checkbox" class="checkbox" id="newsletter" name="newsletter">
			</p>
			<fieldset id="newsletter_topics">
				<legend>(2개이상 선택) - 메모 : 관심있는 뉴스레터를 선택하세요. </legend>
				<label for="topic_marketflash">
					<input type="checkbox" id="topic_marketflash" value="marketflash" name="topic">상품정보</label>
				<label for="topic_fuzz">
					<input type="checkbox" id="topic_fuzz" value="fuzz" name="topic">관심정보</label>
				<label for="topic_digester">
					<input type="checkbox" id="topic_digester" value="digester" name="topic">최신소식</label>
				<label for="topic" class="error">Please select at least two topics you'd like to receive.</label>
			</fieldset>
			<p>
				<input class="submit" type="submit" value="Submit">
			</p>
		</fieldset>
	</form>
	
</div>

<h1>Google Map</h1>
	
<div id="map" style="width:400px;height:400px;background:yellow"></div>
	
	<script>
	function myMap() {
	var mapOptions = {
	    center: new google.maps.LatLng(36.635039, 127.459607),
	    zoom: 18,
	    mapTypeId: google.maps.MapTypeId.HYBRID
	}
	var map = new google.maps.Map(document.getElementById("map"), mapOptions);
	}
	</script>
	
	<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBLljwEhDkDr9KEhiiLEwCIyWR477pe6mc&callback=myMap"></script>
	<!--
	To use this code on your website, get a free API key from Google.
	Read more at: https://www.w3schools.com/graphics/google_maps_basic.asp
	key = AIzaSyBLljwEhDkDr9KEhiiLEwCIyWR477pe6mc
	-->
</div>




</body>
</html>