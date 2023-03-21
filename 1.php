<?php
echo "<pre>";
echo "Hello World!\n";
//exec('ls /etc',$results,$ret);
echo "ls ".$_POST['fname']."\n";
$a=$_POST['fname'];
echo "$a\n";
exec("ls $a",$results,$ret);
//echo "ls $_POST['fname']\n";
for ($i=1; $i<=10; $i++)
{
    echo $i." $results[$i]"."\n";
}
//echo  $results[0]."\n";
//echo  $results[12]."\n";
//echo  $results[3]."\n";
//echo  $ret;
?>
