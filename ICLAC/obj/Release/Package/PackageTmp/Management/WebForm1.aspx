<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="WebForm1.aspx.vb" Inherits="ICLAC.WebForm1" %>

<!DOCTYPE html>
<html>


<head>
    <title>مرکز بین المللی داوری و حقوقی ایران و چین</title>
    <link href="../Content/font-awesome.min.css" rel="stylesheet" />
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <script src="../Scripts/jquery-3.5.1.min.js"></script>
    <script src="../Scripts/bootstrap.min.js"></script>
    <script src="../Scripts/popper.min.js"></script>

    <script src="../Scripts/bootstrap-rtl.js"></script>
    <script src="../Scripts/carousel-rtl.js"></script>


    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

    <style>
        * {
            box-sizing: border-box;
        }

        body {
            margin: 0;
        }

        .navbar {
            overflow: hidden;
            background-color: #333;
            font-family: Arial, Helvetica, sans-serif;
        }

            .navbar a {
                float: left;
                font-size: 16px;
                color: white;
                text-align: center;
                padding: 14px 16px;
                text-decoration: none;
            }

        .dropdown {
            float: left;
            overflow: hidden;
        }

            .dropdown .dropbtn {
                font-size: 16px;
                border: none;
                outline: none;
                color: white;
                padding: 14px 16px;
                background-color: inherit;
                font: inherit;
                margin: 0;
            }

            .navbar a:hover, .dropdown:hover .dropbtn {
                background-color: red;
            }

        .dropdown-content {
            display: none;
            position: absolute;
            background-color: #f9f9f9;
            width: 100%;
            left: 0;
            box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
            z-index: 1;
        }

            .dropdown-content .header {
                background: red;
                padding: 16px;
                color: white;
            }

        .dropdown:hover .dropdown-content {
            display: block;
        }

        /* Create three equal columns that floats next to each other */
        .column {
            float: left;
            width: 33.33%;
            padding: 10px;
            background-color: #ccc;
            height: 250px;
        }

            .column a {
                float: none;
                color: black;
                padding: 16px;
                text-decoration: none;
                display: block;
                text-align: left;
            }

                .column a:hover {
                    background-color: #ddd;
                }

        /* Clear floats after the columns */
        .row:after {
            content: "";
            display: table;
            clear: both;
        }

        /* Responsive layout - makes the three columns stack on top of each other instead of next to each other */
        @media screen and (max-width: 600px) {
            .column {
                width: 100%;
                height: auto;
            }
        }
    </style>

</head>
<body>
    <div class="row">
        <div class="navbar">
            <a href="#home">خانه</a>
            <div class="dropdown">
                <button class="dropbtn">وکیل<i class="fa fa-caret-down"></i></button>
                <div class="dropdown-content">
                    <div class="header" style="background-color: red; text-align: center">
                        <h2>امور مربوط به شخص وکیل</h2>
                    </div>
                    <div class="row">
                        <div class="column ">
                            <h3>رویدادها و کارها</h3>
                            <a href="WorkEntry.aspx">ثبت رویدادها و کارها</a>
                            <a href="#">کارهای انجام نیافته تا امروز</a>
                        </div>
                        <div class="column ">
                            <h3>Category 2</h3>
                            <a href="#">Link 1</a>
                            <a href="#">Link 2</a>
                            <a href="#">Link 3</a>
                        </div>
                        <div class="column ">
                            <h3>گزارش ها</h3>
                            <a href="WeeklyPlan.aspx">گزارش هفتگی اقدمات من</a>
                            <a href="WorkPlan.aspx">گزارش ماهانه اقدامات من</a>
                            <a href="Efficiency.aspx">میزان بهره وری من</a>
                            <a href="LeavedCasesReport.aspx">گزارش پرونده های بلاتکلیف من</a>

                        </div>
                    </div>
                </div>
            </div>
            <div class="dropdown">
                <button class="dropbtn">موکل<i class="fa fa-caret-down"></i></button>
                <div class="dropdown-content">
                    <div class="header" style="background-color: deepskyblue">
                        <h2>موکل</h2>
                    </div>
                    <div class="row">
                        <div class="column">
                            <h3>Category 1</h3>
                            <a href="#">Link 1</a>
                            <a href="#">Link 2</a>
                            <a href="#">Link 3</a>
                        </div>
                        <div class="column">
                            <h3>Category 2</h3>
                            <a href="#">Link 1</a>
                            <a href="#">Link 2</a>
                            <a href="#">Link 3</a>
                        </div>
                        <div class="column">
                            <h3>Category 3</h3>
                            <a href="#">Link 1</a>
                            <a href="#">Link 2</a>
                            <a href="#">Link 3</a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="dropdown">
                <button class="dropbtn">مدیریت<i class="fa fa-caret-down"></i></button>
                <div class="dropdown-content">
                    <div class="header" style="background-color: forestgreen">
                        <h2>مدیریت</h2>
                    </div>
                    <div class="row">
                        <div class="column">
                            <h3>Category 1</h3>
                            <a href="#">Link 1</a>
                            <a href="#">Link 2</a>
                            <a href="#">Link 3</a>
                        </div>
                        <div class="column">
                            <h3>Category 2</h3>
                            <a href="#">Link 1</a>
                            <a href="#">Link 2</a>
                            <a href="#">Link 3</a>
                        </div>
                        <div class="column">
                            <h3>Category 3</h3>
                            <a href="#">Link 1</a>
                            <a href="#">Link 2</a>
                            <a href="#">Link 3</a>
                        </div>
                    </div>
                </div>
            </div>
            <a href="#news">خروچ</a>
        </div>

    </div>
</body>
</html>
