<%@page contentType="text/html" pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>

<head>
<link href='http://fonts.googleapis.com/css?family=Bitter' rel='stylesheet' type='text/css'>
<style type='text/css'>
  body
{
    margin: 0;
    padding: 0;
    background: url(http://localhost:7878/HOME_LOAN/WEB-INF/views/home_page.jpg);
    background-size: cover;
    font-family: sans-serif;
    color: white;
}

 .container
{
    position: absolute;
    top: 50%;
    left: 50%;
    transform: translate(-220px, -150px);
    width: 400px;
    border-radius: 5px;
    box-sizing: border-box;
    overflow: hidden;
}

.signIn
{
    position: relative;
    width: 100%;
    height: 50px;
    background: #247ebf;
    color: #fff;
    text-align: center;
    line-height: 50px;
    font-size: 20px;
    cursor: pointer;
    box-shadow: 0 5px 10px rgba(0,0,0,.5);
}
.fold
{
    position: relative;
    width: 100%;
    background: rgba(17,24,34,.8);
    transform-origin: top;
    padding: 30px 20px;
    box-sizing: border-box;
    transition: .5s;
    transform: perspective(2000px) rotateX(90deg);
}
.fold.active
{
    transform: perspective(2000px) rotateX(0deg);
}
.fold form input[type="text"],
.fold form input[type="password"]
{
    width: 100%;
    margin-bottom: 20px;
    height: 40px;
    padding: 10px 20px;
    box-sizing: border-box;
    border-radius: 40px;
    box-shadow: none;
    outline: none;
    color: white;
    background: transparent;
    border: 1px solid #fff;
}
/* ::placeholder
{
    color: #fff;
} */
.fold form input[type="submit"]
{
    display: block;
    padding: 12px 40px;
    border-radius: 40px;
    box-shadow: none;
    border: none;
    outline: none;
    cursor: pointer;
    background: #1d2b38;
    color: #fff;
    box-shadow: 0 5px 10px rgba(0,0,0,.5);
}
.fold form input[type="submit"]:hover
{
    background: #247ebf;
}
.fold form a
{
    color: #fff;
    margin-top: 20px;
    display: block;
    font-size: 14px;
    text-align: right;
    text-decoration: none;
    font-weight: bold;
}

</style>
 
</head>
<body>
    
    <h1>${headerMessage}</h1>
        
    
<div class="container">

	<div class="signIn">ADD QUESTIONS MANUALLY</div>
	<div class="fold">
		
		
    <form:form  method="POST" action="addUser" modelAttribute="user">
		
			<label>Question No<input type="text" name="ques_no" placeholder="Question No"/></label>
            <label>Question<input type="text" name="question" placeholder="Question "/></label>
            <label>Option 1<input type="text" name="option1" placeholder="Option1"/></label>
            <label>Option 2 <input type="text" name="option2" placeholder="Option2" /></label>
            <label>Option 3 <input type="text" name="option3" placeholder="Option3" /></label>
            <label>Option 4 <input type="text" name="option4" placeholder="Option4" /></label>
            <label>Answer<input type="text" name="answer" placeholder="Answer"/></label>
            <label>Marks <input type="text" name="Marks" placeholder="Marks" /></label>
             <label>Level <input type="text" name="level_name" placeholder="Level"  /></label>
            
			<center><input type="submit" name="" value="ADD"></center>
		  </form:form>
	</div>
</div>
</body>

<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.js"></script>
    <script type="text/javascript">
        $(document).ready(function(){
            $('.signIn').click(function(){
                $('.fold').toggleClass('active')
            })
        })
    </script> 
    </html>