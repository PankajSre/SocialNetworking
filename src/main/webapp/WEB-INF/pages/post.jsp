<%@ include file="header.jsp"%>
<h2>
	<c:out value="${postOfId.title}" />
</h2>
<h3>
	<a href="/blog/user/<c:out value="${postOfId.user_id}"/>">${postOfId.user_username}</a>
</h3>
<p>${postOfId.content}</p>
<p>${postOfId.date}</p>
<div class="comment_sec">
	<c:if test="${not empty allCommentOfPost}">
		<c:forEach items="${allCommentOfPost}" var="singleComment">
			<hr>
			<h3>
				<a
					href="<c:url value="/user"/>/<c:out value="${singleComment.user_id}"/>">${singleComment.user_username}</a>
			</h3>
			<p>${singleComment.content}</p>
			<p>${singleComment.date}</p>
		</c:forEach>
	</c:if>
</div>
<c:if test="${pageContext.request.userPrincipal.name != null}">
	<form:form method="post" modelAttribute="comment" class="form-signin">
		<form:textarea path="content" class="input-block-level" rows="5"
			placeholder="Write Comment Here" />
		<input type="submit" value="Post Comment"
			class="btn btn-large btn-success">
	</form:form>
</c:if>
<c:if test="${pageContext.request.userPrincipal.name == null}">
	<p>
		Please <a href="<c:url value="/login" />">Sign in</a> to post comment
	</p>
</c:if>
