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
    $id = $_GET['id'];
    $data = mysqli_query ($koneksi, "DELETE FROM tb_mahasiswa_pl2 WHERE id ='$id'");
    header("location:latihan1.php?pesan=hapus");
    ?>

</body>
</html>