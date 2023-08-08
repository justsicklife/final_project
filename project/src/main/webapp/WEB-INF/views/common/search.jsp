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

<!-- 부트스트랩 -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<!-- font awesome -->
<script src="https://kit.fontawesome.com/0cf27f7ac1.js"
	crossorigin="anonymous"></script>
</head>

<body>

	<jsp:include page="/WEB-INF/views/common/header.jsp"></jsp:include>

	<div class="container row">

		<aside>
			<ul>
				<li>
					<div>영화</div>
					<div>13</div>
				</li>
				<li>
					<div>인물</div>
					<div>0</div>
				</li>
			</ul>
		</aside>

		<main class="my-3">
			<c:forEach var="item" items="${movieList }">
				<div class="d-flex align-items-center my-3  border-bottom pb-3">
					<div>
						<div>
							<img style="width: 6rem;"
								src="/resources/uploads/${item.movie_upload_origin_name }" />
						</div>
					</div>
					<div
						class="d-flex flex-column justify-content-between ms-3 flex-grow-1">
						<div>${item.movie_title}</div>
						<div>

							<span>개봉일 : </span> ${item.movie_open_date}
						</div>
						<div>
							<span>감독 : </span> ${item.movie_director }
						</div>
						<div>
							<span>줄거리 : </span> ${item.movie_summary }
						</div>
					</div>
				</div>
			</c:forEach>
		</main>
	</div>

	<jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>

	<!-- /푸터 -->
	<!-- script -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
		crossorigin="anonymous"></script>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</body>
</html>