<%@ include file="header.jsp"%>
<section id="main-slider" class="no-margin">
	<div class="carousel slide">
		<ol class="carousel-indicators">
			<li data-target="#main-slider" data-slide-to="0" class="active"></li>
			<li data-target="#main-slider" data-slide-to="1"></li>
			<li data-target="#main-slider" data-slide-to="2"></li>
		</ol>
		<div class="carousel-inner">

			<div class="item active"
				style="background-image: url(resources/images/niit1.jpg)">
				<div class="container">
					<div class="row slide-margin">
						<div class="col-sm-6">
							<div class="carousel-content">
								<h1 class="animation animated-item-1">NIIT is a Brand name in Education</h1>
								<h2 class="animation animated-item-2">We have our offices in Every city of India and in 40 countries all over the world
								</h2>
								<a class="btn-slide animation animated-item-3" href="#">Read
									More</a>
							</div>
						</div>

						<div class="col-sm-6 hidden-xs animation animated-item-4">
							<div class="slider-img">
								<img src="resources/images/niit1.jpg" class="img-responsive">
							</div>
						</div>

					</div>
				</div>
			</div>
			<!--/.item-->

			<div class="item"
				style="background-image: url(resources/images/niit2.jpg)">
				<div class="container">
					<div class="row slide-margin">
						<div class="col-sm-6">
							<div class="carousel-content">
								<h1 class="animation animated-item-1">NIIT is a Brand name in Education</h1>
								<h2 class="animation animated-item-2">We have our offices in Every city of India and in 40 countries all over the world
								</h2>
								<a class="btn-slide animation animated-item-3" href="#">Read
									More</a>
							</div>
						</div>

						<div class="col-sm-6 hidden-xs animation animated-item-4">
							<div class="slider-img">
								<img src="resources/images/niit2.jpg" class="img-responsive">
							</div>
						</div>

					</div>
				</div>
			</div>
			<!--/.item-->

			<div class="item"
				style="background-image: url(resources/images/niit3.jpg)">
				<div class="container">
					<div class="row slide-margin">
						<div class="col-sm-6">
							<div class="carousel-content">
								<h1 class="animation animated-item-1">NIIT is a Brand name in Education</h1>
								<h2 class="animation animated-item-2">We have our offices in Every city of India and in 40 countries all over the world
								</h2>
								<a class="btn-slide animation animated-item-3" href="#">Read
									More</a>
							</div>
						</div>
						<div class="col-sm-6 hidden-xs animation animated-item-4">
							<div class="slider-img">
								<img src="resources/images/niit3.jpg" class="img-responsive">
							</div>
						</div>
					</div>
				</div>
			</div>
			<!--/.item-->
		</div>
		<!--/.carousel-inner-->
	</div>
	<!--/.carousel-->
	<a class="prev hidden-xs" href="#main-slider" data-slide="prev"> <i
		class="fa fa-chevron-left"></i>
	</a> <a class="next hidden-xs" href="#main-slider" data-slide="next"> <i
		class="fa fa-chevron-right"></i>
	</a>
</section>
<!--/#main-slider-->
<%-- <div>
	<c:if test="${not empty allPostFromUser}">
		<c:forEach items="${allPostFromUser}" var="singlePost">
			<h2>
				<a href="<c:url value="/post/"/>/<c:out value="${singlePost.id}"/>">${singlePost.title}</a>
			</h2>
			<!--h3><a href="<c:out value="${singlePost.user_id}"/>">${singlePost.user_username}</a></h3 -->
			<p>${singlePost.content}</p>
			<p>${singlePost.date}</p>
			<hr>
		</c:forEach>
	</c:if>
</div> --%>

<%@ include file="footer.jsp"%>