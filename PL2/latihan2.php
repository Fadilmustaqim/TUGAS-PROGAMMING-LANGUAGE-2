<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <h1>Input Mahasiswa</h2>

    <?php
        include 'koneksi.php';  
        if(isset($_POST['proses']))
            {
                $data=mysqli_query($koneksi,"INSERT INTO tb_mahasiswa_pl2 VALUES(
                    '".$_POST['id']."',
                    '".$_POST['NPM']."',
                    '".$_POST['NAMA']."')");
                header('location:latihan1.php');
            }
    ?>

    <form action="" method="POST">
    <p>Input NPM</p>       
    <input type="text" name="NPM">
    <P>Input NAMA</P>
    <input type="text" name="NAMA"> <br><br>
    <input type="submit" name="proses" value="Simpan">
    </form><br>
    <button><a href="latihan1.php?id=<?php ?>">KEMBALI</a></button>
</body>
</html>