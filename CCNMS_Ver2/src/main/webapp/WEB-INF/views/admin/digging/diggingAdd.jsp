<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath"  value="${pageContext.request.contextPath}" />
<c:set var="adminId" value="${sessionScope.adminId }"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
	
</script>
<style>
	 li{
		 list-style-type: none;
	 }
  .ck-editor__editable[role="textbox"] {
    min-height: 300px;
  }

  .ck-content .image {
    max-width: 80%;
    margin: 20px auto;
  }

</style>
<script>
	$().ready(function(){
		$("form").submit(function(){
			var diggingTopic= $("[name='diggingTopic']").val();
			var content = $("[name='content']").val();
			if (diggingTopic == "null") {
				return false;
			}
			if (content.length > 3000){
				$("#contentWarn").html("[주의] 내용은 3000자까지 입력 가능합니다.");
				return false;
			}
		})
	});
	
	function getDig(){
		var diggingTopic = $("[name='diggingTopic']").val();
		console.log("==============");
		console.log(diggingTopic);
		console.log("==============");
		if (diggingTopic == "game") {
			hideDig();
			$("#game").show();
		}
		else if (diggingTopic =="kPop"){
			hideDig();
			$("#kPop").show();
		}
		else if (diggingTopic =="ott"){
			hideDig();
			$("#ott").show();
		}
		else if (diggingTopic =="animal"){
			hideDig();
			$("#animal").show();
		}
		else if (diggingTopic =="business"){
			hideDig();
			$("#business").show();
		}
		else if (diggingTopic =="sport"){
			hideDig();
			$("#sport").show();
		}
		else if (diggingTopic =="celeb"){
			hideDig();
			$("#celeb").show();
		}
		else if (diggingTopic =="travel"){
			hideDig();
			$("#travel").show();
		}
		else if (diggingTopic =="fashion"){
			hideDig();
			$("#fashion").show();
		}
		else hideDig();
	}
	function hideDig(){
		$("#game").hide();
		$("#kPop").hide();
		$("#ott").hide();
		$("#animal").hide();
		$("#business").hide();
		$("#sport").hide();
		$("#celeb").hide();
		$("#travel").hide();
		$("#fashion").hide();
	}
</script>
</head>
<body>
	<c:if test="${adminId eq null}">
		<script>
			location.href = "${contextPath }/admin/loginAdmin";
		</script>
	</c:if>		
<form action="${contextPath }/admin/digging/diggingAdd" method="post" enctype="multipart/form-data"> 
  <div class="container">
            <div class="row">
                <div class="col-lg-3 col-md-5">
                    <div class="sidebar">
                        <div class="sidebar__item">
                           <h4><img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABgAAAAYCAYAAADgdz34AAAAAXNSR0IArs4c6QAAAY5JREFUSEvN1D1I1lEUx/GPRS5BRdDg4JDQJESQkLQGBk2VBBa4RARFDkFzCs46JNoQLkFJiFSDoEtrg5a4tDTUoktvVLQkqBy4z6A893//PfBAZ7pv535/59xzboc2W0eb71cHcAIPcBZnkqA1rGASX6tElgDDmMLRzCXfcROvc5AqwAgeJccFzOBNml/APVxO8xuYawbJAXrwEQdSeiYyCkcxhj84iS/7z+UAofYOXmCoUAhLuIiHGK8L2ERXetT1AmAAy3iHvrqAvziEg9guAI7jG341K4Zcin7iSHIIxyo7hh8InxjvsRwgajzCvYJXBcB1PMdbnK8LuJ+aaBXnKtIUij+k97qLx3UBnXiPXjzB7UwUzxA9EBH3NxNS1WinEF/CYTRTF2vT+I3T+PwvjdY4O4h5bCGabyNtdONTGl/Dy1a+iobPU8SfdAuzabGhPuaxnrXSZxeOjSqJaoqqClvEJVytUh8H6wB2CmVaecd/ASgEUL1dJ4K4IZemon/xQNLXdkDLaaobQcuAXVL1RRnaCiDMAAAAAElFTkSuQmCC"/>
                            &ensp;디깅 포스팅 안내</h4>
                            <ul>
                                <li><strong>1. 관리자 공지사항을 읽어주세요.</strong></li>
                               	<hr>
                                <li><strong>2. 유튜브의 url 등록시 유튜브 정책 상 동영상 아래에 있는 공유 -> 퍼가기에 적힌 url을 입력하셔야 합니다.</strong></li>
                               	<hr>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="col-lg-9 col-md-7">
                  <div class="nav-align-top mb-4">
                    <ul class="nav nav-tabs" role="tablist">
                      <li class="nav-item">
                        <button
                          type="button"
                          class="nav-link active"
                          role="tab"
                          data-bs-toggle="tab"
                          data-bs-target="#navs-top-write"
                          aria-controls="navs-top-write"
                          aria-selected="true"
                          value="write"
                          id="writeBnt"
                          name="writeBnt"
                        >
                     	  글쓰기
                        </button>
                      </li>
                    </ul>
                    <div class="tab-content">
                      <div class="tab-pane fade show active" id="navs-top-write" role="tabpanel">
                      <div class="card-body">
                  	     	<table>
                      		<thead>
                      			<tr>
                      				<th>디깅 토픽 : </th>
                      				<th>
                    					<select name="diggingTopic" onchange="getDig()">
					  						<option value="null">[필수]</option>
					  						<option value="notice">공지</option>
			  								<option value="ad">홍보</option>
					  						<option value="game">게임</option>
					  						<option value="kPop">K-POP</option>
					  						<option value="ott">OTT</option>
					  						<option value="animal">동물 & 애완동물</option>
					  						<option value="business">비즈니스</option>
					  						<option value="sport">스포츠</option>
					  						<option value="celeb">연예인</option>
					  						<option value="travel">여행</option>
					  						<option value="fashion">패션</option>
		  								</select>
		  								<div id="game" style="display: none">
			  								<select name="game">
			  									<option>LEAGUE_OF_LEGENDS</option>
			  									<option>CALL_OF_CHAOS_ASSEMBLE</option>
			  									<option>WOOPAROO_ODYSSEY</option>
			  									<option>etc</option>
			  								</select>
			  							</div>
			  							<div id="kPop" style="display: none">	
			  								<select name="kPop">
			  									<option>BTS</option>
			  									<option>IVE</option>
			  									<option>NEWJEANS</option>
			  									<option>AKMU</option>
			  									<option>etc</option>
			  								</select>
		  								</div>
		  								<div id="ott" style="display: none">
			  								<select name="ott">
			  									<option>마이_데몬</option>
			  									<option>고려_거란_전쟁</option>
			  									<option>무인도의_디바</option>
			  									<option>etc</option>
			  								</select>
		  								</div>
		  								<div id="animal" style="display: none">
			  								<select name="animal">
			  									<option>PET</option>
			  									<option>푸바오</option>
			  									<option>etc</option>
			  								</select>
		  								</div>
		  								<div id="business" style="display: none">
			  								<select name="business">
			  									<option>주식</option>
			  									<option>부동산</option>
			  									<option>etc</option>
			  								</select>
		  								</div>
		  								<div id="sport" style="display: none">
			  								<select name="sport">
			  									<option>야구</option>
			  									<option>축구</option>
			  									<option>배구</option>
			  									<option>etc</option>
			  								</select>
		  								</div>
		  								<div id="celeb" style="display: none">
			  								<select name="celeb">
			  									<option>Taylor_Swift</option>
			  									<option>Sam_Smith</option>
			  									<option>etc</option>
			  								</select>
		  								</div>
		  								<div id="travel" style="display: none">
			  								<select name="travel">
			  									<option>다낭</option>
			  									<option>타이베이</option>
			  									<option>유럽</option>
			  									<option>etc</option>
			  								</select>
		  								</div>
		  								<div id="fashion" style="display: none">
			  								<select name="fashion">
			  									<option>HEALTH</option>
			  									<option>HOT_TREND</option>
			  									<option>BEAUTY</option>
			  									<option>etc</option>
			  								</select>
		  								</div>
		  								&emsp;<span id="topicWarn" style="color:red"></span>
                      				</th>
                      			</tr>
                      			<tr>
                      				<th>작성자 : </th>
                      				<th>
                      					<select name="writer" >
					  						<option>ModuDigging</option>
				  						</select>
                      				</th>
                      			</tr>
                      			<tr> 
                      				<th>제목 : </th>
                      				<th>
                      					<div class="form-group">
										  <input class="form-control form-control-lg" type="text" id="subject" name="subject" maxlength="35"  required="required" >
										</div>
                      				</th>
                      			</tr>
                      		</thead>
                      		<tbody>
                      			<tr>
                      				<td colspan="2">
                      					<textarea name="content" id="editor" maxlength="2900"></textarea>
											<script>
											  ClassicEditor
											  .create(document.querySelector('#editor'), {
													ckfinder: {
														uploadUrl : '/image/upload'
													}
												})
												.then(editor => {
													console.log('Editor was initialized');
												})
											</script>
                      				</td>
                      			</tr>
                      		</tbody>
                      		<tfoot>
                      			<tr>
                      				<td colspan="2">
                      					<div class="input-group">
	                      					<input type="file" class="form-control" id="uploadfile" name="uploadfile">
		                			        <label class="input-group-text" for="inputGroupFile02" id="uploadFileBtn" name="uploadFile">업로드</label>
		                			        <label class="input-group-text" for="inputGroupFile02" id="deleteFile" name="deleteFile">삭제</label>
                      					</div>
                      				</td>
                      			</tr>
                      			<tr align="center">
                  	 	 			<th colspan="2">
                  	 	 			 	<span id="contentWarn" style="color:red"></span>
                  	 	 			</th>
                  	 	 		</tr>
                      			<tr>
                      				<td colspan="2">
	                      				<div class="demo-inline-spacing" align="center">
			                        		<button type="submit" class="btn btn-primary active">작성</button>
			                        		<button type="reset" class="btn btn-primary" onclick="window.location.reload()">새로고침</button>
			                      		</div>
                      				</td>
                      			</tr>
                      		</tfoot>
                      	</table>
                   	</div>
              	 	</div>
                  </div>
                     <div class="tab-pane fade" id="navs-top-img" role="tabpanel">
                      <div class="card-body">
                	 </div>
              		</div>
            	</div>
       	<div class="card-body">
    </div>
   </div>
   </div>
   </div>
  </form>
</body>
</html>

	