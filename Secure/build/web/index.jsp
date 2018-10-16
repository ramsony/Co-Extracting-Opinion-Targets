<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title></title>
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
                    <li class="active"><a href="index.jsp">Home</a></li>
                    <li><a href="alogin.jsp">Admin</a></li>
                    <li><a href="ulogin.jsp">User</a></li>
                </ul>
            </div><br />
            <div class="abstract"><br/>
                <h1 style="margin: 5px;color: white">Abstract :</h1><br>  
                <p style="text-align: justify;margin: 15px;font-size: 19px;margin-top: -10px;color: white">
                                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                 Mining opinion targets and opinion words from online reviews are important tasks for fine-grained 
                                 opinion mining, the key component of which involves detecting opinion relations among words. To this 
                                 end, this paper proposes a novel approach based on the partially-supervised alignment model, which 
                                 regards identifying opinion relations as an alignment process. Then, a graph-based co-ranking 
                                 algorithm is exploited to estimate the confidence of each candidate. Finally, candidates with 
                                 higher confidence are extracted as opinion targets or opinion words. Compared to previous methods
                                 based on the nearest-neighbor rules, our model captures opinion relations more precisely, especially 
                                 for long-span relations. Compared to syntax-based methods, our word alignment model effectively 
                                 alleviates the negative effects of parsing errors when dealing with informal online texts. 
                                 In particular, compared to the traditional unsupervised alignment model, the proposed model 
                                 obtains better precision because of the usage of partial supervision. In addition, when estimating 
                                 candidate confidence, we penalize higher-degree vertices in our graph-based co-ranking algorithm to
                                 decrease the probability of error generation. Our experimental results on three corpora with different
                                 sizes and languages show that our approach effectively outperforms state-of-the-art methods.
                </p>
            </div>
        </div> <!-- /container -->
        <div>
            <p style="margin-left: 600px;color: white">Copyright © 2015&nbsp;<a href="" style="text-decoration: none"></a></p>
        </div>
    </body>
</html>