<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html>
<head>
    <title>青鸟学员论坛--帖子列表</title>
    <meta http-equiv="content-type" content="text/html; charset=gbk">
    <link rel="stylesheet" type="text/css" href="../../../style/style.css" />
</head>

<body>
    <div>
        <img src="../../../image/logo.gif">
    </div>
    <!--      用户信息、登录、注册        -->

    <div id="statusBox">

    </div>

    <!--      主体        -->
    <div>
        <!--      导航        -->
        <br />
        <div>
            &gt;&gt;<b><a href="/board/index">论坛首页</a></b>&gt;&gt;
			<b><a href=""></a></b>
        </div>
        <br />
        <!--      新帖        -->
        <div>
            <a href="/topic/add/${id}/${title}">
                <img src="../../../image/post.gif" border="0"></a>
        </div>

        <div class="t">
            <table id="bodyTable" cellspacing="0" cellpadding="0" width="100%">
                <tr>
                    <th class="h" style="width: 100%" colspan="4"><span>&nbsp;</span></th>
                </tr>
                <!--       表 头           -->
                <tr class="tr2">
                    <td>&nbsp;</td>
                    <td style="width: 80%" align="center">文章</td>
                    <td style="width: 10%" align="center">作者</td>
                    <td style="width: 10%" align="center">回复</td>
                </tr>
                <!--         主 题 列 表        -->
            </table>
        </div>
        <!--            翻 页          -->
        <div id="pageBox">

        </div>
    </div>
    <!--             声 明          -->
    <br />
    <center class="gray">2015 beijing aptech beida jade bird
	information technology co.,ltd 版权所有</center>

    <script src="../../../js/jquery-3.2.1.min.js"></script>
    <script src="../../../js/loginJudgment.js"></script>
    <script src="../../../js/list.js"></script>
    <script>
        showList(1,${id});
    </script>
</body>
</html>
