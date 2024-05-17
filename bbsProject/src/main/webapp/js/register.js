let userName;
let pass;
let newPass;

function validation(){
    if(userName == null || userName == ""){
        alert("用户名不能为空");
        return false;
    }
    if(pass == null || pass == ""){
        alert("密码不能为空");
        return false;
    }
    if(newPass == null || newPass == "") {
        alert("新密码不能为空");
        return false;
    }
    if(pass !== newPass){
        alert("两次密码不一致");
        return false;
    }
    return true;
}

$('#submit').on('submit',function (event){
    event.preventDefault();
    userName = $('#userName').val();
    pass = $('#pass').val();
    newPass = $('#newPass').val();

    if(validation()){
        let head = $("input[name='head']:checked").val();
        let sex = $("input[name='gender']:checked").val();

        $.post('/user/register',{name:userName,pass:pass,head:head,gender:sex},function (data){
            if(data === 1){
                window.location.href = "/user/login";
            }
        });
    }
});