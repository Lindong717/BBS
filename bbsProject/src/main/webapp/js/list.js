let bodyTable = $('#bodyTable');
let pageBox = $('#pageBox');
function showList(page,id){
    $.getJSON(`/topic/selectId/` + id,{page:page},function (pageInfo){
        if(pageInfo.list.length > 0){
            $('.dynamic').remove();
            pageBox.empty();
            pageInfo.list.forEach(function (item){
                bodyTable.append(`<tr class="tr3 dynamic">
                    <td>
                        <img src="../../../image/topic.gif" border="0"></td>
                    <td style="font-size: 15px">
                        <a href="/topic/detail/` + item.topicId +`">` + item.title +`</a>
                    </td>
                    <td align="center">`+ item.name +`</td>
                    <td align="center">` + item.reply +`</td>
                </tr>`);
            });
            if(pageInfo.hasPreviousPage){
                pageBox.append(`| <a href="#" onclick="showList(` + pageInfo.prePage +`,${id})">上一页</a>`);
            }
            if(pageInfo.hasNextPage){
                pageBox.append(`| <a href="#" onclick="showList(` + pageInfo.nextPage +`,${id})">下一页</a>`);
            }
        }else {
            bodyTable.append(`<tr class="tr3">
                <td style="text-align: center;" colspan="4"><h3>暂无数据</h3></td>
            </tr>`);
        }
    });
}