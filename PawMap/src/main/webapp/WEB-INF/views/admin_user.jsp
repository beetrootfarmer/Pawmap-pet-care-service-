<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ include file="layout/admin_header.jsp" %>
<!--관리자의 회원정보 관리 페이지 시작...-->
        <div class="tbl-header"> 
          <div class="row row-adminindex">
            <div>
              <h1 class="adminpagetoph1" style=" margin-top: 0px;">회원정보 관리</h1>
            </div>
          </div>
        </div>
        <!-- search 버튼 시작 -->
        <div class="row tbl-header">
          <div class="main-search-input-wrap" >
            <!--
<<<<<<< HEAD
              <div class="main-search-input fl-wrap">
                  <div class="main-search-input-item"> 
                      <input type="text" value="" placeholder="검색창입니다."> 
                  </div> 
                <button class="main-search-button">Search</button>
=======-->
              <div class="main-search-input fl-wrap" style="margin-top: 30px;">
                  <c:choose >
                  	<c:when test="${userList[0].userType eq 'N' }">
	                  <div class="main-search-input-item"> 
	                      <input type="text" id="searchInput" onkeyup="admin_user_search();" name="search_value" placeholder="Search Products..."> 
	                  </div> 
	                <button class="main-search-button" onclick="admin_user_search();">Search</button>
                  	</c:when>
                  	<c:otherwise>
	                  <div class="main-search-input-item"> 
	                      <input type="text" id="searchInput" onkeyup="admin_hospital_search();" name="search_value" placeholder="Search Products..."> 
	                  </div> 
	                <button class="main-search-button" onclick="admin_hospital_search();">Search</button>
                  	</c:otherwise>
                  </c:choose>
<!-- >>>>>>> 1e3b7fbb47101558bb8a796c9d181dcca6b9ccbb-->
              </div>
          </div>
        </div>
        <!--search button finished...-->
        <!--회원정보 관리 리스트 시작-->
    <div id="adminusermanage" class="adminpagetablediv">
        <table class="table-striped table-hover adminpagetable">
          <colgroup>
            <col>
            <col>
            <col>
            <col>
            <col>
            <col>
            <col>
            <col>
            <col>
            <col >
          </colgroup>
          <thead class="admintablehead"> 
            <tr>
                <th class="admin-userseq">#</th>
                <th class="admin-userid">아이디</th>
                <th class="admin-useremail">이메일</th>
                <th class="admin-username">이름/상호명</th>
                <th class="admin-usertelnum">연락처</th>
                <th class="admin-address">주소</th>
                <th class="admin-usernickname">닉네임</th>
                <th class="admin-role">회원타입</th>
                <th class="admin-userregdate">등록일</th>
                <th class="admin-useractionbutton"></th>
            </tr>
          </thead>
          <tbody>
            <c:forEach var="user" items="${userList }">
              <tr>
                <td class="admin-userseq">${user.userSeq }</td>
                <td class="admin-userid">${user.userId }</td>
                <td class="admin-useremail">${user.userEmail }</td>
                <td class="admin-username">${user.userName }</td>
                <td class="admin-usertelnum">${user.userTelNum }</td>
                <td class="admin-address">${user.address }</td>
                <td class="admin-usernickname">${user.userNickname }</td>
                <td class="admin-role">${user.role }</td>
                <td class="admin-userregdate"><fmt:formatDate value="${user.userRegDate }" pattern="yyyy-MM-dd KK:mm:ss"/></td>
                <td class="admin-useractionbutton"><button class="adminpagebuttonformanage" type="button" onclick="location.href='/pawmap/getUser?userId=${user.userId}'">수정</button></td>
              </tr>
            </c:forEach>
          </tbody>            
        </table>
    </div>
<!--
<<<<<<< HEAD
    page navigation-->
<!--    <div class="row mt-2">
      <div class="col-12" style="margin-top: 40px;">
        <nav aria-label="Page navigation example">
          <ul class="pagination justify-content-center">
              <li class="page-item"><a class="page-link" href="#">Previous</a></li>
              <li class="page-item"><a class="page-link" href="#">1</a></li>
              <li class="page-item"><a class="page-link" href="#">2</a></li>
              <li class="page-item"><a class="page-link" href="#">3</a></li>
              <li class="page-item"><a class="page-link" href="#">4</a></li>
              <li class="page-item"><a class="page-link" href="#">5</a></li>
              <li class="page-item"><a class="page-link" href="#">Next</a></li>
          </ul>
        </nav>
      </div>
    </div>

    <%@ include file="layout/admin_footer.jsp" %>
=======
  -->    
     <!-- 페이지네이션 부분 시작-->
	    <div class="page-div hospital_pagination_custom">
		    <ul class="pagination justify-content-center">
		        <c:if test="${pageMaker.prev }">
		            <li class="page-item pagination_button">
		                <a class="page-link" href="${pageMaker.startPage - 1 }" >Prev</a>
		            </li>
		        </c:if>
		        <c:forEach var="num" begin="${pageMaker.startPage }" end="${pageMaker.endPage}">
              <li class="page-item pagination_button ${num == pageMaker.cri.pageNum ? "active" : "" }""> 
                  <a id="nowPage" class="page-link" href="${num }">${num }</a>
              </li>
		        </c:forEach>
		        <c:if test="${pageMaker.next }">
              <li class="page-item pagination_button">
                  <a class="page-link" href="${pageMaker.endPage+1}">Next</a>
              </li>
		        </c:if>
		    </ul>
		  </div>
		<!--  페이지네이션 끝 -->
		<!--  페이지 처리 폼 -->
		<c:choose>
            <c:when test="${userList[0].userType eq 'N' }">
				<form id="admin_user_paging_form" action="/pawmap/getUserList" method="get">
					<input type="hidden" name="pageNum" value="${pageMaker.cri.pageNum}">
					<input type="hidden" name="amount" value="${pageMaker.cri.amount}">
				</form>
			</c:when>
			<c:otherwise>
				<form id="admin_user_paging_form" action="/pawmap/getHospitalList" method="get">
					<input type="hidden" name="pageNum" value="${pageMaker.cri.pageNum}">
					<input type="hidden" name="amount" value="${pageMaker.cri.amount}">
					<input type="hidden" name="value" value="${value }">
				</form>
			</c:otherwise>
		</c:choose>
		<!--  페이지 처리 폼 끝-->
  
<%@ include file="layout/admin_footer.jsp" %>