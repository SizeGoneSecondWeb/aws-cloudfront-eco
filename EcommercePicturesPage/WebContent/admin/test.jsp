<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<td>Category:</td>
	<td>
		<select name="category">
			<c:forEach items="${listCategories}" var="cat">
				<option value="${cat.categoryId}">${cat.name}
				</option>
			</c:forEach>
		</select>
	</td>
</body>
</html>