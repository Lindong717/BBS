<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html>
<head>
    <title>青鸟学员论坛--${(detailTitle == null) ? "发布帖子" : "回复帖子"}</title>
    <meta http-equiv="content-type" content="text/html; charset=gbk">
    <link rel="stylesheet" type="text/css" href="../../../../../style/style.css" />
</head>

<body>
    <div>
        <img src="../../../../../image/logo.gif">
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
			<b><a href="/topic/list/${id}/${title}">${title}</a></b>&gt;&gt;
            <b><a href="/topic/detail/${detailId}">${detailTitle}</a></b>
        </div>
        <br />
        <div>
            <form data-title="${detailTitle}" id="addForm" action="" method="post">
                <input type="hidden" name="uid" value="" />
                <input type="hidden" name="titles" value="${title}" />
                <input type="hidden" name="boardId" value="${id}" />
                <input type="hidden" name="topicId" value="${detailId}" />
                <div class="t">
                    <table cellspacing="0" cellpadding="0" align="center">
                        <tr>
                            <td class="h" colspan="3"><b>发表帖子</b></td>
                        </tr>

                        <tr class="tr3">
                            <th width="20%"><b>标题</b></th>
                            <th>
                                <input class="input" style="padding-left: 2px; font: 14px tahoma" tabindex="1" size="60" name="title"></th>
                        </tr>

                        <tr class="tr3">
                            <th valign="top">
                                <div><b>内容</b></div>
                            </th>
                            <th colspan="2">
                                <div>
                                    <span>
                                        <textarea style="width: 500px;" name="content" rows="20" cols="90" tabindex="2"></textarea></span>
                                </div>
                                (不能大于:<font color="blue">1000</font>字)
                            </th>
                        </tr>
                    </table>
                </div>

                <div style="margin: 15px 0px; text-align: center">
                    <input class="btn" tabindex="3" type="submit" value="提 交">
                    <input class="btn" tabindex="4" type="reset" value="重 置">
                </div>
            </form>
        </div>
    </div>
    <!--      声明        -->
    <br />
    <center class="gray">2015 beijing aptech beida jade bird
	information technology co.,ltd 版权所有</center>

    <script src="../../../../../js/jquery-3.2.1.min.js"></script>
    <script src="../../../../../js/loginJudgment.js"></script>
    <script src="../../../../../js/post.js"></script>
</body>
</html>
