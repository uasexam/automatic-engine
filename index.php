<?php                                                                                                                                                
$link = mysqli_connect("172.18.0.2","root","test","trudb");
if (!$link){
echo "tidak bisa konek ke MySQL" . PHP_EOL;
exit;
}

$sql = "SELECT * FROM users";
$result = mysqli_query($link,$sql);

$count = 0;
if(mysqli_num_rows($result) > 0) {
	while ($row = mysqli_fetch_assoc($result)){
		$count += 1;
	}
}
else
{
	echo "empty";
}

echo "jumlah user:" . $count;

mysqli_close($link);
?>
