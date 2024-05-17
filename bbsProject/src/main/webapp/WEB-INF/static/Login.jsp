<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html>
<head>

    <title>青鸟学员论坛--登录</title>

    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="expires" content="0">
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
    <meta http-equiv="description" content="this is my page">

    <link rel="stylesheet" type="text/css" href="../style/style.css" />

</head>

<body>
    <div>
        <img src="../image/logo.gif">
    </div>
    <!--      用户信息、登录、注册        -->
    <div id="statusBox">

    </div>
    <br />
    <!--      导航        -->
    <div>
        &gt;&gt;<b><a href="">论坛首页</a></b>
    </div>
    <!--      用户登录表单        -->
    <div class="t" style="margin-top: 15px" align="center">
        <form id="loginform" name="loginform" action="" method="post">
            <br />
            用户名 &nbsp;<input id="name" class="input" tabindex="1" type="text" maxlength="20" size="35" name="uname">
            <br />
            密　码 &nbsp;<input id="pass" class="input" tabindex="2" type="password" maxlength="20" size="40" name="upass">
            <p />
            <input class="btn" tabindex="6" type="submit" value="登 录">
        </form>
    </div>
    <!--      声明        -->
    <br />
    <center class="gray">
		2015 beijing aptech beida jade bird
		information technology co.,ltd 版权所有
	</center>
    <script src="../../js/jquery-3.2.1.min.js"></script>
    <script src="../../js/login.js"></script>
    <script src="../../js/loginJudgment.js"></script>
</body>
</html>
