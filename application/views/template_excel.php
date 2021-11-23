<?php 

$a = date('dmY').$laporan.".xls";

header("Content-type: application/octet-stream");

// header("Content-Type: application/vnd.openxmlformats-officedocument.spreadsheetml.sheet");

header('Content-Disposition: attachment; filename= "'.$a.'"');

header("Pragma: no-cache");

header("Expires: 0");

header('Cache-Control: must-revalidate');
header('Content-Length: ' . filesize($a));
readfile($a);

?>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title></title>
</head>
<body>

<?= $konten ?>

</body>
</html>