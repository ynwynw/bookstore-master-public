<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title></title>
    <base href="<%=basePath%>">
    <script type="text/javascript" src="js/jquery-1.11.3.min.js"></script>
    <script type="text/javascript" src="js/bootstrap.js"></script>
    <script type="text/javascript" src="js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <script type="text/javascript" src="js/jquery.validate.js"></script>
    <link rel="stylesheet" href="css/bs.css"/>
    <script type="text/javascript">

        function checkUserExist(value, element) {
            var $username = $(element);
            var isExist = false;
            if ($.trim(value) != "") {
                $.ajax({
                    type: "GET",
                    url: "user/checkUserExist",
                    data: {"username": value},
                    success: function (result) {
                        $username.parent().next().html("");
                        if (result.data) {
                            isExist = true;
                            $username.parent().next().html("<span class='ok'>" + result.message + "</span>");
                        }
                        isExist = result.data;
                    },
                    complete: function () {
                    },
                    dataType: "json",
                    async: false
                });
            }
            return isExist;
        }

        $(function () {

            jQuery.validator.addMethod("checkUserExist", function (value, element, param) {
                if (param) {
                    return checkUserExist(value, element);
                } else
                    return false;
            }, "?????????????????????");

            jQuery.validator.addMethod("isMobile", function (value, element) {
                var length = value.length;
                var mobile = /^(13[0-9]{9})|(18[0-9]{9})|(14[0-9]{9})|(17[0-9]{9})|(15[0-9]{9})$/;
                return this.optional(element) || (length == 11 && mobile.test(value));
            }, "???????????????????????????");

            $("#storeForm").validate({
                //????????????????????????
                onfocusout: function (element) {
                    $(element).valid();
                },
                errorPlacement: function (error, element) {	//??????????????????????????????
                    error.appendTo(element.parent().next());//?????????error???????????????????????????element????????????????????????,parent????????????next()?????????
                },
                errorClass: "red",
                rules: {
                    username: {
                        required: true,
                        checkUserExist : true
                    },
                    password: {
                        required: true
                    },
                    nickname: {
                        required: true
                    },
                    gender: {
                        required: true
                    },
                    email: {
                        required: true,
                        email: true
                    },
                    phone: {
                        required: true,
                        isMobile: true
                    },
                    location: {
                        required: true
                    },
                    identity: {
                        required: true
                    },
                    detailAddress: {
                        required: true
                    },
                    roleIds :{
                        required : true
                    }
                },
                messages: {
                    username: {
                        required: "??????????????????"
                    },
                    password: {
                        required: "???????????????"
                    },
                    nickname: {
                        required: "???????????????"
                    },
                    gender: {
                        required: "?????????????????????"
                    },
                    email: {
                        required: "?????????????????????",
                        email: "?????????????????????"
                    },
                    phone: {
                        required: "???????????????????????????"
                    },
                    location: {
                        required: "???????????????????????????"
                    },
                    identity: {
                        required: "?????????????????????"
                    },
                    detailAddress: {
                        required: "???????????????????????????"
                    },
                    roleIds :{
                        required : "???????????????"
                    }
                }
            });
        });

    </script>
</head>
<body>
<div class="container" style="border: 1px solid #CCCCCC;height: 1000px;">
    <div style="height:100px;border-bottom: 1px solid #CCCCCC;padding-top:30px;margin-bottom: 20px">
        <h2 class="h2">????????????</h2>
    </div>
    <form class="form-horizontal" role="form" id="storeForm" method="post" action="admin/user/addition">
        <input type="hidden" name="userId">
        <div class="form-group">
            <label for="username" class="col-sm-2 control-label">????????????</label>
            <div class="col-sm-5">
                <input type="text" class="form-control" id="username" name="username" placeholder="?????????">
            </div>
            <span></span>
        </div>
        <div class="form-group">
            <label for="password" class="col-sm-2 control-label">???????????????</label>
            <div class="col-sm-5">
                <input type="password" class="form-control" id="password" name="password" value="${user.password}" placeholder="??????">
            </div>
            <span></span>
        </div>
        <div class="form-group">
            <label for="nickname" class="col-sm-2 control-label">?????????</label>
            <div class="col-sm-5">
                <input type="text" class="form-control" id="nickname" name="nickname" placeholder="??????">
            </div>
            <span></span>
        </div>
        <div class="form-group">
            <label class="col-sm-2 control-label">??????:</label>
            <div class="col-sm-5">
                <label class="radio-inline">
                    <input type="radio" name="gender" id="man" value="1" checked> ???
                </label>
                <label class="radio-inline">
                    <input type="radio" name="gender" id="woman" value="0"> ???
                </label>
            </div>
        </div>
        <div class="form-group">
            <label for="email" class="col-sm-2 control-label">???????????????</label>
            <div class="col-sm-5">
                <input type="text" class="form-control" id="email" name="email" placeholder="????????????">
            </div>
            <span></span>
        </div>
        <div class="form-group">
            <label for="phone" class="col-sm-2 control-label">???????????????</label>
            <div class="col-sm-5">
                <input type="text" class="form-control" id="phone" name="phone" placeholder="????????????">
            </div>
            <span></span>
        </div>
        <div class="form-group">
            <label for="location" class="col-sm-2 control-label">?????????:</label>
            <div class="col-sm-5">
                <select class="form-control" name="location" id="location" style="width: 150px;">
                    <option value="">?????????</option>
                    <option value="??????" >??????</option>
                    <option value="??????" >??????</option>
                    <option value="??????" >??????</option>
                    <option value="??????" >??????</option>
                </select>
            </div>
        </div>

        <div class="form-group">
            <label class="col-sm-2 control-label">??????:</label>
            <div class="col-sm-5">
                <input type="radio" name="identity" id="student" value="??????" checked> ??????&nbsp&nbsp
                <input type="radio" name="identity" id="teacher" value="??????"> ??????&nbsp&nbsp
                <input type="radio" name="identity" id="worker" value="?????????"> ?????????&nbsp&nbsp
                <input type="radio" name="identity" id="liberal" value="????????????"> ????????????&nbsp
                <input type="radio" name="identity" id="administrators" value="?????????"> ???????????????&nbsp&nbsp
            </div>
            <span class="red"></span>
        </div>

        <div class="form-group">
            <label for="detailAddress" class="col-sm-2 control-label">????????????:</label>
            <div class="col-sm-5">
                <input type="text" class="form-control" name="detailAddress" id="detailAddress" placeholder="????????????:">
            </div>
            <span class="red"></span>
        </div>

        <div class="form-group">
            <label for="location" class="col-sm-2 control-label">??????:</label>
            <div class="col-sm-3">
                <select class="form-control" name="roleIds" id="roleIds" multiple="multiple" style="width: 150px;">
                    <c:forEach items="${allRoles}" var="role">
                        <option value="${role.roleId}">${role.name}</option>
                    </c:forEach>
                </select>
                <span>??????ctrl???shift?????????</span>
            </div>
            <span class="red"></span>
        </div>

        <div class="form-group">
            <div class="col-sm-offset-2 col-sm-10">
                <button type="submit" class="btn btn-default">????????????</button>
            </div>
        </div>

    </form>
</div>
</body>
</html>
