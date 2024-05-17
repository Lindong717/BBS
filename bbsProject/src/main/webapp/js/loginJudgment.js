let json = JSON.parse(localStorage.getItem("user"));
let statusBox = $('#statusBox');

if(json !== null){
    let succeed = $('<div id="succeed" class="h">您好： ' + json.name + ' &nbsp;| &nbsp; <a id="exit" href="">登出</a> |</div>');
    statusBox.append(succeed);
}else {
    let fails = $('<div id="fail" class="h">您尚未　<a href="/user/login">登录</a>&nbsp;| &nbsp; <a href="/user/register">注册</a> |</div>');
    statusBox.append(fails);
}

$('#exit').on('click',function (){
    $.get('/user/exit',function (bool){
        localStorage.removeItem('user');
        window.location.href = "/user/login";
    });
});