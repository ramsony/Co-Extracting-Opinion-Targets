<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Word Co-extraction</title>
        <meta name="description" content="">
        <meta name="author" content="templatemo">
        <link href="css/style.css" rel="stylesheet">
    </head>
    <body>
        <div id="container" class="container">
            <div style="width: 1200px;margin: 30px;color: white">
                <center><h1>Co-Extracting Opinion Targets and Opinion Words from Online Reviews Based on the Word Alignment Model</h1></center>
            </div>
            <div> 
                <ul class="nav nav-justified">
                    <li class="active"><a href="uview.jsp">Home</a></li>
                    <li><a href="udetails.jsp">Profile</a></li>
                    <li><a href="cartdetails.jsp">Cart</a></li>
                    <li><a href="search.jsp">Product Search</a></li>
                    <li><a href="index.jsp">Logout</a></li>
                </ul>
            </div><br />
            <div style="border:1px solid white;width: 1250px;height: 400px;margin-left: 30px;border-radius: 40px;background-color: white"><br />
                <img src="images/extract.png" width="400px"height="350px" style="margin: 5px;background: transparent"/>
                <div style="margin-top: -330px;background: #FFFFFF">
                    <center><h1 style="font-size: 40px;font-family: Times New Roman;color: blue">Extracting Opinion Targets <br>by Word Alignment</h1></center>
                    <center> <form action="sview.jsp" method="post">
                            <input type="text" name="focus" required class="search-box" placeholder="Enter Word Alignment" />
                            <button class="close-icon" type="reset"></button><br /><br />
                            <input type="submit" value="Seach" style="width: 120px;height: 30px;border-radius: 10px;background: transparent"/>
                        </form>
                    </center>
                </div> 
                <img src="images/extract.png" width="400px"height="360px" style="margin: 5px;background: transparent;float: right;margin-top: -290px;"/>
            </div>
        </div> <!-- /container -->
        <div>
            <p style="margin-left: 550px;color: red">Copyright © 2015&nbsp;<a href="" style="text-decoration: none;color: red"></a></p>
        </div>
    </body>
</html>