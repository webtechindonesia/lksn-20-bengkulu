<?php 
$font = "Allura-Regular.otf";
$gbr = imagecreate(200, 50);
imagepng($gbr);
imagettftext($gbr, 90, 90, 8+15*10, 100, 255, $font, '80990709');
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <img src="captcha.php" alt="">
</body>
</html>