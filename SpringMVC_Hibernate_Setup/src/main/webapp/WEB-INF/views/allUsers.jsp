<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>All Users</title>
<style>
 .btn{
            padding:0px;
            background-color:rgb(243, 243, 243);
        }

*					{ margin: 0; padding: 0; }
body				{ font: 14px Georgia, serif; }

#page-wrap		    { width: 500px; margin: 0 auto; }

h1                  { margin: 25px 0; font: 14px Georgia, Serif; text-transform: uppercase; letter-spacing: 3px; }

#quiz input {
    vertical-align: middle;
}

#quiz ol {
   margin: 0 0 10px 20px;
}

#quiz ol li {
   margin: 0 0 20px 0;
}

#quiz ol li div {
   padding: 4px 0;
}

#quiz h3 {
   font-size: 17px; margin: 0 0 1px 0; color: #666;
}

#results {
    font: 44px Georgia, Serif;
}
.btn btn-light {

    
    border: none;
    
    padding: 15px 32px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
    margin: 4px 2px;
    cursor: pointer;
  }
</style>
</head>
<body>
	<div id="page-wrap">
	<a href="${pageContext.request.contextPath}/addUser">Add Question</a>
	<br>
	<h3>List of all users</h3>
	${message}
	<br>
	<br>
	
	  <ol>
            
                <li>
                <c:forEach var="user" items="${userList}">
                    <h3>${user.ques_no}. ${user.question}<p align="right">Marks: ${user.marks}</p></h3>
                      
                 <p class="ex1" ><p align="right">&nbsp;&nbsp;&nbsp;<a
						href="${pageContext.request.contextPath}/deleteUser/${user.ques_id}">Delete</a></p></p>
                  
                    <div>
                      
                        <label>A) ${user.option1}</label>
                    </div>
                    
                    <div>
                       
                        <label>B) ${user.option2}</label>
                    </div>
                    
                    <div>
                       
                        <label>C) ${user.option3}</label>
                    </div>
                    
                    <div>
                      
                        <label>D) ${user.option4}</label>
                    </div>
                    <br>
               <label>Level: ${user.level_name}  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Answer: ${user.answer}</label>  
                </li>
                </c:forEach>
             
            </ol>
            
</body>
</html>






