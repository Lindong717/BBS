let table = $('#table');

$.getJSON('/board/level1',function (list){
    list.forEach(function (item){
        table.append('<tr class="tr3"><td colspan="4">' + item.boardName + '</td></tr>');
        $.ajaxSettings.async = false;//关闭异步
        $.get('/board/level2',{id:item.boardId},function (list2){
            list2.forEach(function (item2){
                let latest = '';

                if(item2.name !== null){
                    latest = `<span>
                            <a href="` + item2.topicId +`">`+ item2.title +`</a>
                        </span>
                        <br />
                        <span></span>
                        <span class="gray">` + item2.name +`</span>
                        <span class="gray">`+ item2.publishTime +`</span>`;
                }

                table.append(`<tr class="tr3">
                    <td width="5%">&nbsp;</td>
                    <td align="left">
                        <img src="../image/board.gif">
                        <a href="/topic/list/` + item2.boardId +`/` + item2.boardName +`">` + item2.boardName + `</a>
                    </td>
                    <td align="center">` + item2.body + `</td>
                    <td>` + latest + `</td>
                </tr>`);
            });
        });
        $.ajaxSettings.async = true;//开启异步
    });
});