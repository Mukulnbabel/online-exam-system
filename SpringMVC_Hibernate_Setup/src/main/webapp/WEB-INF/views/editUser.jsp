<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Home</title>
</head>
<body>
	<h1>${headerMessage}</h1>
	
        <form:form method="POST" action="editUser" modelAttribute="user">
        
        	<form:hidden path="ques_id" /> 
             <table>
                <tr>
                    <td><form:label path="question">First Name</form:label></td>
                    <td><form:input path="question"/></td>
                </tr>
                <tr>
                    <td><form:label path="option1">LastName</form:label></td>
                    <td><form:input path="option1"/></td>
                </tr>
                <tr>
                    <td><form:label path="option2">UserName</form:label></td>
                    <td><form:input path="option2"/></td>
                </tr>
                <tr>
                    <td><input type="submit" value="Submit"/></td>
                </tr>
            </table>
        </form:form>

</body>
</html>