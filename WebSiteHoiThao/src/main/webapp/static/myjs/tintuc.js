$(document).ready(function() {
	var id= $("#idParam").val();
	
	$.ajax({
        type: "POST",
        data: {idTinTuc: id},
        url: "/tintucdetailcontroller",
        dataType: 'json',
        cache: false,
        timeout: 600000,
        success: function (data) {
        	var src = "<img src='"+data.linkanh+"' style='height: 200px !important;' alt='' />";
        	$("#img").append(src);
        	$("#tieuDe").html(data.tieude);
        	$("#dienGia").append(data.diengia);
        	$("#noiDung").html(data.noidung);
        	$("#diaDiem").append(data.diadiem);
        },
        error: function (e) {

            alert("Sai r!!!");

        }
    });
});

$(document).ready(function(){
	$.ajax({
        type: "POST",
        url: "/gettintucganday",
        dataType: 'json',
        cache: false,
        timeout: 600000,
        success: function (data) {
        	var string = "";
        	for(var i = 0; i<data.length;i++){
        		string += "<a href='tintucdetail?id="+data[i].id+"' title=''>"
                                    +"<img src='"+data[i].linkanh+"' width='230' alt=''>"
                                    +"<h4>"+data[i].tieude+"</h4>"
                                    +"<div class='clear'></div>"
                                    +"</a>";
        	}
        	
        	$("#newsRight").append(string);
        },
        error: function (e) {

            alert("Sai r!!!");

        }
    });
});