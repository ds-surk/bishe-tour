<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
I am test.
以后就靠你们自己了^-^
<br>
<table cellpadding="1" cellspacing="1" >
	<thead >
		<tr >
	
            <th>作者</th>
            <th>时间</th>

        </tr>
     </thead>
     <tbody>
		<c:forEach var="news" items="${all}" varStatus="status">
			<tr >
	       		<td><c:out value="${news.author }" default="无" /></td>
	       		<td>${news.createdate }</td>

       		</tr> 
</c:forEach>
	</tbody>
</table>
</body>
</html>