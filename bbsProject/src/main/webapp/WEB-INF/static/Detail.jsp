<%@ taglib prefix="fmt" uri="jakarta.tags.fmt" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html>
<head>
    <title>青鸟学员论坛--看贴</title>
    <meta http-equiv="content-type" content="text/html; charset=gbk">
    <link rel="stylesheet" type="text/css" href="../../style/style.css" />
</head>

<body>
    <div>
        <img src="../../image/logo.gif">
    </div>

    <!--      用户信息、登录、注册        -->

    <div id="statusBox">

    </div>

    <!--      主体        -->
    <div>
        <br />
        <!--      导航        -->
        <div>
            &gt;&gt;<b><a href="/board/index">论坛首页</a></b>&gt;&gt;
	        <b><a href="/topic/list/${postVo.boardId}/${postVo.boardName}">${postVo.boardName}</a></b>
        </div>
        <br />
        <!--      回复、新帖        -->
        <div>
            <a href="/reply/add/${postVo.topicId}/${postVo.boardName}/${postVo.boardId}/${postVo.title}">
                <img src="../../image/reply.gif" border="0"></a>
            <a href="/topic/add/${postVo.boardId}/${postVo.boardName}">
                <img src="../../image/post.gif" border="0"></a>
        </div>
        <!--      本页主题的标题        -->
        <div>
            <table cellspacing="0" cellpadding="0" width="100%">
                <tr>
                    <th class="h">本页主题: ${postVo.title}</th>
                </tr>
                <tr class="tr2">
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>

        <!--      主题        -->

        <div class="t">
            <table style="border-top-width: 0px; table-layout: fixed" cellspacing="0" cellpadding="0" width="100%">
                <tr class="tr1">
                    <th style="width: 20%">
                        <b>${postVo.name}</b><br />
                        <img src="../../image/head/${postVo.head}" alt="头像" /><br />
                        注册:<fmt:formatDate value="${postVo.regTime}" pattern="yyyy-MM-dd"></fmt:formatDate><br />
                    </th>
                    <th>
                        <h4>${postVo.title}</h4>
                        <div>
                            <pre>${postVo.content}</pre>
                        </div>
                        <div class="tipad gray">
                            发表：[<fmt:formatDate value="${postVo.publishTime}" pattern="yyyy-MM-dd"></fmt:formatDate>] &nbsp;
						最后修改:[<fmt:formatDate value="${postVo.modifyTime}" pattern="yyyy-MM-dd"></fmt:formatDate>]
                        </div>
                    </th>
                </tr>
            </table>
        </div>

        <!--      回复        -->

        <div class="t">
            <table id="fdgdfg" style="border-top-width: 0px; table-layout: fixed" cellspacing="0" cellpadding="0" width="100%">

            </table>
        </div>
        <div id="pageBox">

        </div>
    </div>

    <!--      声明        -->
    <br>
    <center class="gray">2015 beijing aptech beida jade bird
    information technology co.,ltd 版权所有</center>

    <script src="../../js/jquery-3.2.1.min.js"></script>
    <script src="../../js/loginJudgment.js"></script>
    <script src="../../js/detail.js"></script>
    <script>
        showData(1,${id},${postVo.boardId},'${postVo.boardName}',${postVo.topicId},'${postVo.title}');
    </script>
</body>
</html>
