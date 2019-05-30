<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html  class="no-js">
<head>
	<meta charset="UTF-8" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>评价表</title>
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/normalize.css" />
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/demo.css" />
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/component.css" />
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/cs-select.css" />
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/cs-skin-boxes.css" />
	<script src="${pageContext.request.contextPath}/js/modernizr.custom.js"></script>
</head>
<body>
<div class="container">

	<div class="fs-form-wrap" id="fs-form-wrap">
		<div class="fs-title">
			<h1>请问您住的满意吗？</h1>
		</div>
		<form id="myform" class="fs-form fs-form-full" autocomplete="off" action="CommentAction_add.action" method="post">
			<ol class="fs-fields">
				<li data-input-trigger>
					<label class="fs-field-label fs-anim-upper" >您在这里的睡眠质量好吗？</label>
					<div class="fs-radio-group fs-radio-custom clearfix fs-anim-lower">
						<span><s:textfield id="q1b"  type="radio" value="非常好"/><label for="q1b" class="radio-conversion">非常好</label></span>
						<span><s:textfield  id="q1c"  type="radio" value="很好"/><label for="q1c" class="radio-social">很好</label></span>
						<span><s:textfield  id="q1a"  type="radio" /><label for="q1a" class="radio-mobile">一般</label></span>
						<span><s:textfield  id="q1d" type="radio" /><label for="q1d" class="radio-mobile">不是很好</label></span>
					</div>
				</li>
				<li>
					<label class="fs-field-label fs-anim-upper" >您喜欢您的房间吗？</label>
					<div class="fs-radio-group fs-radio-custom clearfix fs-anim-lower">
						<span><input id="q2b"  type="radio" value="4"/><label for="q1b" class="radio-conversion">非常喜欢</label></span>
						<span><input id="q2c"  type="radio" value="3"/><label for="q1c" class="radio-social">还可以</label></span>
						<span><input id="q2a"  type="radio" value="2"/><label for="q1a" class="radio-mobile">一般吧</label></span>
						<span><input id="q2d"  type="radio" value="1"/><label for="q1d" class="radio-mobile">不是我喜欢的style</label></span>
					</div>
				</li>
				<li data-input-trigger>
					<label class="fs-field-label fs-anim-upper"  data-info="This will help us know what kind of service you need">您选择住处会优先考虑什么?</label>
					<div class="fs-radio-group fs-radio-custom clearfix fs-anim-lower">
						<span><input id="q3b"  type="radio"/><label for="q3b" class="radio-conversion">房间干净整洁就好了</label></span>
						<span><input id="q3c"  type="radio" /><label for="q3c" class="radio-social">一定要高端豪华</label></span>
						<span><input id="q3a"  type="radio" /><label for="q3a" class="radio-mobile">最好价格低廉</label></span>
						<span><input id="q3d"  type="radio" /><label for="q3d" class="radio-mobile">交通一定要便利</label></span>
					</div>
				</li>
				<li data-input-trigger>
					<label class="fs-field-label fs-anim-upper" data-info="We'll make sure to use it all over">请为我们打个分，好吗？.</label>
					<div class="fs-radio-group fs-radio-custom clearfix fs-anim-lower">
						<span><input id="q6b" type="radio" /><label for="q6b" class="radio-conversion"><img src="icons/emoticon_surprised.png">10</label></span>
						<span><input id="q6c"  type="radio" /><label for="q6c" class="radio-social"><img src="icons/emoticon_happy.png">8</label></span>
						<span><input id="q6a"  type="radio" /><label for="q6a" class="radio-mobile"><img src="icons/emoticon_smile.png">6</label></span>
						<span><input id="q6d"  type="radio" /><label for="q6d" class="radio-mobile"><img src="icons/emoticon_unhappy.png">4</label></span>
					</div>
				</li>
				<li>
					<label class="fs-field-label fs-anim-upper" for="q4">请您用文字表达一下你对我们评价：</label>
					<textarea class="fs-anim-lower" id="q4" name="content" placeholder="Describe here"></textarea>
				</li>
				<li>
					<label class="fs-field-label fs-anim-upper" for="q4">您觉得我们哪里还需要改进呢？</label>
					<textarea class="fs-anim-lower"  placeholder="Describe here"></textarea>
				</li>
				<li>
					<label class="fs-field-label fs-anim-upper" >下次您还愿意选择我们吗?</label>
					<div class="fs-radio-group fs-radio-custom clearfix fs-anim-lower">

						<span><input id="q5a"  type="radio" value="4"/><label for="q1a" class="radio-mobile">愿意啊</label></span>
						<span><input id="q5b"  type="radio" value="3"/><label for="q1b" class="radio-mobile">不愿意</label></span>
					</div>
				</li>
			</ol><!-- /fs-fields -->
			<button class="fs-submit" type="submit">提交问卷</button>
		</form><!-- /fs-form -->
	</div><!-- /fs-form-wrap -->

</div><!-- /container -->
<script src="js/classie.js"></script>
<script src="js/selectFx.js"></script>
<script src="js/fullscreenForm.js"></script>
<script>
	(function() {
		var formWrap = document.getElementById( 'fs-form-wrap' );

		[].slice.call( document.querySelectorAll( 'select.cs-select' ) ).forEach( function(el) {
			new SelectFx( el, {
				stickyPlaceholder: false,
				onChange: function(val){
					document.querySelector('span.cs-placeholder').style.backgroundColor = val;
				}
			});
		} );

		new FForm( formWrap, {
			onReview : function() {
				classie.add( document.body, 'overview' ); // for demo purposes only
			}
		} );
	})();
</script>
</body>
</html>