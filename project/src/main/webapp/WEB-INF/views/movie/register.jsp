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

<!-- CSS -->
<!-- 하형 스타일 -->
<link href=".././resources/css/register.css" rel="stylesheet" />
<link href=".././resources/css/autoComplate.css" rel="stylesheet">
<!-- 부트스트랩 -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<!-- font awesome -->
<script src="https://kit.fontawesome.com/0cf27f7ac1.js"
	crossorigin="anonymous"></script>
<!-- common (인혁) -->
<link rel="stylesheet" href=".././resources/css/common.css">
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
							<form id="contact-form" action="/movie/add.do" method="post" role="form" enctype="multipart/form-data">
								<div class="controls">

									<div class="row">
										<div class="col-md-6">
											<div class="form-group">
												<label for="form_name">영화 제목</label> <input id="form_name"
													type="text" name="movie_title" class="form-control"
													placeholder="Please enter your firstname *"
													required="required" data-error="Firstname is required.">

											</div>
										</div>
										<div class="col-md-6">
											<div class="form-group">
												<label for="form_lastname">감독</label> <input
													id="form_lastname" type="text" name="movie_director"
													class="form-control"
													placeholder="Please enter your lastname *"
													required="required" data-error="Lastname is required.">
											</div>
										</div>
									</div>

									<div class="row">
										<div class="col-md-12">
											<div class="form-group">
												<label for="form_message">줄거리</label>
												<textarea id="form_message" name="movie_summary"
													class="form-control" placeholder="Write your message here."
													rows="4" required="required"
													data-error="Please, leave us a message."></textarea>
											</div>
										</div>
										<div class="autocomplete_parent my-3" autocomplete="off">
											<div class="autocomplete">
												<input id="myInput" type="text" name="staff"
													placeholder="영화 관계자 검색">
											</div>
										</div>

										<div id="result"></div>
										<div id="input_result"></div>

										<div class="col-md-12 row justify-content-center h-100">
											<div class="genre_button">
												<button type="button" id="genre_button">장르</button>
											</div>
											<div class="genre_box_parent hide" id="genre_box_parent">
												<div class="genre_box">
													<img class="genre_icon"
														src=".././resources/svg/thriller.svg" alt="">
													<div class="genre_name">thriller</div>
												</div>
												<div class="genre_box">
													<img class="genre_icon"
														src=".././resources/svg/adventure.svg" alt="">
													<div class="genre_name">adventure</div>
												</div>
												<div class="genre_box">
													<img class="genre_icon"
														src=".././resources/svg/romance.svg" alt="">
													<div class="genre_name">romance</div>
												</div>
												<div class="genre_box">

													<img class="genre_icon" src=".././resources/svg/sports.svg"
														alt="">
													<div class="genre_name">sports</div>
												</div>
												<div class="genre_box">

													<img class="genre_icon" src=".././resources/svg/action.svg"
														alt="">
													<div class="genre_name">action</div>
												</div>
												<div class="genre_box">

													<img class="genre_icon"
														src=".././resources/svg/mystery.svg" alt="">
													<div class="genre_name">mystery</div>
												</div>
												<div class="genre_box">

													<img class="genre_icon"
														src=".././resources/svg/fantasy.svg" alt="">
													<div class="genre_name">fantasy</div>
												</div>
												<div class="genre_box">

													<img class="genre_icon" src=".././resources/svg/war.svg"
														alt="">
													<div class="genre_name">war</div>
												</div>
												<div class="genre_box">

													<img class="genre_icon" src=".././resources/svg/comedy.svg"
														alt="">
													<div class="genre_name">comedy</div>
												</div>
												<div class="genre_box">

													<img class="genre_icon" src=".././resources/svg/hero.svg"
														alt="">
													<div class="genre_name">hero</div>
												</div>
											</div>
											<div id="genre_input_box"></div>
										</div>

										<div class="col-md-12">
											<div class="form-group">
												<label for="formFileDisabled" class="form-label">영화
													포스터</label> <input class="form-control" type="file"
													id="formFileDisabled" name="upload" onChange="readURL(this);"/>
											</div>
											<img id="preview" class="poster_preview"/>
										</div>
										<div class="col-md-12">
											<input type="date" name="movie_open_date" />
										</div>
										<div class="col-md-12">

											<input type="submit"
												class="btn btn-success btn-send w-100 mt-3 pt-2 btn-block">
											<!-- id="submit" value="Send Message"> -->

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
	<script src=".././resources/js/autoTemplate.js"></script>
	<script src=".././resources/js/genre.js"></script>
	<script src=".././resources/js/poster.js"></script>
</body>
</html>