<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="u" tagdir="/WEB-INF/tags" %>

<div class="container mb-3">
<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <a class="navbar-brand" href="${root }/index.jsp">HOMEPAGE</a>
  <button class="navvar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  
  <div class="collapse navbar" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="${pageContext.request.contextPath }/index.jsp"><i class="fas fa-home"></i> Home <span class="sr-only">(current)</span></a>
      </li>
     
      <li class="nav-item">
        <a class="nav-link" href="${pageContext.request.contextPath }/view/listArticle.jsp" class="nav-link"><i class="fas fa-pen-alt"></i>글 쓰기</a>
      </li>
      
    </ul>
    <u:notLogin>
    <ul class="navbar-nav">
    	<li class="nav-item">
    	  <a href="${pageContext.request.contextPath }/view/joinForm.jsp" class="nav-link"><i class="fas fa-sign-in-alt"></i>회원가입</a>
    	  </li>
    	  <li class="nav-item">
    	    <a href="${pageContext.request.contextPath }/view/loginForm.jsp" class="nav-link"><i class="fas fa-boxes"></i>로그인</a>
    	    </li>
    </ul>
    </u:notLogin>
    
    <u:isLogin>
    <ul class="navbar-nav">
      <li class="nav-item">
        <a href="${root }/logout.do" class="nav-link">로그아웃</a>
      </li>
      <li class="nav-item">
        <a href="${root }/changePwd.do" class="nav-link">변경</a>
       </li>
      <li class="nav-item">
        <a href="${root }/removeMember.do" class="nav-link">탈퇴</a>
       </li>
     </ul>
     </u:isLogin>       
  </div>
</nav>
</div>









