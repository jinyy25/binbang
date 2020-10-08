<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.binbang.member.model.vo.Member" %>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>main</title>
   <link rel="stylesheet" href="<%=request.getContextPath() %>/css/member/changePassword.css" />
     <script src="<%=request.getContextPath() %>/js/common/jquery-3.5.1.min.js"></script>
  </head>

  <body>
   
    <div class="loginContainer">
    
      <p class="passwordTitle">비밀번호 재설정</p>
      
      <div class="passwordLine"></div>

      <form id="newPassword">
        <p class="inputTitle">새로운 비밀번호를 입력하세요</p>
        <input type="password" id="newPw" name="new_password" placeholder="비밀번호 입력"> 
      </form>
        
       <p class="inputTitle">새로운 비밀번호를 다시 입력하세요</p>
       <input type="password" id="newPw_" name="new_password_" onkeyup="checkPw();" placeholder="비밀번호 입력">
       <div id="checkPw" align="left"></div>
        
      <button class="next" >완료</button>
          
    </div>
        
    <script> 

      function checkPw() {
   	  	let pw1=$("#newPw").val().trim();
        let pw2=$("#newPw_").val().trim();
        if(pw1==pw2){
            $("#checkPw").css("color","green").html("비밀번호가 동일합니다.");
            $(".next").prop("disabled",false);
          }else if(pw1!=pw2){
          	$("#checkPw").css("color","red").html("동일한 비밀번호를 입력하세요.");
            $(".next").prop("disabled",true);
          }
      };
      
    
      $(".next").click(e=>{
    	  
    	  $.ajax({
    		  url:"<%=request.getContextPath()%>/member/changePassword",
    		  type:"post",
    		  data:{"password":$("#newPw").val()},
    		  dataType:"html",
    		  success:data=>{
    			  self.close();
    		  }
    	  })
      })
     
      
    </script>
  

  </body>
</html>


    