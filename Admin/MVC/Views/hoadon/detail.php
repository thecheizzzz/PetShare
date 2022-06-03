<?php if(isset($data) and $data != null){ ?>
<a href="?mod=hoadon&act=xetduyet&id=<?= $data['0']['MaHD'] ?>" class="btn btn-success">Duyệt hóa đơn</a>
<a href="?mod=hoadon&act=delete&id=<?= $data['0']['MaHD'] ?>" onclick="return confirm('Bạn có thật sự muốn xóa ?');" type="button" class="btn btn-danger">Xóa</a>
<?php } ?>
<?php if (isset($_COOKIE['msg'])) { ?>
    <div class="alert alert-success">
        <strong>Thông báo</strong> <?= $_COOKIE['msg'] ?>
    </div>
<?php } ?>
<hr>
<table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
    <thead>
        <tr>
            <th scope="col">Mã hóa đơn</th>
            <th scope="col">Tên thú cưng</th>
            <th scope="col">Địa chỉ</th>
            <th scope="col">Số điện thoại</th>
            <th scope="col">Người mượn</th>
        </tr>
    </thead>
    <tbody>
        <?php foreach ($data as $row) { ?>
            <tr>
                <td><?= $row['MaHD'] ?></td>
                <td><?= $row['TenSP'] ?></td>
                <td><?= $row['DiaChi'] ?> </td>
                <td><?= $row['SDT'] ?></td>
                <td><?= $row['NguoiNhan'] ?></td>
            </tr>
        <?php } ?>
</table>
<script>
    $(document).ready(function() {
        $('#dataTable').DataTable();
    });
</script>