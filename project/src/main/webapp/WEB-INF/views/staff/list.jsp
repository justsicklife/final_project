<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="ko-kr">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>영화 추가</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="../resources/css/staff_list.css">
<body>

		<jsp:include page="/WEB-INF/views/common/header.jsp"></jsp:include>
	

	<div class="staff_profile_list">
		<c:forEach var="item" items="${staffList }">
			<div  onclick="location.href='/staff/detail/?id=${item.staff_index}'" id="staff_profile_link" class="staff_profile_box">
				<div>
					<img class="staff_profile" src="/resources/uploads/${item.staff_upload_origin_name}"/>
				</div>
				<div class="staff_main">
					<div class="staff_name">
						${item.staff_name }
					</div>
					<div class="staff_role">
						${item.staff_role }
					</div>
				</div>
			</div>
		</c:forEach>	
	</div>
	
		<jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>
	

</body>
</html>