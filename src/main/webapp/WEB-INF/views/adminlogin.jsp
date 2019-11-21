<!-- <%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> -->

<!DOCTYPE html>

<html>

<head>

    <!-- CSS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/base.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/index.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/qna.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/recruit.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/materialize.min.css">

    <!-- ICON -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

    <!-- JS -->
    <script src="${pageContext.request.contextPath}/assets/js/dropdown.js"></script>
    <script src="${pageContext.request.contextPath}/assets/js/pageScroll.js"></script>
    <script src="${pageContext.request.contextPath}/assets/js/materialize.min.js"></script>
    <script src="http://code.jquery.com/jquery-3.1.0.min.js"></script>

    <style>
        .aa {
            background-image: url('${pageContext.request.contextPath}/assets/img/3185087.jpg');
        }

        .loginbox {
            width: 31%;
            margin: 3rem auto 3rem;
            background-color: #ffffff;
            box-shadow: 0 0 2rem 0 rgba(23, 27, 32, 0.15);
            border-radius: 1rem;
            padding: 3.8rem 3.3rem;
            text-align: center;
        }

        /* input-group-text recruit.css에도 있음 */
        .input-group-text {
            display: flex;
            align-items: center;
            padding: 0.8rem 0.8rem;
            margin: 0.5rem 0;
            font-size: 1.1rem;
            font-weight: 400;
            line-height: 1.5;
            color: #294e68;
            text-align: center;
            white-space: nowrap;
            background-color: #fff;
            border: 1px solid #cad1d7;
            border-radius: 0.375rem;
        }

        .modal {
            display: none;
            position: fixed;
            z-index: 1;
            left: 0;
            top: 0;
            width: 100%;
            height: 100%;
            overflow: auto;
            background-color: rgba(0, 0, 0, 0.4);
        }
    </style>

</head>

<body class="aa">
    <!-- navbar -->
    <nav class="navbar">
        <div class="container col-11">

            <div style="align-items: center; line-height: 1px; ">
                <a href="index.html" class="logobtn ml-5"
                    style="align-content: left; font-size:40px; text-decoration: none; vertical-align: middle;">
                    <img class="navbar-brand-img" src="${pageContext.request.contextPath}/assets/img/Libre.png"></a>
            </div>

            <div class="nav-menu col-9" style=" text-align:right; align-items: center;">

                <a href="about" class="btn ml-7 ">ABOUT</a>
                <a href="recruit" class="btn ml-5">RECRUIT</a>
                <a href="activity" class="btn ml-5">ACTIVITY</a>
                <a href="qna" class="btn ml-5">Q&A</a>

                <div class=" container" style="align-items: center; line-height: 15px;">
                    <a href=" http://fb.com/TechnologywaAVE" class="btn" style="font-size: 20px;">
                        <i class="fa fa-facebook-square"></i>
                    </a>
                    <a href="http://blog.naver.com/t--ave" class="btn" style="font-size: 20px; ">
                        <i class="fa fa-globe"></i>
                    </a>
                    <a href="http://fb.com/TechnologywaAVE" class="btn" style="font-size: 20px; ">
                        <i class="fa fa-comment"></i>
                    </a>
                </div>

            </div>

        </div>
    </nav>

    <!-- content -->
    <div>
        <div class="container">
            <div class="loginbox mt-9">
                <div style="color: #294e68;">

                    <div>
                        <p style="margin: 0 auto 0.5rem; font-size: 1.5rem; font-weight: 660;">WELCOME!</p>
                        <img src="${pageContext.request.contextPath}/assets/img/line.jpg" width="59%">
                        <h5 style="margin: -3.1rem auto 4rem;">This page is for administrators :D</h5>
                    </div>

                    <form role="form" name="login" method="POST" action="/loginCheck">

                        <div class="form-group" style="margin: 0 0 1.8rem;">
                            <div class="input-group input-group-alternative" style="margin: 0 auto; padding: 0 0.8rem;">
                                <div class="input-group-prepend">
                                    <span class="input-group-text"><i class="fa fa-user"></i></span>
                                </div>
                                <input class="form-control" type="text" id="id" name="id" placeholder="ID" required>
                            </div>
                        </div>

                        <div class="form-group" style="margin: 0 0 1.8rem;">
                            <div class="input-group input-group-alternative" style="margin: 0 auto; padding: 0 0.8rem;">
                                <div class="input-group-prepend">
                                    <span class="input-group-text"><i class="fa fa-lock"></i></span>
                                </div>
                                <input class="form-control" type="password" id="pw" name="pw" placeholder="PASSWORD"
                                    required>
                            </div>
                        </div>

                        <button type="submit" value="submit" class="btn btn-fill" id="log_submit"
                            style="padding: 0.5rem 1rem; font-size: 1rem; margin: 2.2rem auto 0; background-color: #294e68;">LOGIN</button>
                    </form>
                </div>
            </div>
        </div>
    </div>

    <!-- 로그인 정보 확인 -->
    <c:choose>
        <c:when test="${isLogin}">
            <div class="modal" id="log-modal">
                <!-- modal content -->
                <div>
                    <p>로그인에 실패하였습니다.</p>
                    <p>아이디와 비밀번호를 확인해주세요 :(</p>
                    <button onclick="close_modal();">확인</button>
                </div>
            </div>

            <script type="text/javascript">
                var isLogin = '${isLogin}';
                if (isLogin == 'true') {
                    $('#log-modal').show();

                    function close_modal(flag) {
                        $('#log-modal').hide();
                    };
                }
            </script>
        </c:when>
        <c:otherwise>
            <!-- loader -->
            <!-- 로딩중인 화면 -->
        </c:otherwise>
    </c:choose>

</body>

</html>