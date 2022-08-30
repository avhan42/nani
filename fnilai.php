<?php
include("core/config.php");
include("core/fungsi.php");

// Jika tombol simpan di klik
if(isset($_POST['simpan'])){
    $nama       = $_POST['nama_guru'];
    $kriteria   = $_POST['kriteria'];
    // $sub        = $_POST['subkriteria'];
    $nilai      = $_POST['nilai'];

    // Simpan data nilai 
    saveNilai($nama,$kriteria,$nilai);
    header("location: nilai_guru.php");
}
// Jika Tombol update di klik
if(isset($_POST['update'])){
    $id         = $_POST['id_nilai'];
    $nama       = $_POST['nama_guru'];
    $kriteria   = $_POST['kriteria'];
    $sub = $_POST['subkriteria'];
    $nilai      = $_POST['nilai'];
    // Update Data Nilai
    updateNilai($id,$nama,$kriteria,$sub,$nilai);
    header("location: nilai_guru.php");
}
// Jika Tombol Delete di klik
if(isset($_POST['delete'])){
    $id = $_POST['id'];
    deleteNilai($id);
    header("location: nilai_guru.php");
}