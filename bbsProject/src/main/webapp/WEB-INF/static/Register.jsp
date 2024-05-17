<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>

<html>

<head>
    <title>青鸟学员论坛--注册</title>
    <meta http-equiv="content-type" content="text/html; charset=gbk">
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
    <!--      用户注册表单        -->
    <div class="t" style="margin-top: 15px" align="center">
        <form id="submit" action="" method="post">
            <br />
            用&nbsp;户&nbsp;名 &nbsp;
				<input id="userName" class="input" tabindex="1" type="text" maxlength="20" size="35" name="uname">
            <br />
            密&nbsp;&nbsp;&nbsp;&nbsp;码 &nbsp;
				<input id="pass" class="input" tabindex="2" type="password" maxlength="20" size="40" name="upass">
            <br />
            重复密码 &nbsp;
				<input id="newPass" class="input" tabindex="3" type="password" maxlength="20" size="40" name="upass1">
            <br />
            性别 &nbsp;
				女<input type="radio" name="gender" value="0">
            男<input type="radio" name="gender" value="1" checked="checked" />
            <br />
            请选择头像
            <br />
            <img src="../image/head/1.gif" /><input class="head" type="radio" name="head" value="1.gif" checked="checked">
            <img src="../image/head/2.gif" /><input class="head" type="radio" name="head" value="2.gif">
            <img src="../image/head/3.gif" /><input class="head" type="radio" name="head" value="3.gif">
            <img src="../image/head/4.gif" /><input class="head" type="radio" name="head" value="4.gif">
            <img src="../image/head/5.gif" /><input class="head" type="radio" name="head" value="5.gif">
            <br />
            <img src="../image/head/6.gif" /><input class="head" type="radio" name="head" value="6.gif">
            <img src="../image/head/7.gif" /><input class="head" type="radio" name="head" value="7.gif">
            <img src="../image/head/8.gif" /><input class="head" type="radio" name="head" value="8.gif">
            <img src="../image/head/9.gif" /><input class="head" type="radio" name="head" value="9.gif">
            <img src="../image/head/10.gif" /><input class="head" type="radio" name="head" value="10.gif">
            <br />
            <img src="../image/head/11.gif" /><input class="head" type="radio" name="head" value="11.gif">
            <img src="../image/head/12.gif" /><input class="head" type="radio" name="head" value="12.gif">
            <img src="../image/head/13.gif" /><input class="head" type="radio" name="head" value="13.gif">
            <img src="../image/head/14.gif" /><input class="head" type="radio" name="head" value="14.gif">
            <img src="../image/head/15.gif" /><input class="head" type="radio" name="head" value="15.gif">
            <br />
            <input class="btn" tabindex="4" type="submit" value="注 册">
        </form>
    </div>
    <!--      声明        -->
    <br>
    <center class="gray">2015 beijing aptech beida jade bird
	information technology co.,ltd 版权所有</center>
    <br>
    <script src="../../js/jquery-3.2.1.min.js"></script>
    <script src="../../js/loginJudgment.js"></script>
    <script src="../../js/register.js"></script>
</body>
</html>
