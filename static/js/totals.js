$(function(){
    var n= $('.prices').length;
    // $('#numm')[0].length=n;

    var totals=0;
    var nums=0;
    for (var m=0;m<n;m++){

        var sum=parseFloat($('.prices').eq(m).text()) * parseInt($('.numm').eq(m).text());

        $('.total').eq(m).text(sum);
        totals+=sum;

        var num=parseInt($('.numm').eq(m).text());
        nums+=num;
    }
    $('.span7>i').html(totals);
    $('.nun').text(nums);

    $('.ck').click(function(){
        var ident=$(this).attr('ident');
        data={
            'ident':ident,
            'total':totals
        }
        $.get('/pay/',data,function(response){
            if (response.status==1){
                window.open(response.alipayurl,target='_self')
            }

        })
    })




    //
    // // var price=$('#prices').text();
    // //
    // // var num=$('#numm').text();
    // // var sum=price*num;
    //
    // $.get('/cart/',{'tos':tos},function(response){
    //     console.log('11')
    // })

})
/*
* $(document).ready(function(){
//点击增加按钮触发事件
    $(".plus").click(function(){
        var num = $(this).parent().children("span");
//单品数量增加
        num.text(parseInt(num.text())+1);
//商品总数增加
        var totalNum = parseInt($(".totalNum").text());
        totalNum++
        $(".totalNum").text(totalNum);
//计算总价
        var goods_price = parseInt($(this).parent().parent().children(".goods_price").text());
        $(".totalPrice").text(parseInt($(".totalPrice").text())+goods_price);
    });

//点击减少按钮触发事件
     $(".minus").click(function(){
        var num = $(this).parent().children("span");
        if(parseInt(num.text())){
        num.text(parseInt(num.text())-1);
        var totalNum = parseInt($(".totalNum").text());
        totalNum--
        $(".totalNum").text(totalNum);
        var goods_price = parseInt($(this).parent().parent().children(".goods_price").text());
        $(".totalPrice").text(parseInt($(".totalPrice").text())-goods_price);
    } else{
        num.text("0");
    }
    });
 });
* */