<?php 
include("template/headers.php");
include("core/config.php");
include("core/fungsi.php");

$query = "SELECT * FROM sub_kriteria,kriteria WHERE sub_kriteria.id_kriteria=kriteria.id_kriteria";
$result = mysqli_query($con,$query);



?>

  <main id="main" class="main">

    <div class="pagetitle">
      <h1>Data Sub Kriteria</h1>
      <hr style="height:5px;">
      
    </div><!-- End Page Title -->

    <a href="tambah_subkriteria.php" class="btn btn-primary mb-3"><i class="bi bi-plus"></i> Tambah Data Sub Kriteria</a>
    <section class="section">
      <div class="row">
        <div class="col-lg-12">

          <div class="card">
            <div class="card-body">
            
              <!-- Table with stripped rows -->
              <table class="table datatable">
                <thead>
                  <tr>
                    <th scope="col">No</th>
                    <th scope="col">Kriteria</th>
                    <th scope="col">Nama Sub Kriteria</th>
                    <th scope="col">Nilai</th>
                    <th scope="col">Keterangan</th>
                    <th scope="col">Aksi</th>

                  </tr>
                </thead>
                <tbody>
                  <?php 
                    $no= 1;
                  foreach($result as $row): 
                    ?>
                  <tr>
                    <th scope="row"><?= $no++; ?></th>
                    <td><?= $row['nama_kriteria']; ?></td>
                    <td><?= $row['nama_subkriteria']; ?></td>
                    <td><?= $row['nilai']; ?></td>
                    <td><?= $row['keterangan']; ?></td>
                    <td>
                      <form action="fsubkriteria.php" method="post">
                        <input type="hidden" name="id_subkriteria" value="<?= $row['id_subkriteria']; ?>">
                        <a href="edit_subkriteria.php?id=<?=$row['id_subkriteria']; ?>" class="btn btn-warning btn-sm " name="edit"><i class="bi bi-pencil"></i></a> | <button  class="btn btn-danger btn-sm" name="delete"><i class="bi bi-trash"></i></button>
                      </form>
                      </td>
                    </tr>
                  <?php endforeach; ?>
                 
                </tbody>
              </table>
              <!-- End Table with stripped rows -->

            </div>
          </div>

        </div>
      </div>
    </section>

  </main><!-- End #main -->

  <!-- ======= Footer ======= -->
  

  <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

  <!-- Vendor JS Files -->
  <script src="assets/vendor/apexcharts/apexcharts.min.js"></script>
  <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="assets/vendor/chart.js/chart.min.js"></script>
  <script src="assets/vendor/echarts/echarts.min.js"></script>
  <script src="assets/vendor/quill/quill.min.js"></script>
  <script src="assets/vendor/simple-datatables/simple-datatables.js"></script>
  <script src="assets/vendor/tinymce/tinymce.min.js"></script>
  <script src="assets/vendor/php-email-form/validate.js"></script>

  <!-- Template Main JS File -->
  <script src="assets/js/main.js"></script>

</body>

</html>