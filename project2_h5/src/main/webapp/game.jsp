<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html lang="en"><head>
  <meta charset="UTF-8">
  
<link rel="apple-touch-icon" type="image/png" href="https://cpwebassets.codepen.io/assets/favicon/apple-touch-icon-5ae1a0698dcc2402e9712f7d01ed509a57814f994c660df9f7a952f3060705ee.png">
<meta name="apple-mobile-web-app-title" content="CodePen">

<link rel="shortcut icon" type="image/x-icon" href="https://cpwebassets.codepen.io/assets/favicon/favicon-aec34940fbc1a6e787974dcd360f2c6b63348d4b1f4e06c77743096d55480f33.ico">

<link rel="mask-icon" type="image/x-icon" href="https://cpwebassets.codepen.io/assets/favicon/logo-pin-8f3771b1072e3c38bd662872f6b673a722f4b3ca2421637d5596661b4e2132cc.svg" color="#111">


  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <title>CodePen - 돌려 돌려 돌림판</title>

  <link rel="stylesheet" media="screen" href="https://cpwebassets.codepen.io/assets/fullpage/fullpage-1580f96ce81ff0a427cf57dda2748ce646c38efc201ae5942a29958cffa6856d.css">
  
  
<link rel="apple-touch-icon" type="image/png" href="https://cpwebassets.codepen.io/assets/favicon/apple-touch-icon-5ae1a0698dcc2402e9712f7d01ed509a57814f994c660df9f7a952f3060705ee.png">
<meta name="apple-mobile-web-app-title" content="CodePen">

<link rel="shortcut icon" type="image/x-icon" href="https://cpwebassets.codepen.io/assets/favicon/favicon-aec34940fbc1a6e787974dcd360f2c6b63348d4b1f4e06c77743096d55480f33.ico">

<link rel="mask-icon" type="image/x-icon" href="https://cpwebassets.codepen.io/assets/favicon/logo-pin-8f3771b1072e3c38bd662872f6b673a722f4b3ca2421637d5596661b4e2132cc.svg" color="#111">




  <title>CodePen - 돌려 돌려 돌림판</title>
  <script>
  if (document.location.search.match(/type=embed/gi)) {
    window.parent.postMessage("resize", "*");
  }
</script>


  <style>
    html { font-size: 15px; }
    html, body { margin: 0; padding: 0; min-height: 100%; }
    body { height:100%; display: flex; flex-direction: column; 
  </style>
</head>

<body class="">


  <div id="result-iframe-wrap" role="main">

    <iframe id="result" srcdoc="
<!DOCTYPE html>
<html lang=&quot;en&quot; >

<head>

  <meta charset=&quot;UTF-8&quot;>
  
<link rel=&quot;apple-touch-icon&quot; type=&quot;image/png&quot; href=&quot;https://cpwebassets.codepen.io/assets/favicon/apple-touch-icon-5ae1a0698dcc2402e9712f7d01ed509a57814f994c660df9f7a952f3060705ee.png&quot; />
<meta name=&quot;apple-mobile-web-app-title&quot; content=&quot;CodePen&quot;>

<link rel=&quot;shortcut icon&quot; type=&quot;image/x-icon&quot; href=&quot;https://cpwebassets.codepen.io/assets/favicon/favicon-aec34940fbc1a6e787974dcd360f2c6b63348d4b1f4e06c77743096d55480f33.ico&quot; />

<link rel=&quot;mask-icon&quot; type=&quot;image/x-icon&quot; href=&quot;https://cpwebassets.codepen.io/assets/favicon/logo-pin-8f3771b1072e3c38bd662872f6b673a722f4b3ca2421637d5596661b4e2132cc.svg&quot; color=&quot;#111&quot; />


  <title>CodePen - 돌려 돌려 돌림판</title>
  
  <link rel=&quot;stylesheet&quot; href=&quot;https://cdnjs.cloudflare.com/ajax/libs/meyer-reset/2.0/reset.min.css&quot;>

  
  
<style>
@font-face {
  font-family: 'jalnan';
  src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_four@1.2/JalnanOTF00.woff') format('woff');
  font-weight: normal;
  font-style: normal;
}

html, body, button{
	font-family:Arial, &quot;돋움&quot;, Dotum, &quot;굴림&quot;, Gulim, &quot;Apple SD Gothic Neo&quot;, AppleGothic, sans-serif;
}

button{border:0;margin:0;padding:0;}

.title{margin-top:50px;text-align:center;}

.box-roulette{position:relative;margin:50px auto;width:500px;height:500px;border:10px solid #ccc;border-radius:50%;background:#ccc;overflow:hidden;}
.box-roulette .markers{position:absolute;left:50%;top:0;margin-left:-25px;width:0;height:0;border:25px solid #fff;border-left-color:transparent;border-right-color:transparent;border-bottom-color:transparent;z-index:9999;}
.box-roulette .roulette{position:relative;width:100%;height:100%;overflow:hidden;}
.box-roulette .item{position:absolute;top:0;width:0;height:0;border:0 solid transparent;transform-origin:0 100%;}
.box-roulette .label{position:absolute;left:0;top:0;color:#fff;white-space:nowrap;transform-origin:0 0;}
.box-roulette .label .text{display:inline-block;font-size:20px;font-weight:bold;line-height:1;vertical-align:middle;}

#btn-start{display:block;position:absolute;left:50%;top:50%;margin:-50px 0 0 -50px; font-family:jalnan; width:100px;height:100px;color:white; font-size:25px; font-weight:bold;background:#ffc107;border-radius:50px;z-index:9999;cursor:pointer;}
</style>

  <script>
  window.console = window.console || function(t) {};
</script>
 
  <script>
  if (document.location.search.match(/type=embed/gi)) {
    window.parent.postMessage(&quot;resize&quot;, &quot;*&quot;);
  }
</script>
</head>

<body translate=&quot;no&quot; >

  <p class=&quot;title&quot;></p>

<div class=&quot;box-roulette&quot;>
	<div class=&quot;markers&quot;></div>
	<button type=&quot;button&quot; id=&quot;btn-start&quot;>
		<h1>바나다</h1>
	</button>
	<div class=&quot;roulette&quot; id=&quot;roulette&quot;></div>
</div>
    <script src=&quot;https://cpwebassets.codepen.io/assets/common/stopExecutionOnTimeout-1b93190375e9ccc259df3a57c1abc0e64599724ae30d7ea4c6877eb615f89387.js&quot;></script>

  <script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/1.8.3/jquery.min.js'></script>
<script src='https://cdn.sobekrepository.org/includes/jquery-rotate/2.2/jquery-rotate.min.js'></script>
<script src='https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.4.1/jquery.easing.min.js'></script>
      <script id=&quot;rendered-js&quot; >
(function ($) {
  $.fn.extend({

    roulette: function (options) {

      var defaults = {
        angle: 0,
        angleOffset: -45,
        speed: 5000,
        easing: &quot;easeInOutElastic&quot; };


      var opt = $.extend(defaults, options);

      return this.each(function () {
        var o = opt;

        var data = [
        {
          color: '#3f297e',
          text: 'N분의 1' },

        {
          color: '#1d61ac',
          text: '한번더' },

        {
          color: '#169ed8',
          text: '몰빵' },

        {
          color: '#209b6c',
          text: '상관없음' },

        {
          color: '#60b236',
          text: 'N분의 1' },

        {
          color: '#efe61f',
          text: '한번더' },

        {
          color: '#f7a416',
          text: '몰빵' },

        {
          color: '#e6471d',
          text: '상관없음' },

        {
          color: '#dc0936',
          text: 'N분의 1' },

        {
          color: '#e5177b',
          text: '한번더' },

        {
          color: '#be107f',
          text: '몰빵' },

        {
          color: '#881f7e',
          text: '상관없음' }];



        var $wrap = $(this);
        var $btnStart = $wrap.find(&quot;#btn-start&quot;);
        var $roulette = $wrap.find(&quot;.roulette&quot;);
        var wrapW = $wrap.width();
        var angle = o.angle;
        var angleOffset = o.angleOffset;
        var speed = o.speed;
        var esing = o.easing;
        var itemSize = data.length;
        var itemSelector = &quot;item&quot;;
        var labelSelector = &quot;label&quot;;
        var d = 360 / itemSize;
        var borderTopWidth = wrapW;
        var borderRightWidth = tanDeg(d);

        for (i = 1; i <= itemSize; i += 1) {if (window.CP.shouldStopExecution(0)) break;
          var idx = i - 1;
          var rt = i * d + angleOffset;
          var itemHTML = $('<div class=&quot;' + itemSelector + '&quot;>');
          var labelHTML = '';
          labelHTML += '<p class=&quot;' + labelSelector + '&quot;>';
          labelHTML += '	<span class=&quot;text&quot;>' + data[idx].text + '<\/span>';
          labelHTML += '<\/p>';

          $roulette.append(itemHTML);
          $roulette.children(&quot;.&quot; + itemSelector).eq(idx).append(labelHTML);
          $roulette.children(&quot;.&quot; + itemSelector).eq(idx).css({
            &quot;left&quot;: wrapW / 2,
            &quot;top&quot;: -wrapW / 2,
            &quot;border-top-width&quot;: borderTopWidth,
            &quot;border-right-width&quot;: borderRightWidth,
            &quot;border-top-color&quot;: data[idx].color,
            &quot;transform&quot;: &quot;rotate(&quot; + rt + &quot;deg)&quot; });


          var textH = parseInt(2 * Math.PI * wrapW / d * .5);

          $roulette.children(&quot;.&quot; + itemSelector).eq(idx).children(&quot;.&quot; + labelSelector).css({
            &quot;height&quot;: textH + 'px',
            &quot;line-height&quot;: textH + 'px',
            &quot;transform&quot;: 'translateX(' + textH * 1.3 + 'px) translateY(' + wrapW * -.3 + 'px) rotateZ(' + (90 + d * .5) + 'deg)' });


        }window.CP.exitedLoop(0);

        function tanDeg(deg) {
          var rad = deg * Math.PI / 180;
          return wrapW / (1 / Math.tan(rad));
        }


        $btnStart.on(&quot;click&quot;, function () {
          rotation();
        });

        function rotation() {

          var completeA = 360 * r(5, 10) + r(0, 360);

          $roulette.rotate({
            angle: angle,
            animateTo: completeA,
            center: [&quot;50%&quot;, &quot;50%&quot;],
            easing: $.easing.esing,
            callback: function () {
              var currentA = $(this).getRotateAngle();

              console.log(currentA);

            },
            duration: speed });

        }

        function r(min, max) {
          return Math.floor(Math.random() * (max - min + 1)) + min;
        }

      });
    } });

})(jQuery);

$(function () {

  $('.box-roulette').roulette();

});
//# sourceURL=pen.js
    </script>

</body>

</html>
 
" sandbox="allow-downloads allow-forms allow-modals allow-pointer-lock allow-popups allow-presentation  allow-scripts allow-top-navigation-by-user-activation" allow="accelerometer; camera; encrypted-media; display-capture; geolocation; gyroscope; microphone; midi; clipboard-read; clipboard-write; web-share" allowtransparency="true" allowpaymentrequest="true" allowfullscreen="true" class="result-iframe">
      </iframe>

  </div>
  <div style="text-align:center;">
  <button style="margin-bottom:40px; background:#ffc107; color:white; cursor:pointer; border-radius:40px; border:none; width:200px; padding:30px; font-size:20px; font-family:jalnan;" type="button" onclick="location.href='main.jsp';">메인으로
  </button>
  </div>
</body>
</html>