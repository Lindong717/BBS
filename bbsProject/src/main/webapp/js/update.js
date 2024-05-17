let topicId = $('input[name="topicId"]').val();
let replyId = $('input[name="replyId"]').val();

$('#postForm').on('submit',function (ev){
    ev.preventDefault();
    let arr = $(this).serialize().split('&');
    console.log(arr);
    if(arr[2] !== "title=" && arr[3] !== "content="){
        $.ajax({
            type: 'put',
            url: '/reply/update',
            data: $(this).serialize(),
            success: function (data) {
                if(data === 1){
                    window.location.href = '/topic/detail/' + topicId;
                }
            }
        });
    }else {
        alert("请将数据填写完成");
    }
});

$.getJSON('/reply/singleSelect/' + replyId,function (item){
    $('input[name="title"]').val(item.title);
    $('textarea[name="content"]').val(item.content);
});