<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.binbang.member.model.vo.Member"%>
<%@page import="com.binbang.house.model.vo.Review"%>
<%@page import="com.binbang.member.model.vo.Favorite"%>
<%@page import="com.binbang.house.model.vo.House"%>
<%@page import="java.util.List"%>
<%@ include file="/views/common/commonLink.jsp"%>
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/house/houseSearchAjax.css" />
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/house/searchBox.css" />
<%
	List<House> house = (List<House>)request.getAttribute("house");
	List<Favorite> favorite=(List<Favorite>)request.getAttribute("favorite");
	Member member = (Member) session.getAttribute("m");
	
%>
</head>
<body>
	<div class="wrap">
			<!-- 지도 -->
			<div class="map">지도</div>
			<!-- 선 -->
			<div class="line"></div>
			<!-- 숙소리스트 -->
			<div class="list">
				<%
					for (House h : house) {
				%>
				<div class="house">

					<a href="<%=request.getContextPath()%>/house/houseDetailMove?houseNo=<%=h.getHouseNo()%>"
						class="housePic" style="background-image : url('<%=request.getContextPath()%>/upload/house/<%=h.getHousePicture()[0]%>');"></a>
					<div class="houseContents">

						<div class="contentSection1">
							<p class="houseName"><%=h.getHouseName()%></p>
							<div class="heartCommon heart">
							<%
							if(favorite!=null){
								for(Favorite f : favorite){
									if(f.getHouseNo().equals(h.getHouseNo())){
										//이집이 관심숙소 리스트에 있는 집이면 heart %>							
								  	<script> 
								  	$(".heartCommon").removeClass(".heart"); 
								  	$(".heartCommon").addClass(".fav"); 
								  	</script>
								  	<%}
								}
							}
							%>
							</div>
						</div>

						<div class="houseLine"></div>


						<div class="contentSection2">
							<div class="contentBox">
								<div class="iconLocation"></div>
								<p class="locationName"><%=(h.getHouseLocation()).substring(0,2)%></p> 								
							</div>

							<div class="contentLine"></div>

							<div class="contentBox">
								<div class="iconGrade"></div>
								<p class="gradeName">
								<%=h.getAvgGrade()%>/5
								</p>
							</div>
						</div>
						<div class="houseLine2"></div>
						<div class="contentSection3">
							<div class="contentBox">
								<div class="iconPrice"></div>
								<p class="priceName"><!-- 가격 : 총요금/날짜수-->
								<%
								
								%>
								</p>
							</div>

							<div class="contentLine"></div>

							<div class="contentBox">
								<div class="iconPeople"></div>
								<p class="PeopleName"><%=h.getHousePnum()%>명</p>
							</div>
						</div>

					</div>
				</div>
				<%
					}
				%>
			</div>
	</div>
	
	<script src="<%=request.getContextPath()%>/js/common/header.js"></script>
	<script src="<%=request.getContextPath()%>/js/house/houseSearchMap.js"></script>
	<script src="<%=request.getContextPath()%>/js/common/heart.js"></script>
</body>
</html>