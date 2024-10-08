<?php
include('koneksi.php');
 
if(isset($_SESSION['login_user'])){
header("location: about.php");
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Sistem Pakar</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <link rel="stylesheet" href="css/style.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>

<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
      </ul>
      <ul class="nav navbar-nav navbar-right">
      </ul>
    </div>
  </div>
</nav>
  
<div class="container-fluid text-center">    
  <div class="row content">
    <div class="col-sm-2 sidenav">
      <p><a href="homeadmin.php"><button type="button" class="btn btn-primary btn-block" style="background-color: #228B22; color: #FFFFFF;">BERANDA</button></a></p>
      <p><a href="hamadanpenyakit.php"><button type="button" class="btn btn-primary btn-block active" style="background-color: #228B22; color: #FFFFFF;">HAMA dan PENYAKIT</button></a></p>
      <p><a href="gejala.php"><button type="button" class="btn btn-primary btn-block" style="background-color: #228B22; color: #FFFFFF;">GEJALA</button></a></p>
      <p><a href="basispengetahuan.php"><button type="button" class="btn btn-primary btn-block" style="background-color: #228B22; color: #FFFFFF;">BASIS PENGETAHUAN</button></a></p>
      <br><br><br><br><br><br><br><br><br><br>
      <p><a href="logout.php"><button type="button" class="btn btn-primary btn-block" style="background-color: #228B22; color: #FFFFFF;" id="myBtn">LOGOUT</button></a></p>
    </div>
    <div class="col-sm-8 text-left"> 
      <h2 class="text-center">DETAIL HAMA DAN PENYAKIT</h2>
      <div class="form-group">
        <br><label class="control-label col-sm-2">ID :</label>
        <div class="col-sm-10">
          <?php
            $tampil = "SELECT * FROM penyakit WHERE idpenyakit='".$_GET['id']."'";
            $sql = mysqli_query($konek_db, $tampil);
            while ($data = mysqli_fetch_array($sql)) {
              echo "<input type='text' class='form-control' id='idpenyakit' readonly value='".$data['idpenyakit']."'><br>";
            }
          ?>
        </div>
      </div>	
      <div class="form-group">
        <br><label class="control-label col-sm-2">NAMA :</label>
        <div class="col-sm-10">
          <?php
            $tampil = "SELECT * FROM penyakit WHERE idpenyakit='".$_GET['id']."'";
            $sql = mysqli_query($konek_db, $tampil);
            while ($data = mysqli_fetch_array($sql)) {
              echo "<input type='text' class='form-control' id='namapenyakit' readonly value='".$data['namapenyakit']."'><br>";
            }
          ?>
        </div>
      </div>
      <div class="form-group">
        <br><label class="control-label col-sm-2">JENIS :</label>
        <div class="col-sm-10">
          <?php
            $tampil = "SELECT * FROM penyakit WHERE idpenyakit='".$_GET['id']."'";
            $sql = mysqli_query($konek_db, $tampil);
            while ($data = mysqli_fetch_array($sql)) {
              echo "<input type='text' class='form-control' id='jenistanaman' readonly value='".$data['jenistanaman']."'><br>";
            }
          ?>
        </div>
      </div>	
      <div class="form-group">
        <br><label class="control-label col-sm-2">GEJALA :</label>
        <div class="col-sm-10">
        <?php
            $tampil = "SELECT b.gejala FROM penyakit p JOIN basispengetahuan b ON p.namapenyakit=b.namapenyakit WHERE p.idpenyakit='".$_GET['id']."'";
            $sql = mysqli_query($konek_db, $tampil);
            while ($data = mysqli_fetch_array($sql)) {
              echo "<textarea rows='4' class='form-control' id='gejala' readonly>".$data['gejala']."</textarea><br>";
            }
          ?>
        </div>
      </div>	
      <div class="form-group">
        <br><label class="control-label col-sm-2">KULTUR TEKNIS :</label><br>
        <div class="col-sm-10">
          <?php
            $tampil = "SELECT * FROM penyakit WHERE idpenyakit='".$_GET['id']."'";
            $sql = mysqli_query($konek_db, $tampil);
            while ($data = mysqli_fetch_array($sql)) {
              echo "<textarea rows='8' class='form-control' id='penanganan' readonly>".$data['kulturteknis']."</textarea><br>";
            }
          ?>
        </div>  
      </div>
      <div class="form-group">
        <br><label class="control-label col-sm-2">FISIK MEKANIS :</label><br>
        <div class="col-sm-10">
          <?php
            $tampil = "SELECT * FROM penyakit WHERE idpenyakit='".$_GET['id']."'";
            $sql = mysqli_query($konek_db, $tampil);
            while ($data = mysqli_fetch_array($sql)) {
              echo "<textarea rows='8' class='form-control' id='penanganan' readonly>".$data['fisikmekanis']."</textarea><br>";
            }
          ?>
        </div>  
      </div>
      <div class="form-group">
        <br><label class="control-label col-sm-2">KIMIAWI :</label><br>
        <div class="col-sm-10">
          <?php
            $tampil = "SELECT * FROM penyakit WHERE idpenyakit='".$_GET['id']."'";
            $sql = mysqli_query($konek_db, $tampil);
            while ($data = mysqli_fetch_array($sql)) {
              echo "<textarea rows='8' class='form-control' id='penanganan' readonly>".$data['kimiawi']."</textarea><br>";
            }
          ?>
        </div>  
      </div>
      <div class="form-group">
        <br><label class="control-label col-sm-2">HAYATI :</label><br>
        <div class="col-sm-10">
          <?php
            $tampil = "SELECT * FROM penyakit WHERE idpenyakit='".$_GET['id']."'";
            $sql = mysqli_query($konek_db, $tampil);
            while ($data = mysqli_fetch_array($sql)) {
              echo "<textarea rows='8' class='form-control' id='penanganan' readonly>".$data['hayati']."</textarea><br>";
            }
          ?>
        </div>  
      </div>
    </div>
  </div>
</div>
<footer class="container-fluid text-center">
  <p>S1 Teknik Informatika 2024</p>
</footer>
<script>
$(document).ready(function(){
    $("#myBtn").click(function(){
        $("#myModal").modal();
    });
});
</script>

</body>
</html>