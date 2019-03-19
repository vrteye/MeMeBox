
$(function(){
    $("#account1").blur(function () {
        var reg = /^\w{4,12}$/;
        var isReg = reg.test($(this).val());

        if (!isReg) {
            $(this).next("p").text("*账号格式有误请重新输入");

            // console.log('123456')
        } else {
            var $that = $(this);

            $.get('/checkuser/',{'username':$(this).val()},function(response){
                console.log(response);


                if(response.status==1){
                    $that.next().html("账号可用");

                }else{
                    $that.next().html("账号被占用");
                }

            })
            $(this).next("p").text("");
        }
    })

    $('#psd1').blur(function(){
        var reg=/^\w{6,16}$/;
        var isReg = reg.test($(this).val());
        if (!isReg) {
            $(this).next("p").text("*密码格式有误请重新输入");
            // console.log('123456')
        } else {
            $(this).next("p").text("");

        }
    })

})