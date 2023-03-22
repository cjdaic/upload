<!doctype html public "-//w3c//dtd html 4.0 transitional//en">
<html>
<head>
   <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title>AliYun Server</title>
<link type="text/css" rel="stylesheet" href="styles/style.css" charset="utf-8"/>
</head>
<body>
<a href="website.html">Useful Websites</a> <p>

<a href="traffic.html">Vpn Traffics</a> <p>
<a href="webgl.html">WebGL_point</a> <p>
<a href="webgl-triangle.html">WebGL_三角形</a> <p>
<a href="webgl_ani.html">WebGL_三角形动画</a> <p>
<a href="js-ani.html">JS_动画</a> <p>
<a href="js-ani1.html">JS_动画ripple</a> <p>
<a href="WebGL/sdk/demos/google/san-angeles/index.html">JS_动画test</a> <p>
<a href="WebGL/sdk/demos/webkit/WebGL+CSS.html">JS_动画test_spinning_box</a> <p>
<a href="https://sandspiel.club">relax yourself</a> <p>

<font size=-1>last update: 2021-3-19 </font>
<br>
<?php
echo "<pre>";
echo "Hello World!\n";
exec('ls /etc',$results,$ret);
echo "> ls /etc\n";
for ($i=1; $i<=10; $i++)
{
    echo $i." $results[$i]"."\n";
}
//echo  $results[0]."\n";
//echo  $results[12]."\n";
//echo  $results[3]."\n";
echo  $ret;
?>

<form action="1.php" method="post">
   the directory:<br>
   <input type="text" name="fname" value="fname">
   <br>
   <input type="submit" value="Submit">
</form> 

</body>
</html>
