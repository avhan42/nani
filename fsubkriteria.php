<?php
include("core/config.php");
include("core/fungsi.php");

// cek Jika Tombol Simpan di tekan
if(isset($_POST['simpan'])){
    $kriteria   = $_POST['kriteria'];
    $namasub   = $_POST['namasub'];
    $nilai  = $_POST['nilai'];
    
    // Input Data ke dalam database
    saveSubKriteria($kriteria,$namasub,$nilai);
    header('location: data_sub_kriteria.php');
}

// Cek Jika Tombol delete di tekan 
if(isset($_POST['delete'])){
    $id = $_POST['id_crips'];

    // Hapus Record Data Kriteria
    delSubKriteria($id);
    header("location: data_sub_kriteria.php");
}

// Cek Jika Tombol Edit di tekan 
if(isset($_POST['edit'])){
    $id = $_POST['id'];
    $kriteria   = $_POST['kriteria'];
    $namasub   = $_POST['namasub'];
    $nilai  = $_POST['nilai'];
    // $ket  = $_POST['keterangan'];
    // Update record data kriteria
    updateSubKriteria($id,$kriteria,$namasub,$nilai);
    header("location: data_sub_kriteria.php"); 
}