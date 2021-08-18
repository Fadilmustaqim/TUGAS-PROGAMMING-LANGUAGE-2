<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <?php
    include 'koneksi.php';
    $id = $_POST['id'];
    $NPM = $_POST['NPM'];
    $NAMA = $_POST['NAMA'];

    $data = mysqli_query ($koneksi,"UPDATE tb_mahasiswa_pl2 SET NPM='$NPM', NAMA='$NAMA' WHERE id='$id'");
    header("location:latihan1.php");

    ?>
</body>
</html>