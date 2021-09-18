<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <center>
    <h4>Halaman Detail Siswa</h4>
        <table border = "1">
            <tr>
                <th>ID PEMBAYARAN</th>
                <th>ID PETUGAS</th>
                <th>NISN</th>
                <th>TANGGAL BAYAR</th>
                <th>BULAN BAYAR</th>
                <th>TAHUN BAYAR</th>
                <th>ID SPP</th>
                <th>JUMLAH BAYAR</th>
            </tr>
            <?php
            $nisn= $_POST['nisn'];
        
            if($nisn == ""){
                    header("location:view_siswa.php?nisn=kosong");
                }else{
                ?>
                <tr>
                    <?php    
                    include 'Database.php';
                    $data = mysqli_query ($koneksi,"SELECT * FROM latihan_pembayaran where nisn='$nisn'");
                    while($d=mysqli_fetch_array($data)){
                    ?>
                    <td><?php echo $d['id_pembayaran']; ?></td>
                    <td><?php echo $d['id_petugas']; ?></td>
                    <td><?php echo $nisn; ?></td>
                    <td><?php echo $d['tgl_bayar']; ?></td>
                    <td><?php echo $d['bulan_bayar']; ?></td>
                    <td><?php echo $d['tahun_bayar']; ?></td>
                    <td><?php echo $d['id_spp']; ?></td> 
                    <td><?php echo $d['jumlah_bayar']; ?></td>
                </tr>
            <?php
            }
        }
        ?>
                
        </table>
        <p><a href="view_pembayaran.php">Kembali</a></p>
        </center>
</body>
</html>