<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html>
<head>
    <title>青鸟学员论坛--修改帖子</title>
    <meta http-equiv="content-type" content="text/html; charset=gbk">
    <link rel="stylesheet" type="text/css" href="../../../../../../style/style.css" />
</head>

<body>
    <div>
        <img src="../../../../../../image/logo.gif">
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
		    <b><a href="/topic/list/${boardId}/${boardName}">${boardName}</a></b>&gt;&gt;
            <b><a href="/topic/detail/${topicId}">${title}</a></b>
        </div>
        <br />
        <div>
            <form id="postForm" action="" method="post">
                <input type="hidden" name="topicId" value="${topicId}" />
                <input type="hidden" name="replyId" value="${id}" />
                <div class="t">
                    <table cellspacing="0" cellpadding="0" align="center">

                        <tr>
                            <td class="h" colspan="3"><b>&#20462;&#25913;&#24086;&#23376;</b></td>
                        </tr>

                        <tr class="tr3">
                            <th width="20%"><b>标题</b></th>
                            <th>
                                <input name="title" value="" class="input" style="padding-left: 2px; font: 14px tahoma" tabindex="1" size="60"></th>
                        </tr>

                        <tr class="tr3">
                            <th valign="top">
                                <div><b>内容</b></div>
                            </th>
                            <th colspan="2">
                                <div>
                                    <span>
                                        <textarea name="content" style="width: 500px;" rows="20" cols="90" tabindex="2"></textarea></span>
                                </div>
                                (不能大于:<font color="blue">1000</font>字)
                            </th>
                        </tr>
                    </table>
                </div>

                <div style="margin: 15px 0px; text-align: center">
                    <input class="btn" tabindex="3" type="submit" value="修 改">
                </div>
            </form>

        </div>
        <!--      声明        -->
        <br />
    </div>
    <center class="gray">2015 beijing aptech beida jade bird
    information technology co.,ltd 版权所有</center>

    <script src="../../../../../../js/jquery-3.2.1.min.js"></script>
    <script src="../../../../../../js/loginJudgment.js"></script>
    <script src="../../../../../../js/update.js"></script>
</body>
</html>
