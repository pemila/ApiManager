<%@ page language="java" import="java.util.*" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="keywords" content="${keywords}"/>
    <meta name="description" content="${description}"/>
    <link href="${icon}" rel="shortcut icon" type="image/x-icon"/>
    <link href="${icon}" rel="icon" type="image/x-icon"/>
    <link href="${icon}" rel="shortcut" type="image/x-icon"/>
    <link href="resources/framework/bootstrap-3.0.0/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
    <!-- base-min.css,admin.css应该发在bootstrap之后,覆盖部分bootstrap样式 -->
    <link href="resources/css/allCss.css?v=v8.0.6" rel="stylesheet" type="text/css"/>
    <title>${title}</title>
</head>
<body class="BGFFF">

<div class="login-bg mb10 w p0" style="height: 600px">
        <div class="container p0">
            <div class="row p0 m0 CFFF">
                <div class="mt100 tc">

                </div>
                <div class="f60 tc mt30">CRAP-Api</div>

                <div class="f18 mt30 tc">完全开源、免费的API协作管理系统</div>

                <div class="f16 mt10 mb20 tc">协作开发、在线测试、文档管理、导出接口、个性化功能定制...</div>

                <div class="tc mt50">
                    <c:if test="${login}">
                        <a class="btn btn-main r5 w150 f14 ml10" href="admin.do" target="_blank">管理项目</a>
                        <a class="btn btn-adorn r5 w150 f14 ml10" href="index.do#/project/list?projectShowType=3" target="_blank">查看项目</a>
                    </c:if>
                    <c:if test="${login == false}">
                        <a class="btn btn-main r5 w150 f14 ml10" href="loginOrRegister.do#/login" target="_blank">登录</a>
                        <!--
                        <a class="btn btn-adorn r5 w150 f14 ml10" href="user/mock.do" target="_blank">免登录试用</a>
                        -->
                    </c:if>
                </div>


            </div>
        </div>
</div>
<!-- End: top-->

<!-- 功能点介绍 -->


<!-- footer navbar -->
<div class="m0 w lh26">

        <div class="container h26  r20 p0 pl20 tc b1 mb20">
            友情链接：
            <ul class="dis-in-tab p0 m0">
                <c:forEach items="${menuList}" var="menuDto" varStatus="id">
                    <c:if test="${menuDto.menu.type=='FRIEND'}">
                        <a target="_blank" class="mr20" href="${menuDto.menu.menuUrl}">${menuDto.menu.menuName}</a>
                    </c:if>
                </c:forEach>
            </ul>
        </div>

        <div class="container mt20 r5 r20 p5 h26 tr">
            ©<a href="http://crap.cn" target="_blank">crap.cn</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;版本号 [V8.1.0]&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <ul class="dis-in-tab p0 m0">
                <li class="dis-in-tab mr20">
                    <a target="_blank" href="http://api.crap.cn/static/help/help-articleList--1.html">帮助文档</a>
                </li>
                <li class="dis-in-tab mr20">
                    <a target="_blank" href="https://github.com/EhsanTang/CrapApi">GitHub</a>
                </li>
                <li class="dis-in-tab mr20">
                    <a target="_blank" href="https://git.oschina.net/CrapApi/CrapApi">码云</a>
                </li>
                <c:forEach items="${menuList}" var="menuDto" varStatus="id">
                    <c:if test="${menuDto.menu.type=='BOTTOM'}">
                        <a target="_blank" class="mr20" href="${menuDto.menu.menuUrl}">${menuDto.menu.menuName}</a>
                    </c:if>
                </c:forEach>
            </ul>
        </div>
</div>

<script>
    var _hmt = _hmt || [];
    (function() {
        var hm = document.createElement("script");
        hm.src = "https://hm.baidu.com/hm.js?b4a454e8f7114e487f10d7852f0c55c8";
        var s = document.getElementsByTagName("script")[0];
        s.parentNode.insertBefore(hm, s);
    })();
</script>
</body>
</html>
