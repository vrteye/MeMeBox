$(function(){
	$('.shuliang #add').click(function(){
		console.log('加')
		data={}
	//	加入购物车 点加需要局部刷新
		$.get('/addcart/',data,function(response){
			console.log(response)
			if(response.status==0){
				window.open('/login/',target='_self')
			}
		})
	})

	$('.shuliang #sub').click(function() {
        console.log('减')
        $.get('/addcart/', data, function (response) {
            if (response.status == 0) {
            	window.open('/login/',target='_self')
            }

        })

    })




//放大镜

	$("#smallPicBox").mousemove(function(e){
		$("#moveDiv").css("display","block");
		$("#bigPicBox").css("display","block");
		var s=$("#smallPicBox").offset().left+$("#moveDiv").width()/2;
		var ss=$("#smallPicBox").offset().top+$("#moveDiv").height()/2;;
		var left=e.pageX-s;
		var top=e.pageY-ss;
		if(left<=0){
			left=0;
		}
		if(left>=$("#smallPicBox").width()-$("#moveDiv").width()){
			left=$("#smallPicBox").width()-$("#moveDiv").width();
		}
		if(top<=0){
			top=0;
		}
		if(top>=$("#smallPicBox").height()-$("#moveDiv").height()){
			top=$("#smallPicBox").height()-$("#moveDiv").height();
		}
		$("#moveDiv").css({"left":left,"top":top});
		$("#bigPic").css({"left":-2*left,"top":-2*top});
		$("#bigPic2").css({"left":-2*left,"top":-2*top});
	})
	$("#smallPicBox").mouseleave(function(){
		$("#moveDiv").css("display","none");
		$("#bigPicBox").css("display","none");
	})
	$("#ssmallPic1").mouseenter(function(){
		$("#smallPic").css({"display":"block"});
		$("#ssmallPic1").addClass("active").siblings().removeClass("active");
		$("#smallPic2").css({"display":"none"});
		$("#bigPic").css({"display":"block"});
		$("#bigPic2").css({"display":"none"});

	})
	$("#ssmallPic2").mouseenter(function(){
		$("#smallPic2").css({"display":"block"})
		$("#ssmallPic2").addClass("active").siblings().removeClass("active");
		$("#smallPic").css({"display":"none"});
		$("#bigPic").css({"display":"none"});
		$("#bigPic2").css({"display":"block"});
	})
})

