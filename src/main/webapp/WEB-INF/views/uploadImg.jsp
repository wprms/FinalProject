<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" />

<link rel="stylesheet" type="text/css" href="./css/style.css">
<link rel="stylesheet" type="text/css" href="./css/style_joinform.css">
<link rel="stylesheet" type="text/css" href="./css/style_imgupload.css">

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<script>
$(document).ready(function() {
    $('form').submit(function(event) {
    	
        event.preventDefault(); // 기본 동작인 폼 전송을 막음

        var imageFile1 = $('#imageFile1')[0].files[0];
        var imageFile2 = $('#imageFile2')[0].files[0];
        var imageFile3 = $('#imageFile3')[0].files[0];
        var imageFile4 = $('#imageFile4')[0].files[0];
        var imageFile5 = $('#imageFile5')[0].files[0];
        var imageFile6 = $('#imageFile6')[0].files[0];

        // 이미지1이 선택되지 않은 경우 폼 전송하지 않음
        if (!imageFile1) {
        	alert('이미지1은 필수로 첨부되어야 합니다.');
            return;
        }

        var formData = new FormData(); // 폼 데이터 객체 생성
        formData.append('imageFile1', imageFile1); // 이미지1을 폼 데이터에 추가
        if (imageFile2) {
            formData.append('imageFile2', imageFile2); // 이미지2를 폼 데이터에 추가
        }
        if (imageFile3) {
            formData.append('imageFile3', imageFile3); // 이미지3를 폼 데이터에 추가
        }
        if (imageFile4) {
            formData.append('imageFile4', imageFile4); // 이미지3를 폼 데이터에 추가
        }
        if (imageFile5) {
            formData.append('imageFile5', imageFile5); // 이미지3를 폼 데이터에 추가
        }
        if (imageFile6) {
            formData.append('imageFile6', imageFile6); // 이미지3를 폼 데이터에 추가
        }
        // 유효성 검사를 건너뛰고 폼을 직접 전송
        event.target.checkValidity = function() { return true; };

        // AJAX를 사용하여 폼 데이터 전송
        $.ajax({
            url: '/applyImg',
            type: 'POST',
            data: formData,
            processData: false,
            contentType: false,
            success: function(response) {
                console.log('이미지 전송 성공');
                // 전송 성공 후 추가 작업 수행
            },
            error: function(xhr, status, error) {
                console.log('이미지 전송 실패');
                // 전송 실패 시 처리 로직 작성
            }
        });
    });
});
</script>

<script>
function readURL(input, previewId) {
    if (input.files && input.files[0]) {
        var reader = new FileReader();

        reader.onload = function(e) {
            $(input).parent().siblings('.card-body').find('.card-img-top').attr('src', e.target.result);
            $(input).parent().siblings('.card-body').show();
            $(input).parent().siblings('.card-footer').show();
            console.log(e.target.result);
            
            
        }

        reader.readAsDataURL(input.files[0]);
    }
}
</script>

<script>
    function removeImage(previewId, button) {
        // 미리보기 이미지 제거
        $('#' + previewId).attr('src', '#');

        // 파일 선택 input 초기화
        var fileInput = $(button).parent().siblings('.card-header').find('input[type="file"]');
        fileInput.val('');

        // 카드 컨테이너 숨기기
        $('#' + previewId).parent().hide();
        $(button).closest('.card-footer').hide();
    }
</script>
</head>
<body>
	<%@ include file="main_header.jsp"%>
	<main class="support">
		<div class="menu_wrap">
			<h2>회원 가입</h2>
			<div class="container-fluid">
				<form action="/applyImg" method="post" enctype="multipart/form-data">
					<div class="container">친구에게 보여줄 사진을 올려주세요</div>
					<div class="row image-upload-row">
						<div class="col-4">
							<div class="image-upload">
								<div class="card">
									<div class="card-header">
										<label for="imageFile1" class="custom-file-label" id="labelImage1">
										<div id="fileInput1" class="file-input">
                        				<i class="fas fa-cloud-upload-alt"></i>
                       					<span>이미지 01 (필수)</span>
                    					</div></label>
										 <input type="file" class="custom-file-input" id="imageFile1" name="imageFile1"
											required onchange="readURL(this, 'previewImage1');">
									</div>
									<div class="card-body" id="previewImage1Container" style="display: none;">
										<img id="previewImage1" class="card-img-top" src="#"
											alt="미리보기">
									</div>

									<div class="card-footer" id="previewImage1Footer" style="display: none;">
										<button type="button" class="btn btn-danger delete-image" onclick="removeImage('previewImage1', this)">삭제</button>
									</div>
								</div>
							</div>
						</div>
						<div class="col-4">
							<div class="image-upload">
								<div class="card">
									<div class="card-header">
										<label for="imageFile2" class="custom-file-label" id="labelImage2">
										<div id="fileInput2" class="file-input">
                        				<i class="fas fa-cloud-upload-alt"></i>
                       					<span>이미지 02</span>
                    					</div></label>
										 <input type="file" class="custom-file-input" id="imageFile2" name="imageFile2"
											onchange="readURL(this, 'previewImage2');">
									</div>
									<div class="card-body" id="previewImage2Container" style="display: none;">
										<img id="previewImage2" class="card-img-top" src="#" alt="미리보기">
									</div>
									<div class="card-footer" id="previewImage2Footer" style="display: none;">
										<button type="button" class="btn btn-danger delete-image" onclick="removeImage('previewImage2', this)">삭제</button>
									</div>
								</div>
							</div>
						</div>
						<div class="col-4">
							<div class="image-upload">
								<div class="card">
									<div class="card-header">
										<label for="imageFile3" class="custom-file-label" id="labelImage3">
										<div id="fileInput3" class="file-input">
                        				<i class="fas fa-cloud-upload-alt"></i>
                       					<span>이미지 03</span>
                    					</div></label>
										 <input type="file" class="custom-file-input" id="imageFile3" name="imageFile3"
											onchange="readURL(this, 'previewImage3');">
									</div>
									<div class="card-body" id="previewImage3Container" style="display: none;">
										<img id="previewImage2" class="card-img-top" src="#" alt="미리보기">
									</div>
									<div class="card-footer" id="previewImage3Footer" style="display: none;">
										<button type="button" class="btn btn-danger delete-image" onclick="removeImage('previewImage3', this)">삭제</button>
									</div>
								</div>
							</div>
						</div>
						<div class="col-4">
							<div class="image-upload">
								<div class="card">
									<div class="card-header">
										<label for="imageFile4" class="custom-file-label" id="labelImage4">
										<div id="fileInput4" class="file-input">
                        				<i class="fas fa-cloud-upload-alt"></i>
                       					<span>이미지 04</span>
                    					</div></label>
										 <input type="file" class="custom-file-input" id="imageFile4" name="imageFile4"
											onchange="readURL(this, 'previewImage4');">
									</div>
									<div class="card-body" id="previewImage4Container" style="display: none;">
										<img id="previewImage4" class="card-img-top" src="#" alt="미리보기">
									</div>
									<div class="card-footer" id="previewImage4Footer" style="display: none;">
										<button type="button" class="btn btn-danger delete-image" onclick="removeImage('previewImage4', this)">삭제</button>
									</div>
								</div>
							</div>
						</div>
						<div class="col-4">
							<div class="image-upload">
								<div class="card">
									<div class="card-header">
										<label for="imageFile5" class="custom-file-label" id="labelImage5">
										<div id="fileInput5" class="file-input">
                        				<i class="fas fa-cloud-upload-alt"></i>
                       					<span>이미지 05</span>
                    					</div></label>
										 <input type="file" class="custom-file-input" id="imageFile5" name="imageFile5"
											onchange="readURL(this, 'previewImage5');">
									</div>
									<div class="card-body" id="previewImage1Container" style="display: none;">
										<img id="previewImage5" class="card-img-top" src="#"
											alt="미리보기">
									</div>

									<div class="card-footer" id="previewImage5Footer" style="display: none;">
										<button type="button" class="btn btn-danger delete-image" onclick="removeImage('previewImage5', this)">삭제</button>
									</div>
								</div>
							</div>
						</div>
						<div class="col-4">
							<div class="image-upload">
								<div class="card">
									<div class="card-header">
										<label for="imageFile6" class="custom-file-label" id="labelImage6">
										<div id="fileInput6" class="file-input">
                        				<i class="fas fa-cloud-upload-alt"></i>
                       					<span>이미지 06</span>
                    					</div></label>
										 <input type="file" class="custom-file-input" id="imageFile6" name="imageFile6"
											onchange="readURL(this, 'previewImage6');">
									</div>
									<div class="card-body" id="previewImage6Container" style="display: none;">
										<img id="previewImage6" class="card-img-top" src="#"
											alt="미리보기">
									</div>
									<div class="card-footer" id="previewImage6Footer" style="display: none;">
										<button type="button" class="btn btn-danger delete-image" onclick="removeImage('previewImage1', this)">삭제</button>
									</div>
								</div>
							</div>
						</div>
					</div>
					<hr />
					<p>
						<input type="submit" value="제출하기" />
						 <input type="reset" value="다시하기" />
					</p>
				</form>
			</div>
		</div>
	</main>
	<%@ include file="main_footer.jsp"%>
</body>
</html>