<?php
require_once("model.php");
class Hoadon extends Model
{
    var $table = "hoadon";
    var $contens = "MaHD";
    function trangthai($id){
        $query = "select * from HoaDon where TrangThai = $id  ORDER BY MaHD DESC";

        require("result.php");

        return $data;
    }
    function chitiethoadon($id){
        $query = "select hoadon.MaHD, hoadon.NguoiNhan, sanpham.TenSP, hoadon.DiaChi, hoadon.SDT from sanpham, hoadon, chitiethoadon where chitiethoadon.MaSP=sanpham.MaSP and chitiethoadon.MaHD=hoadon.MaHD and hoadon.MaHD=$id";

        require("result.php");
        
        return $data;
    }
}