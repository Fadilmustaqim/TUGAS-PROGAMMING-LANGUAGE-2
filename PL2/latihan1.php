<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
<h1>Daftar Mahasiswa</h1>

    <table border = "1">
        <tr>
            <th>id</th>
            <th>NPM</th>
            <th>NAMA</th>
        </tr>
        <?php
            include 'koneksi.php';
            $data = mysqli_query ($koneksi,"SELECT * FROM tb_mahasiswa_pl2");
            while($d=mysqli_fetch_array($data)){
                ?>
            <tr>
                <td><?php echo $d['id']; ?></td>
                <td><?php echo $d['NPM']; ?></td>
                <td><?php echo $d['NAMA']; ?></td>
                <td>
                <a href="latihan3.php?id=<?php echo $d['id']?>">Update</a>
                <a href="latihan4.php?id=<?php echo $d['id']?>">Delete</a>
                </td>     
            </tr>

            <?php
            }
        ?>
        <button><a href="latihan2.php?id=<?php ?>">TAMBAH DATA</a></button>
    </table>
</body>
</html>



