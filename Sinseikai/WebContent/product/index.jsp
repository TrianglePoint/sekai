<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!doctype html>
<html class="no-js">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel="stylesheet" href="./dist/jquery.flipster.min.css">

    <script src="./dist/jquery.flipster.min.js"></script>
</head>
<body>



<article id="demo-default" class="demo">
    <div id="flat">
        <ul>
            <li data-flip-title="Red">
               <a href="productinto.pr?productNumber=1&email=<%=session.getAttribute("id") %>">
               <img src="./img/test1.png" width="100%" height="100%"></a><br>
                	<h2>나이키</h2>	나이키 반팔티<br><br>           	
                	36,000원                        
            </li>
            <li data-flip-title="Razzmatazz" data-flip-category="Purples">
                <img src="./img/test2.jpg" width="100%" height="100%">
              	  	<h2>꾸즈</h2>	나염 라운드 블라우스<br><br>           	
                	20,000 원                         
             </li>
            <li data-flip-title="Deep Lilac" data-flip-category="Purples">
                <img src="./img/test3.jpg" width="100%" height="100%">
                	<h2>쉬즈미스</h2>7부 V넥 폴리셔츠<br><br>           	
                	20,000 원         
            </li>
            <li data-flip-title="Daisy Bush" data-flip-category="Purples">
                <img src="./img/test4.jpg" width="100%" height="100%">
                	<h2>엠씨</h2>엠씨 원피스<br><br>           	
                	30,000 원         
            </li>
            <li data-flip-title="Cerulean Blue" data-flip-category="Blues">
                <img src="./img/text5.gif">
            </li>
            <li data-flip-title="Dodger Blue" data-flip-category="Blues">
                <img src="./img/text6.gif">
            </li>
            <li data-flip-title="Cyan" data-flip-category="Blues">
                <img src="./img/text7.jpg">
            </li>
            <li data-flip-title="Robin's Egg" data-flip-category="Blues">
                <img src="./img/text8.gif">
            </li>
            <li data-flip-title="Deep Sea" data-flip-category="Greens">
                <img src="./img/text9.gif">
            </li>
            <li data-flip-title="Apple" data-flip-category="Greens">
                <img src="./img/text10.gif">
            </li>
        </ul>
        
    </div>

<script>
    var flat = $("#flat").flipster({
        style: 'flat',
        spacing: -0.25
    });
    $("#flat").css("width","100%");
    
</script>



</article>


</body>
</html>
