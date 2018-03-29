$(document).ready(function() {
	$("#btnUpLoad").click(function() {
		var file = $('#filebutton').get()[0].files[0];

		if (!file) {
			alert("Vui lòng chọn file");
			return;
		}
		alert('Vui lòng đợi file được tải lên');
		$.ajax({
			url : '/uploadImage',
			type : 'POST',
			dataType : 'json',
			data : new FormData($('#taianhlenDr')[0]),
			processData : false,
			contentType : false
		}).done(function(result) {

			$("#linkanh").html(result[0]);
			$("#inputlinkanh").val(result[0]);
			var src = "<img src='"+result[0]+"' style='height: 100%; width: 100%;' alt=''/>";
			$("#Xemimg").append(src);
			$("#showimg").css("display","none");

		}).fail(function(result) {
			alert("Tải ảnh lên không thành công");
		});
	});
});