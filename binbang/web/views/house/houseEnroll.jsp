<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/views/common/commonLink.jsp"%>
    <!-- 스와이퍼 -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.5.0/css/swiper.min.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.5.0/js/swiper.min.js"></script>
    <!-- css -->
    <link rel="stylesheet" href="<%=request.getContextPath() %>/css/house/houseEnroll.css" /> 
    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/common/cal.css" type="text/css" />
    <!-- 주소검색 api js -->
    <script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
    <script src="http://code.jquery.com/ui/1.12.1/jquery-ui.min.js"></script>
  </head>
<body>
    <div class="wrap">
        <%@ include file="/views/common/header.jsp" %>
  
        <section class="section">
            <!-- Swiper -->
           <form action="" class="swiper-container first">
           
             <div class="swiper-wrapper">
               <div class="swiper-slide box">
                  <div class="slide1">
                    <div class="hNameBox">
                      <p>숙소 이름</p>
                      <input type="text" name="hName" id="hName" placeholder="숙소 이름" required>
                    </div>                        
                    <div class="line1"></div>
                    <div class="hTypeBox">
                        <p>숙소 유형</p>
                        <div class="hTypeCon">
                            <input type="radio" name="hType" id="home" required> <label for="home">주택</label>
                            <input type="radio" name="hType" id="apart"> <label for="apart">아파트</label>
                            <input type="radio" name="hType" id="pension"> <label for="pension">펜션</label>
                        </div>
                    </div>
                    <div class="line1"></div>
                    <div class="hAddressBox">
                      <p>숙소 위치</p>
                      <div class="postcodeCon">
                        <input type="text" id="postcode" placeholder="우편번호">
                        <input type="button" onclick="execDaumPostcode()" value="우편번호 찾기"><br>
                      </div>
                      <input type="text" id="roadAddress" placeholder="도로명주소">
                      <span id="guide" style="color:#999;display:none"></span>
                      <input type="text" id="detailAddress" placeholder="상세주소">
                    </div>
                  </div>
               </div>
              
                  
               <div class="swiper-slide box">
                <div class="slide2">                       
                  <div class="pNumBox">
                      <p class="title2">숙소 최대 인원</p>
                      <div class="pNumCon">
                        <input type="number" name="pNum" id="pNum" min="0" max="9" step="1" required> 명
                      </div>
                  </div>
                  <div class="line2"></div>
                  <div class="personalBox">
                      <p class="title2">개인물건 유무</p>
                      <div class="personalCon">
                          <input type="radio" name="personal" id="personalY"> <label for="personalY" required>유</label>
                          <input type="radio" name="personal" id="personalN"> <label for="personalN">무</label>
                      </div>
                  </div>
                  <div class="line2"></div>
                  <div class="facilityBox">
                    <p class="title2">이용 시설</p>
                    <div class="roomNumBox">
                        <p class="pNum">방 갯수</p>
                        <div class="roomNumCon"><input type="number" name="roomNum" id="roomNum" class="inputNum" min="0" max="20" step="1" required> 개</div>
                    </div>
                    <div class="bedNumBox">
                        <p class="pNum">침대 갯수</p>
                        <div class="bedNumCon"><input type="number" name="bedNum" id="bedNum" m class="inputNum" in="0" max="20" step="1" required> 개</div>
                    </div>
                    <div class="bathNumBox">
                        <p class="pNum">욕실 갯수</p>
                        <div class="bathNumCon"><input type="number" name="bathNum" id="bathNum" class="inputNum" min="0" max="20" step="1" required> 개</div>
                    </div>
                  </div>                       
                </div>
              </div>
                  
               <div class="swiper-slide box">
                <div class="slide3">
                  <div class="timeBox">
                    <p>체크인아웃 시간</p>
                    <input type="text" name="checkTime" id="checkTime" placeholder="(체크인 11:00 체크아웃 15:00)형식으로 작성해주세요." required>
                  </div>                        
                  <div class="line3"></div>
                  <div class="attentionBox">
                      <p>주의사항</p>
                      <div class="attentionCon">
                          <textarea name="attention" id="attention" cols="60" rows="13" style="resize:none" required></textarea>
                      </div>
                  </div> 
                </div>
              </div>

               <div class="swiper-slide box">
                <div class="slide4">
                  <div class="photoListBox">
                    <p>숙소 사진 등록(최소 3장/최대 10장)</p>
                    <div class="photo1">
                      <div class="picLine">
                        <p class="picName"></p>
                      </div>
                      <input type="file" name="picture1" id="picture1" class="picture" accept="images/*" required>
                      <label class="uploadPic" for="picture1">+</label>
                      <label class="deletePic" id="deletePic1" for="">-</label>
                    </div>
                    <div class="photo2">
                      <div class="picLine">
                        <p class="picName"></p>
                      </div>
                      <input type="file" name="picture2" id="picture2" class="picture" accept="images/*" required>
                      <label class="uploadPic" for="picture2">+</label>
                      <label class="deletePic" for="">-</label>
                    </div>
                    <div class="photo3">
                      <div class="picLine">
                        <p class="picName"></p>
                      </div>
                      <input type="file" name="picture3" id="picture3" class="picture" accept="images/*" required>
                      <label class="uploadPic" for="picture2">+</label>
                      <label class="deletePic" for="">-</label>
                    </div>
                    <div class="photo4">
                      <div class="picLine">
                        <p class="picName"></p>
                      </div>
                      <input type="file" name="picture4" id="picture4" class="picture" accept="images/*">
                      <label class="uploadPic" for="picture2">+</label>
                      <label class="deletePic" for="">-</label>
                    </div>
                    <div class="photo5">
                      <div class="picLine">
                        <p class="picName"></p>
                      </div>
                      <input type="file" name="picture5" id="picture5" class="picture" accept="images/*">
                      <label class="uploadPic" for="picture2">+</label>
                      <label class="deletePic" for="">-</label>
                    </div>
                    <div class="photo6">
                      <div class="picLine">
                        <p class="picName"></p>
                      </div>
                      <input type="file" name="picture6" id="picture6" class="picture" accept="images/*">
                      <label class="uploadPic" for="picture2">+</label>
                      <label class="deletePic" for="">-</label>
                    </div>
                    <div class="photo7">
                      <div class="picLine">
                        <p class="picName"></p>
                      </div>
                      <input type="file" name="picture7" id="picture7" class="picture" accept="images/*">
                      <label class="uploadPic" for="picture2">+</label>
                      <label class="deletePic" for="">-</label>
                    </div>
                    <div class="photo8">
                      <div class="picLine">
                        <p class="picName"></p>
                      </div>
                      <input type="file" name="picture8" id="picture8" class="picture" accept="images/*">
                      <label class="uploadPic" for="picture2">+</label>
                      <label class="deletePic" for="">-</label>
                    </div>
                    <div class="photo9">
                      <div class="picLine">
                        <p class="picName"></p>
                      </div>
                      <input type="file" name="picture9" id="picture9" class="picture" accept="images/*">
                      <label class="uploadPic" for="picture2">+</label>
                      <label class="deletePic" for="">-</label>
                    </div>
                    <div class="photo10">
                      <div class="picLine">
                        <p class="picName"></p>
                      </div>
                      <input type="file" name="picture10" id="picture10" class="picture" accept="images/*">
                      <label class="uploadPic" for="picture2">+</label>
                      <label class="deletePic" for="">-</label>
                    </div>
                  </div>
                  <div class="line4"></div>
                  <div class="photoPrevBox">                  
                    <img class="prevImg">            
                  </div>
                </div>
              </div>

               <div class="swiper-slide box">
                <div class="slide5">
                  <div class="filterBox">
                    <p>편의 시설 및 서비스</p>
                    <div class="filterContainer">
                      <ul class="filterCon">
                        <li><input type="checkbox" id="bbq" name="filter" value="bbq"><label for="bbq"> 바베큐</label></li>
                        <li><input type="checkbox" id="breakfast" name="filter" value="breakfast"><label for="breakfast"> 조식</label></li>
                        <li><input type="checkbox" id="terrace" name="filter" value="terrace"><label for="terrace"> 테라스</label></li>
                        <li><input type="checkbox" id="shower" name="filter" value="shower"><label for="shower"> 샤워룸</label></li>
                        <li><input type="checkbox" id="park" name="filter" value="park"><label for="park"> 정원</label></li>
                        <li><input type="checkbox" id="swimming" name="filter" value="swimming"><label for="swimming"> 수영장</label></li>
                      </ul>
                      <ul class="filterCon">  
                        <li><input type="checkbox" id="dog" name="filter" value="dog"><label for="dog"> 반려동물</label></li>
                        <li><input type="checkbox" id="smoking" name="filter" value="smoking"><label for="smoking"> 흡연</label></li>
                        <li><input type="checkbox" id="parking" name="filter" value="parking"><label for="parking"> 주차</label></li>
                        <li><input type="checkbox" id="kitchen" name="filter" value="kitchen"><label for="kitchen"> 주방</label></li>
                        <li><input type="checkbox" id="laundryRoom" name="filter" value="laundryRoom"><label for="laundryRoom"> 세탁실</label></li>
                        <li><input type="checkbox" id="wifi" name="filter" value="wifi"><label for="wifi"> 와이파이</label></li>                   
                      </ul>
                    </div>                
                  </div>
                </div>
              </div>


            <div class="swiper-slide box">
              <div class="slide6">
                <div class="explainBox">
                  <p>숙소 설명</p>
                  <div class="explainCon">
                      <textarea name="explain" id="explain" cols="60" rows="10" style="resize:none" placeholder="2줄 이내로 작성해주세요" required></textarea>
                  </div>
                </div> 
                <div class="gemsungBox">
                  <p>감성글</p>
                  <div class="gemsungCon">
                      <textarea name="gemsung" id="gemsung" cols="60" rows="10" style="resize:none" required></textarea>
                  </div>
                </div> 
              </div>
            </div>

            <div class="swiper-slide box">
              <div class="slide7">
                <div class="moneyBox">
                  <p>요금 설정</p>
                  <div class="periodCon">
                    <p>성수기 기간 선택</p>
                    <div id="calendar">
                    <p id="cal">cal</p>
                    </div>
                  </div>
                  <div class="peakDayCon">
                    <p >성수기 평일 요금</p>
                    <input type="text" id="peakDay" name="peakDay" placeholder="성수기 평일" required>
                  </div>
                  <div class="peakRestCon">
                    <p>성수기 휴일 요금</p>
                    <input type="text" id="peakRest" name="peakRest" placeholder="성수기 휴일" required>
                  </div>
                  <div class="nonPeakDayCon">
                    <p>비성수기 평일 요금</p>
                    <input type="text" id="nonPeakDay" name="nonPeakDay" placeholder="비성수기 평일" required>
                  </div>
                  <div class="nonPeakRestCon">
                    <p>비성수기 휴일 요금</p>
                    <input type="text" id="nonPeakRest" name="nonPeakRest" placeholder="비성수기 휴일" required>
                  </div>
                </div>
              </div>
              <div class="submitBox">
                <input type="submit" value="완료" class="submit" name="submit">
              </div>
            </div>

             </div>
           
             <!-- Add Pagination -->
             <div class="swiper-pagination"></div>
             <!-- Add Arrows -->
             <div class="swiper-button-next"></div>
             <div class="swiper-button-prev"></div>
           </form>
        </section>
  
      <%@ include file="/views/common/footer.jsp" %>
      </div>

    <script src="<%=request.getContextPath() %>/js/common/header.js"></script>
    <script src="<%=request.getContextPath() %>/js/house/houseEnroll.js"></script> 

   <script>
    //  스와이퍼
      var swiper = new Swiper('.first', {
         pagination: {
           el: '.swiper-pagination',
           type: 'progressbar',
         },
         navigation: {
           nextEl: '.swiper-button-next',
           prevEl: '.swiper-button-prev',
         },
       });

       function execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var roadAddr = data.roadAddress; // 도로명 주소 변수
                var extraRoadAddr = ''; // 참고 항목 변수

                // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                    extraRoadAddr += data.bname;
                }
                // 건물명이 있고, 공동주택일 경우 추가한다.
                if(data.buildingName !== '' && data.apartment === 'Y'){
                   extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                }
                // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                if(extraRoadAddr !== ''){
                    extraRoadAddr = ' (' + extraRoadAddr + ')';
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('postcode').value = data.zonecode;
                document.getElementById("roadAddress").value = roadAddr;
               
                
                // 참고항목 문자열이 있을 경우 해당 필드에 넣는다.
                if(roadAddr !== ''){
                    document.getElementById("detailAddress").value = extraRoadAddr;
                } else {
                    document.getElementById("detailAddress").value = '';
                }

                var guideTextBox = document.getElementById("guide");
                // 사용자가 '선택 안함'을 클릭한 경우, 예상 주소라는 표시를 해준다.
                if(data.autoRoadAddress) {
                    var expRoadAddr = data.autoRoadAddress + extraRoadAddr;
                    guideTextBox.innerHTML = '(예상 도로명 주소 : ' + expRoadAddr + ')';
                    guideTextBox.style.display = 'block';

                }else {
                    guideTextBox.innerHTML = '';
                    guideTextBox.style.display = 'none';
                }
            }
        }).open();
    }

    </script>
   
</body>
</html>