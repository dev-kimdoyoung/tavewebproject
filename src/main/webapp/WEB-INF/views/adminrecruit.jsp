<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>

<head>
    <title>TAVE</title>
    <meta charset="UTF-8">

    <!-- CSS FILE -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/base.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/index.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/qna.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/recruit.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/materialize.min.css">

    <!-- Icon -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

    <!-- JS -->
    <script src="${pageContext.request.contextPath}/assets/js/dropdown.js"></script>
    <script src="${pageContext.request.contextPath}/assets/js/pageScroll.js"></script>
    <script src="${pageContext.request.contextPath}/assets/js/materialize.min.js"></script>

    <script src="http://code.jquery.com/jquery-3.1.0.min.js"></script>
    <script src="${pageContext.request.contextPath}/assets/js/motion.js"></script>

    <style>
        .aa {
            margin-top: 0;
        }

        .multi-line {
            height: auto;
            word-wrap: break-word;
            word-break: break-all;
        }

        .pale-text p {
            color: #967b70;
        }
    </style>
</head>

<body style="overflow: auto; background-color: #fffbf8;">

    <!-- navbar -->
    <nav class="navbar_etc">
        <div class="container col-11">

            <div style="align-items: center; line-height: 1px;">
                <a href="index" class="logobtn ml-5"
                    style="align-content: left; font-size:40px; text-decoration: none; vertical-align: middle;">
                    <img class="navbar-brand-img" src="${pageContext.request.contextPath}/assets/img/Libre_3.png"></a>
            </div>

            <div class="nav-menu col-9" style="text-align:right; align-items: center;">

                <a href="../about" class="btn2 ml-8">ABOUT</a>
                <a href="../recruit" class="btn2 ml-6">RECRUIT</a>
                <a href="../activity" class="btn2 ml-6">ACTIVITY</a>
                <a href="../qna" class="btn2 ml-6">Q&A</a>

                <div class="container" style="align-items: center; line-height: 15px;">
                    <a href=" http://fb.com/TechnologywaAVE" class="btn2" style="font-size: 20px;">
                        <i class="fa fa-facebook-square"></i>
                    </a>
                    <a href="http://blog.naver.com/t--ave" class="btn2" style="font-size: 20px;">
                        <i class="fa fa-globe"></i>
                    </a>
                    <a href="http://fb.com/TechnologywaAVE" class="btn2" style="font-size: 20px;">
                        <i class="fa fa-comment"></i>
                    </a>
                </div>

            </div>

        </div>
    </nav>

    <!-- content -->
    <div class="container">
        <div class="contentbox">
            <div class="border">

                <p style="font-size: 21px; font-weight: bold; margin: 0 0.7rem 1rem;"># ${status.count}</p>
                <img src="${pageContext.request.contextPath}/assets/img/line2.jpg" width="100%"
                    style="margin-bottom: -2rem;">

                <div class="pale-text">

                    <h4 class="ml-2 rec-sub">이름</h4>
                    <div class="form-group">
                        <div class="input-group input-group-alternative">
                            <p class="form-control aa" type="text" placeholder="name" name="board-name" id="board-name">
                                ${board.name}</p>
                        </div>
                    </div>

                    <h4 class="ml-2 rec-sub">전화번호</h4>
                    <div class="form-group">
                        <div class="input-group input-group-alternative">
                            <p class="form-control aa" type="text" placeholder="phone number" name="board-phone"
                                id="board-phone">${board.phone}</p>
                        </div>
                    </div>

                    <h4 class="ml-2 rec-sub">자기소개</h4>
                    <div class="form-group">
                        <p class="form-control form-control-alternative multi-line" name="board-introduceMyself"
                            id="board-introduceMyself">${board.introduceMyself}</p>
                    </div>

                    <h4 class="ml-2 rec-sub">지원동기</h4>
                    <div class="form-group">
                        <p class="form-control form-control-alternative multi-line" name="board-motive"
                            id="board-motive">${board.motive}</p>
                    </div>

                    <div style="text-align: center;">
                        <button class="btn btn-fill mt-5" onclick="location.href='../adminview'">목록으로</button>
                    </div>

                </div>

            </div>
        </div>

</body>

</html>