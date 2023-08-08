<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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

<link href=".././resources/css/staff.css"/>

</head>

<body>
		<jsp:include page="/WEB-INF/views/common/header.jsp"></jsp:include>
	
<!-- 
	<form action="/movie/hi.do">
		<input type="text" value="aa" name="hi"/>
		<input type="submit"/>
	</form>
 -->
	<main class="container">
		<div class=" text-center mt-5 ">
			<h1>영화 추가</h1>
		</div>
		<div class="row mb-5">
			<div class="col-lg-7 mx-auto">
				<div class="card mt-2 mx-auto p-4 bg-light">
					<div class="card-body bg-light">

						<div class="container">
							<form id="contact-form" action="/staff/add.do" method="post" enctype="multipart/form-data" role="form">
								<div class="controls">

									<div class="row">
										<div class="col-md-6">
											<div class="form-group">
												<label for="form_name">관계자 이름</label> <input id="form_name"
													type="text" name="staff_name" class="form-control"
													placeholder="Please enter your firstname *"
													required="required" data-error="Firstname is required.">

											</div>
										</div>
										<div class="col-md-6">
											<div class="form-group">
												<label for="form_lastname">관계자 성별</label> <input
													id="form_lastname" type="text" name="staff_sex"
													class="form-control"
													placeholder="Please enter your lastname *"
													required="required" data-error="Lastname is required.">
											</div>
										</div>
										<div class="col-md-6">
											<div class="form-group">
												<label for="form_lastname">관계자 나이</label> <input
													id="form_lastname" type="number" name="staff_age"
													class="form-control"
													placeholder="Please enter your lastname *"
													required="required" data-error="Lastname is required.">
											</div>
										</div>
										
										<div class="col-md-6">
											<div class="form-group">
												<label for="form_lastname">관계자 역할</label> <input
													id="form_lastname" type="text" name="staff_role"
													class="form-control"
													placeholder="Please enter your lastname *"
													required="required" data-error="Lastname is required.">
											</div>
										</div>
									</div>

									<div class="row">
										<div class="col-md-12">
											<div class="form-group">
												<label for="formFileDisabled" class="form-label">
													배우 프로필</label> <input class="form-control" type="file"
													id="formFileDisabled" name="upload" onChange="readURL(this);"/>
											</div>
											<img id="preview" class="poster_preview"/>
										</div>
										<div class="col-md-12">
											<input type="submit"
												class="btn btn-success btn-send w-100 mt-3 pt-2 btn-block">
										</div>

									</div>
								</div>
						     </form>
						  </div>
					</div>
				</div>
				<!-- /.8 -->

			</div>
			<!-- /.row-->

		</div>
	</main>
		<jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>
	
	<!-- /푸터 -->
	<!-- script -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
		crossorigin="anonymous"></script>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
	<script src="../resources/js/poster.js"></script>
</body>

</html>