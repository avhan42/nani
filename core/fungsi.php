<?php 

// Menambah Data Kriteria
function saveKriteria($nama,$attribut,$bobot){
    include("config.php");
    $query = "INSERT INTO kriteria (nama_kriteria,attribut,bobot) VALUES ('$nama','$attribut','$bobot') ";
    $save = mysqli_query($con,$query);
    
    if(!$save){
        echo "Gagal Menambah Data Kriteria";
        exit();
    }
}

// Menghapus Data Kriteria
function delKriteria($id){
    include("config.php");
    // Menghapus Record Kriteria
    $query = "DELETE FROM kriteria WHERE id_kriteria=$id ";
    mysqli_query($con, $query);
}

// Mengupdate Data Kriteria
function updateKriteria($id,$nama,$attribut,$bobot){
    include("config.php");
    // Update record Kriteria
    $query = "UPDATE kriteria SET nama_kriteria='$nama', attribut='$attribut', bobot='$bobot' WHERE id_kriteria='$id' ";
    mysqli_query($con, $query);
}

// Menyimpan Data Guru
function SaveGuru($nama,$nip,$jabatan){
    include('config.php');
    // Simpan record Guru
    $query = "INSERT INTO guru (nama_guru,nip,jabatan) VALUES ('$nama','$nip','$jabatan') ";
    mysqli_query($con,$query);
}

// Update Data Guru
function updateGuru($id,$nama,$nip,$jabatan){
    include("config.php");
    // Update Record Guru
    $query = "UPDATE guru SET nama_guru='$nama',nip='$nip',jabatan='$jabatan' WHERE id_guru='$id' ";
    mysqli_query($con,$query);
}
// Hapus Data Guru
function deleteGuru($id){
    include("config.php");
    // Hapus Record Data Guru
    $query = "DELETE FROM guru WHERE id_guru=$id";
    mysqli_query($con,$query);
}
// Simpan Nilai Guru
function saveNilai($nama,$kriteria,$sub,$nilai){
    include("config.php");
    // Simpan Record Data Nilai
    $query = "INSERT INTO nilai (id_guru,id_kriteria,id_subkriteria,nilai) VALUES ('$nama','$kriteria','$sub','$nilai')";
    mysqli_query($con,$query);
}
// Update Nilai Guru
function updateNilai($id,$nama,$kriteria,$sub,$nilai){
    include("config.php");
    // Update Record Data Nilai
    $query = "UPDATE nilai SET id_guru='$nama',id_kriteria='$kriteria',id_subkriteria='$sub',nilai='$nilai' WHERE id_nilai=$id ";
    mysqli_query($con,$query);
}
// Hapus Nilai Guru
function deleteNilai($id){
    include("config.php");
    // Hapus Record NIlai Guru
    $query = "DELETE FROM nilai WHERE id_nilai=$id";
    mysqli_query($con,$query);
}
// Simpan Rangking
function saveRangking($id_g,$rank){
    include("config.php");
    // Simpan record Rangking
    $query = "INSERT INTO rangking (id_guru,nilai_rangking) VALUES ('$id_g','$rank')";
    mysqli_query($con,$query);
}
function saveSubKriteria($kriteria,$namasub,$nilai,$ket)
{
    include("config.php");
    $query = "INSERT INTO sub_kriteria (id_kriteria,nama_subkriteria,nilai,keterangan) VALUES ('$kriteria','$namasub','$nilai','$ket')";
    mysqli_query($con, $query);
}
function  updateSubKriteria($id,$kriteria,$namasub,$nilai,$ket)
{
    include("config.php");

    $query = "UPDATE sub_kriteria SET id_kriteria='$kriteria', nama_subkriteria='$namasub',nilai='$nilai',keterangan='$ket' WHERE id_subkriteria=$id ";
    mysqli_query($con, $query);
}
function delSubKriteria($id)
{
    include('config.php');
    $query = "DELETE FROM sub_kriteria WHERE id_subkriteria=$id ";
    mysqli_query($con,$query);
}