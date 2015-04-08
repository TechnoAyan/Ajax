<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="Default2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>How to Resize Text Using jQuery</title>
    <style type="text/css">
        html
        {
            font-size: 1em;
            font-family: Arial, Helvetica, sans-serif;
            color: #FFCC99;
        }
        body
        {
            background-color: #CC99CC;
        }
        .pixels
        {
            font-size: 16px;
            line-height: 30px;
            margin-bottom: 20px;
            padding: 20px;
            background-color: #666000;
        }
        .point
        {
            font-size: 12pt;
            line-height: 30px;
            margin-bottom: 20px;
            padding: 20px;
            background-color: #666000;
        }
        .em
        {
            font-size: 1em;
            margin-bottom: 20px;
            padding: 20px;
            background-color:#666000;
        }
        .percentage
        {
            font-size: 100%;
            margin-bottom: 20px;
            padding: 20px;
            background-color:#666000;
        }
        .undefined
        {
            margin-bottom: 20px;
            padding: 20px;
            background-color: #666000;
        }
        #changeFont
        {
            position: absolute;
            top: 10px;
            right: 10px;
            background-color:#339966;
            padding: 5px;
        }
        .increaseFont, .decreaseFont, .resetFont
        {
            color: white;
            font-size: 14px;
            float: left;
            margin: 10px;
        }
    </style>
    <script type="text/javascript" src="Scripts/jquery-1.4.1.min.js"></script>
    <script type="text/javascript" src="Scripts/Jquery.js"></script>
    <script type="text/javascript" language="javascript">
        $(document).ready(function () {
            // Reset Font Size
            var originalFontSize = $('html').css('font-size');
            $(".resetFont").click(function () {
                $('html').css('font-size', originalFontSize);
            });
            // Increase Font Size
            $(".increaseFont").click(function () {
                var currentFontSize = $('html').css('font-size');
                var currentFontSizeNum = parseFloat(currentFontSize, 10);
                var newFontSize = currentFontSizeNum * 1.2;
                $('html').css('font-size', newFontSize);
                return false;
            });
            // Decrease Font Size
            $(".decreaseFont").click(function () {
                var currentFontSize = $('html').css('font-size');
                var currentFontSizeNum = parseFloat(currentFontSize, 10);
                var newFontSize = currentFontSizeNum * 0.8;
                $('html').css('font-size', newFontSize);
                return false;
            });
        });
    </script>
</head>
<body>
    <h1>
        A Sample Demo</h1>
    <div class="pixels">
        Hello and thank you for visiting the Mindcracker Network</div>
    <div class="point">
        The Mindcracker Network with its global headquarters in Philadelphia </div>
    <div class="em">
        PA was founded in 1999 with a single goal in mind - to provide an online platform for Information </div>
    <div class="percentage">
        Technology Professionals to exchange their knowledge and experience
      
    </div>
    <div class="undefined">
        by teaching and learning from one another by using various interactive online methods such as contributing articles,
    </div>
    <div id="changeFont">
        <a href="#" class="increaseFont">Increase</a> <a href="#" class="decreaseFont">Decrease</a>
        <a href="#" class="resetFont">Reset</a>
    </div>
</body>
</html>
