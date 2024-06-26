<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>공지사항</title>
<link rel="stylesheet" href="../css/manager_layout.css">
<link rel="stylesheet" href="../css/common.css">
<link rel="stylesheet" href="../css/manager.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css" />
<script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
<script src="../js/manager.js"></script>
</head>

<body>
	<!-- 전체 틀 영역 -->
	<div class="wrapper">
		<!-- 헤더 영역 -->
		<div class="snb_area">
			<ul class="snb_cont">
				<li class="snb_cate"><a href="javascript:;" title="메인으로 가기">
						<h1 class="logo">
							<img src="../image/logo.png" alt="">
						</h1>
				</a></li>
				<li class="snb_cate"><a href="/admin/member.jsp"> <span>회원 관리</span>
				</a></li>
				<li class="snb_cate"><a href="/admin/community.jsp"> <span class="cpage">게시판
							관리</span>
				</a></li>
				<li class="snb_cate"><a href="/list.faq?userType=admin"> <span>고객센터</span>
				</a></li>
			</ul>
		</div>
		<div class="main_area">
			<div class="header_area">
				<div class="header">
					<div class="wrap">
						<div class="header_con">
							<div class="titlebox">
								<span>공지사항</span>
							</div>
							<div class="header_my">
								<ul>
									<li><a href="javascript:;"> <span class="img_box">
												<img src="../image/icon/mypageW.png" alt="">
										</span>
									</a></li>
									<li><a href="javascript:;"> Logout </a></li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="body_area">
				<div class="body">
					<div class="wrap">
						<!-- 메인 콘텐츠 영역 -->
						<div class="con_wrap">
							<div class="con ntc_con">
								<div class="ntc select_subject">
									<ul>
										<li><a href="/admin/notice.jsp" class="cpage">공지사항</a></li>
										<li><a href="/admin/community.jsp">전체 게시물</a></li>
										<li><a href="/admin/keepboard.jsp">임시보관 게시물</a></li>
										<li><a href="/admin/keepreply.jsp">임시보관 댓글</a></li>
									</ul>
								</div>

								<div style="padding: 10px;"></div>
								<div class="ntc list_table">
									<div class="ntc table_row table_header">
										<div class="table_col">
											<span>번호</span>
										</div>
										<div class="table_col">
											<span>제목</span>
										</div>
										<div class="table_col">
											<span>작성자</span>
										</div>
										<div class="table_col">
											<span>작성일</span>
										</div>
										<div class="table_col">
											<span>조회수</span>
										</div>
									</div>			
								</div>
								<div class="ntc">
									<div class="ntc btn">
										<button class="ntc write_btn"
											onclick="location.href='ntc_write.jsp'">작성하기</button>
									</div>
								</div>
								<div class="pagination"></div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<jsp:include page="../common/footer.jsp" />
	</div>
	<script>
  		get_community_list("notice", 1, "N");
	</script>
</body>

</html>
