<%@page contentType="text/html;charset=UTF-8"
    import="java.sql.*,java.io.*"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <title>Home</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta charset="utf-8">
    <meta name="keywords" content="" />
    <script type="application/x-javascript">
        addEventListener("load", function() {
            setTimeout(hideURLbar, 0);
        }, false);

        function hideURLbar() {
            window.scrollTo(0, 1);
        }
    </script>
    <!-- bootstrap-css -->
    <link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
    <!--// bootstrap-css -->
    <!-- css -->
    <link rel="stylesheet" href="css/style.css" type="text/css" media="all" />
    <!--// css -->
    <!-- font-awesome icons -->
    <link href="css/font-awesome.css" rel="stylesheet">
    <!-- //font-awesome icons -->
    <!-- font -->
    <link href="http://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i" rel="stylesheet">
    <!-- //font -->
</head>

<body>

    <!-- contact -->
    <div class="free_agile_consultation contact">
        <div class="col-md-6 free_agile_consultaion_img">


        </div>
        <div class="col-md-6 free_consultation_agile">
            <h4>注册页面</h4>
            <form action="getregister" enctype="multipart/form-data" method="post" autocomplete="off">
                <div class="fields">
                    <div class="field">
                        <input type="text" id="user_id" name="user_id" placeholder="请输入用户名" size="20" required="">
                        <input class="email" type="text" id="user_password" name="user_password" placeholder="请输入密码" size="20" required="">
                        <input type="text" id="admin_password" name="admin_password" placeholder="请输入注册口令" size="10" required="">
                        <input class="email" type="text" id="user_group_number" name="user_group_number" placeholder="请输入组号" size="5" required="">
                        <input class="email" type="text" id="user_student_number" name="user_student_number" placeholder="请输入学号" size="15" required="">
                        <input type="submit" value="SUBMIT">
                    </div>
                </div>
            </form>
        </div>
        <div class="clearfix"> </div>
    </div>
    <!-- //contact -->




    <!-- //footer -->
    <script src="js/jquery-2.1.4.min.js"></script>
    <script>
        // You can also use "$(window).load(function() {"
        $(function() {
            // Slideshow 4
            $("#slider4").responsiveSlides({
                auto: true,
                pager: true,
                nav: true,
                speed: 500,
                namespace: "callbacks",
                before: function() {
                    $('.events').append("<li>before event fired.</li>");
                },
                after: function() {
                    $('.events').append("<li>after event fired.</li>");
                }
            });

        });
    </script>
    <script>
        // You can also use "$(window).load(function() {"
        $(function() {
            // Slideshow 4
            $("#slider3").responsiveSlides({
                auto: true,
                pager: false,
                nav: false,
                speed: 500,
                namespace: "callbacks",
                before: function() {
                    $('.events').append("<li>before event fired.</li>");
                },
                after: function() {
                    $('.events').append("<li>after event fired.</li>");
                }
            });

        });
    </script>
    <script src="js/responsiveslides.min.js"></script>
    <script src="js/bars.js"></script>
    <script src="js/jarallax.js"></script>
    <script src="js/SmoothScroll.min.js"></script>
    <script type="text/javascript">
        /* init Jarallax */
        $('.jarallax').jarallax({
            speed: 0.5,
            imgWidth: 1366,
            imgHeight: 768
        })
    </script>
    <script type="text/javascript" src="js/easing.js"></script>
    <script type="text/javascript" src="js/move-top.js"></script>
    <script type="text/javascript">
        jQuery(document).ready(function($) {
            $(".scroll").click(function(event) {
                event.preventDefault();
                $('html,body').animate({
                    scrollTop: $(this.hash).offset().top
                }, 1000);
            });
        });
    </script>
    <!-- here stars scrolling icon -->
    <script type="text/javascript">
        $(document).ready(function() {
            /*
            	var defaults = {
            	containerID: 'toTop', // fading element id
            	containerHoverID: 'toTopHover', // fading element hover id
            	scrollSpeed: 1200,
            	easingType: 'linear' 
            	};
            */

            $().UItoTop({
                easingType: 'easeOutQuart'
            });

        });
    </script>
    <!-- //here ends scrolling icon -->
    <script src="js/bootstrap.js"></script>
</body>

</html>