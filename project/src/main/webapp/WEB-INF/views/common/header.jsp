<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- 헤더 -->
	<header>
		<nav class="navbar navbar-expand-sm navbar-dark bg-dark py-3">
			<div class="container-fluid">
				<a class="navbar-brand" href="javascript:void(0)">Feane</a>
				<button class="navbar-toggler" type="button"
					data-bs-toggle="collapse" data-bs-target="#mynavbar">
					<span class="navbar-toggler-icon"></span>
				</button>
				<div class="collapse navbar-collapse" id="mynavbar">
					<ul class="navbar-nav me-auto">
						<li class="nav-item"><a class="nav-link" href="index.html">Home</a>
						</li>
						<li class="nav-item"><a class="nav-link" href="board.html">게시판</a>
						</li>
					</ul>
					<form class="d-flex" action="/movie/search.do" post="get">
						<div class="input-group w-100 mx-3">
							<input type="text" class="form-control" name="search" placeholder="검색">
							<button type="submit" class="btn">
								<i class="fa-solid fa-magnifying-glass fa-xl"
									style="color: #ffffff;"></i>
							</button>
						</div>
					</form>
					<div class="dropdown">
						<button class="btn dropdown-toggle" type="button"
							id="dropdownMenuButton1" data-bs-toggle="dropdown"
							aria-expanded="false">
							<i class="fa-regular fa-user fa-xl" style="color: #ffffff;"></i>
							<i class="fa-solid fa-sort-down fa-xl" style="color: #ffffff;"></i>
						</button>
						<ul class="dropdown-menu dropdown-menu-end"
							aria-labelledby="dropdownMenuButton1">
							<li><a class="dropdown-item" href="login.html">로그인</a></li>
							<li><a class="dropdown-item" href="mypage.html">마이페이지</a></li>
							<li><a class="dropdown-item" href="like.html">찜 목록</a></li>
							<li><a class="dropdown-item" href="#">장바구니</a></li>
							<li><a class="dropdown-item" href="admin_chat.html">admin_chat</a></li>
							<li><a class="dropdown-item" href="user_chat.html">user_chat</a></li>
						</ul>
					</div>
				</div>
			</div>
		</nav>
	</header>