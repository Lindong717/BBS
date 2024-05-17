$('input[name="uid"]').val(json.id);
// 提交表单
$('#addForm').on('submit', function(e) {
    e.preventDefault();
    let arr = $(this).serialize().split('&');
    if(arr[4] !== "title=" && arr[5] !== "content="){
        if($(this).attr('data-title') === ""){
            var boardId = $('input[name="boardId"]').val();
            var title = $('input[name="titles"]').val();
            $.post('/topic/add',$(this).serialize(),function (data){
                if(data === 1){
                    window.location.href = '/topic/list/' + boardId + '/' + title;
                }
            });
        }else {
            var topicId = $('input[name="topicId"]').val();
            $.post('/reply/add',$(this).serialize(),function (data){
                if(data === 1){
                    window.location.href = '/topic/detail/' + topicId;
                }
            });
        }
    }else {
        alert("请将数据填写完成");
    }
});