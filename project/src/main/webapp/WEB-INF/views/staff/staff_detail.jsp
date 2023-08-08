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
<link rel="stylesheet" type="text/css"
	href="../resources/css/staff_list.css">
<body>

		<jsp:include page="/WEB-INF/views/common/header.jsp"></jsp:include>
	

	<div class="card" style="width: 18rem;">
		<img  src="/resources/uploads/${staff.staff_upload_origin_name}" class="card-img-top" alt="...">
		<div class="card-body">
			<h5 class="card-title">${staff.staff_name }</h5>
			<p class="card-text">Some quick example text to build on the card
				title and make up the bulk of the card's content.</p>
			<a href="#" class="btn btn-primary">Go somewhere</a>
		</div>
	</div>
	
	<!-- 메인 -->
  <main class="container py-5" style="min-height: 600px;">
    <div class="row mb-3 d-flex justify-content-center text-center" style="width: 560 px; height: 315px;">
			<div>
				<img src="../mimg/liam2.jpg" alt="" width="auto" height="100%">
			</div>
    </div>
  
    <div class="row mb-2">
      <div class="col-md-3">
        <div class="row g-0 border rounded overflow-hidden flex-md-row mb-4 shadow-sm h-md-250 position-relative">
          <div class="col p-4 d-flex flex-column position-static">
            <strong class="d-inline-block mb-2 text-primary">배우</strong>
            <!-- 배우 이름 -->
            <h3 class="mb-0">리암 니슨</h3>
            <!-- 생년월일 -->
            <div class="mb-1 text-muted">1756.07.11</div>
          </div>
          <div class="col-auto d-none d-lg-block text-right">
            <img width="auto" height="250px" src="mimg/12.jpg" alt="">
          </div>
        </div>
      </div>
      <div class="col-md-9">
        <div class="row g-0 border rounded overflow-hidden flex-md-row mb-4 shadow-sm h-md-250 position-relative">
          <div class="col p-4 d-flex flex-column position-static">
            <strong class="d-inline-block mb-2 text-primary">요약</strong>
            <p>
							1970년 연극 《되살아난 이들》(The Risen People)로 데뷔했다. 배우 활동을 하기 전에는 브래드 피트급으로 이 일 저 일 다 해본 듯하다. 대표적으로 교사나 복서를 하기도 했고, 연극 배우로서도 오랜 경력을 가지고 있기도 하다.
							복서 출신이라는 이미지에 큰 키와 강한 이목구비 때문인지 80년대까지는 주로 '거칠고 성질있는 캐릭터'의 연기를 많이 했다. 1990년 영국 영화인 위대한 챔피언(The Big Man/SKC판 비디오 한국 제목)에서 권투 선수 주인공을 연기하고 《바운티호의 반란》에서 '제일 거칠고 싸움 잘하는 수병' 역을 맡기도 했으며, 《다크맨》[7]에서는 대부분의 장면에서 붕대를 감고 등장하지만 어찌 되었든 다크 히어로 역할도 했다.
							이렇게 80년대에 이런저런 조연급으로 여러 작품에 참여했지만 그다지 큰 명성을 얻지 못했다. 오히려 당대 수퍼스타 줄리아 로버츠의 연인으로 더 알려져 있을 정도였다.[8] 주연으로 본격적으로 발탁된 것은 앞서 이야기한 영화 《다크맨》부터였고 이후 주인공을 맡은 《쉰들러 리스트》에서 독일인 사업가로서의 역할을 완벽하게 수행해 내며 전 세계적으로 대박을 치자 주목받는 배우가 되었고, 당시 흑백영화였음에도 불구하고 현대까지 고전명작으로 자리매김한[9] 이 영화는 리암 니슨의 이름을 알리는 대표적인 계기가 되었다.
							사려 깊고 생각 있는 캐릭터 역할은 대략 90년대 즈음 나이가 들면서부터 맡고 있다. 이즈음부터 주인공이 아닌 조연급 캐릭터로서 주인공을 빛나게 해주는 연기에서 더욱 활약했고, 거의 아버지 역할로 나오는 영화가 많다. 이후 《마이클 콜린스》, 《스타워즈: 보이지 않는 위험》, 《러브 액츄얼리》, 《배트맨 비긴즈》, 《테이큰》 등 다양한 영화에 출연했다. 2010년에는 《디스트릭트9》을 찍은 샬토 코플리와 80년대의 인기 드라마 리메이크인 영화 《A특공대》에서 한니발 역으로 출연했다.
						</p>
          </div>
          <div class="col-auto d-none d-lg-block text-right" style="width: 200px; height: 250px;"></div>
        </div>
      </div>
    </div>
  
    <div class="row g-5">
      <div class="col-md-8">
        <h3 class="mt-4 fst-italic">
          필모그래피
        </h3>
				<section class=" container">
					<!-- 출연 영화 목록 -->
					<div class="like_box">
						<a href="">
							<img width="100%" height="auto" src="../mimg/2.jpg" alt="">
							<p>펄프픽션</p>
						</a>
					</div>
					<div class="like_box">
						<a href="">
							<img width="100%" height="auto" src="../mimg/2.jpg" alt="">
							<p>펄프픽션</p>
						</a>
					</div>
					<div class="like_box">
						<a href="">
							<img width="100%" height="auto" src="../mimg/2.jpg" alt="">
							<p>펄프픽션</p>
						</a>
					</div>
					<div class="like_box">
						<a href="">
							<img width="100%" height="auto" src="../mimg/2.jpg" alt="">
							<p>펄프픽션</p>
						</a>
					</div>
					<div class="like_box">
						<a href="">
							<img width="100%" height="auto" src="../mimg/2.jpg" alt="">
							<p>펄프픽션</p>
						</a>
					</div>
				</section>
      </div>

      <div class="col-md-4">
        <div class="position-sticky" style="top: 2rem;">
          <div class="p-4 mb-3 rounded">
            <h4 class="fst-italic">About</h4>
            <p class="mb-0">Customize this section to tell your visitors a little bit about your publication, writers, content, or something else entirely. Totally up to you.</p>
          </div>
  
          <div class="p-4">
            <h4 class="fst-italic">Archives</h4>
            <ol class="list-unstyled mb-0">
              <li><a href="#">March 2021</a></li>
              <li><a href="#">February 2021</a></li>
              <li><a href="#">January 2021</a></li>
              <li><a href="#">December 2020</a></li>
              <li><a href="#">November 2020</a></li>
              <li><a href="#">October 2020</a></li>
              <li><a href="#">September 2020</a></li>
              <li><a href="#">August 2020</a></li>
              <li><a href="#">July 2020</a></li>
              <li><a href="#">June 2020</a></li>
              <li><a href="#">May 2020</a></li>
              <li><a href="#">April 2020</a></li>
            </ol>
          </div>
  
          <div class="p-4">
            <h4 class="fst-italic">Elsewhere</h4>
            <ol class="list-unstyled">
              <li><a href="#">GitHub</a></li>
              <li><a href="#">Twitter</a></li>
              <li><a href="#">Facebook</a></li>
            </ol>
          </div>
        </div>
      </div>
    </div>
  
  </main>
	
	
	<c:forEach var="movie" items="${movieList }">
		<div class="card" style="width: 18rem;">
			<img  src="/resources/uploads/${movie.movie_upload_origin_name}" class="card-img-top" alt="...">
			<div class="card-body">
				<h5 class="card-title">${movie.movie_title }</h5>
			</div>
		</div>
	</c:forEach>
	<jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>

		
</body>
</html>