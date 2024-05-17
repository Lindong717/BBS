let fdgdfg = $('#fdgdfg');
let pageBox = $('#pageBox');

function showData(page,id,boardId,boardName,topicId,title){
    pageBox.empty();
    fdgdfg.empty();
    $.getJSON('/reply/list/' + id,{page:page},function(pageInfo){
        if(pageInfo.list.length > 0){
            pageInfo.list.forEach(function (item) {
                fdgdfg.append(`<tr class="tr1">
                    <th style="width: 20%">
                        <b>`+ item.name +`</b><br />
                        <br />
                        <img src="../../image/head/`+ item.head +`"><br />
                        注册:`+ item.regTime +`<br />
                    </th>
                    <th>
                        <h4>`+ item.title +`</h4>
                        <div>
                            <pre>`+ item.content +`</pre>
                        </div>
                        <div class="tipad gray">
                            发表：[`+ item.publishTime +`] &nbsp;
                            最后修改:[`+ item.modifyTime +`]
                            `+ (item.id === json.id ? `<a href="#" onclick="doDelete(`+ page +`,`+ item.replyId +`,${id},`+ boardId +`,'`+ boardName +`',`+ topicId +`,'`+ title +`')">[删除]</a>
                             <a href="/reply/update/`+ item.replyId +`/`+ boardId +`/`+ boardName +`/`+ topicId +`/`+ title +`">[修改]</a>` : '') +`
                        </div>
                    </th>
                </tr>`);
            });
        }else {
            fdgdfg.append(`<tr class="tr1">
                <td style="text-align: center"><h2>暂无回复</h2></td>
            </tr>`);
        }
        if(pageInfo.hasPreviousPage){
            pageBox.append(`| <a href="#" onclick="showData(` + pageInfo.prePage +`,${id},`+ boardId +`,'`+ boardName +`',`+ topicId +`,'`+ title +`')">上一页</a>`);
        }
        if(pageInfo.hasNextPage){
            pageBox.append(`| <a href="#" onclick="showData(` + pageInfo.nextPage +`,${id},`+ boardId +`,'`+ boardName +`',`+ topicId +`,'`+ title +`')">下一页</a>`);
        }
    });
}

function doDelete(page,replyId,detailId,boardName,topicId,title){
    $.ajax({
        type: 'delete',
        url: '/reply/delete/' + replyId,
        success: function (data) {
            if(data === 1){
                showData(page,detailId,boardName,topicId,title);
            }
        }
    });
}