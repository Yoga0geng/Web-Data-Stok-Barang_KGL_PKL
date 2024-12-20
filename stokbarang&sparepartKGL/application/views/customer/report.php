<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title><?= $title ?></title>
    <link href="<?= base_url('sb-admin') ?>/css/sb-admin-2.min.css" rel="stylesheet">
</head>

<body>
    <div class="row">
        <div class="col text-center">
            <h3 class="h3 text-dark"><?= $title ?></h3>
        </div>
    </div>
    <hr>
    <div class="row">
        <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
            <thead>
                <tr>
                    <td width="20px">No</td>
                    <td>Kode Barang</td>
                    <td>Nama Barang</td>
                    <td>Banyaknya Barang</td>
                    <td>Keterangan</td>
                    <td>Tanggal</td>
                </tr>
            </thead>
            <tbody>
                <?php foreach ($all_customer as $customer): ?>
                <tr>
                    <td><?= $no++ ?></td>
                    <td><?= $customer->kode ?></td>
                    <td><?= $customer->nama ?></td>
                    <td><?= $customer->telepon ?></td>
                    <td><?= $customer->email ?></td>
                    <td><?= $customer->alamat ?></td>
                </tr>
                <?php endforeach ?>
            </tbody>
        </table>
    </div>
</body>

</html>