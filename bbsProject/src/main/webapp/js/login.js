function notNull(name,pass){
    if(name === null || name === ""){
        return false;
    }
    if(pass === null || pass === ""){
        return false;
    }
    return true;
}

$('#loginform').on('submit',function (event){
    event.preventDefault();
    let name = $('#name').val();
    let pass = $('#pass').val();

    if(notNull(name,pass)){
        $.post('/user/login',{name:name,pass:pass},function (obj){
            if(obj !== ""){
                console.log(obj);
                localStorage.setItem("user",JSON.stringify(obj));
                window.location.href = "/board/index";
            }
        });
    }
});