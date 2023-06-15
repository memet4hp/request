<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <link rel="icon" href="<?php echo base_url(); ?>assets/foto/icon.png" type="image/gif">
    <!-- <title>Request | Hotline SMARTRI</title> -->
</head>

<style>
.content-wrapper {
    /* background: linear-gradient(#106391, #0093AD); */
    background-color: #2e7ba6;
}

.bold {
    font-weight: bold;
    margin-top: 10px;
}

.card-header2 {
    background-color: transparent;
    border-bottom: 1pxsolidrgba(0, 0, 0, .125);
    padding: 0.25rem 0.25rem;
    position: relative;
    border-top-left-radius: 1px;
    border-top-right-radius: 1px;
    margin-top: 20px;

    margin-left: 27px;
    margin-right: 27px;
    background-color: #106391;
    color: white;
}

.ket {
    font-size: 12px;
}

#content1::after {}

.select2-container--bootstrap .select2-results__option[aria-disabled=true] {
    display: none;
}
</style>

<?php
echo form_open_multipart('order/add', 'role="form" class="form-horizontal"');
?>

<div class="container">
    <section class="content">
        <div class="form-row2">

            <div class="form-group col-sm-7 mx-auto">
                <div class="card">


                    <div class="card-header2">
                        <h3 class="judul  ">Formulir Perbaikan dan Perawatan</h3>
                    </div>
                    <div class="card-body">
                        <div class="form-row">
                            <div class="form-group col-sm-12 bold">Identitas Peminta</div>

                            <div class="form-group col-sm-6">
                                <h7>NIK *</h7>
                                <select class="form-control select2" id="pilihnik" name="nik_peminta" required>
                                    <option value="">Silahkan Masukkan NIK</option>
                                    <?php foreach ($nik as $cat) : ?>
                                    <option value="<?php echo $cat->nik; ?>"> <?php echo $cat->nik; ?></option>
                                    <?php endforeach; ?>
                                </select>
                            </div>
                            <div class="form-group col-sm-6">
                                <h7>Nama Lengkap *</h7>
                                <input type="text" class="form-control" name="nama_peminta" id="nama"
                                    placeholder="Silahkan Masukkan NIK" readonly="readonly" required />
                            </div>
                            <div class="form-group col-sm-6">
                                <h7>Section *</h7>
                                <input type="text" class="form-control" name="section_peminta" id="section"
                                    placeholder="Silahkan Masukkan NIK" readonly="readonly" required />
                            </div>
                            <div class="form-group col-sm-6">
                                <h7>Department *</h7>
                                <input type="text" class="form-control" name="department_peminta" id="department"
                                    placeholder="Silahkan Masukkan NIK" readonly="readonly" required />
                            </div>
                            <div class="form-group col-sm-6">
                                <h7>No. HP</h7>
                                <input type="text" class="form-control" name="hp_peminta" placeholder="">
                            </div>


                            <div class="form-group col-sm-12 bold">Pelaksaan Lapangan</div>

                            <div class="form-group col-sm-6">

                                <h7>Tanggal Pemeriksaan *</h7>
                                <input type="date" value="<?php echo date('Y-m-d') ?>" class="form-control"
                                    name="tanggal_pemeriksaan" required />
                            </div>


                            <div class="form-group col-sm-6">
                                <h7>Kategori Volume Kerja</h7>
                                <select class="form-control" name="kategori_volume_kerja" required /> </b>
                                <option value="">Pilih Kategori</option>
                                <option value="Ringan">Ringan</option>
                                <option value="Sedang">Sedang</option>
                                <option value="Berat">Berat</option>
                                <option value="External">External</option>
                                </select>
                            </div>

                            <div class="form-group col-sm-6">
                                <h7>Estimasi Waktu Pengadaan Material *</h7>
                                <input type="number" name="estimasi_waktu_pengadaan_material" class="form-control"
                                    required />
                            </div>

                            <div class="form-group col-sm-12">
                                <div id="content1">
                                    <h7>Tanggal Mulai Dikerjakan *</h7>
                                </div>
                                <i class="ket">Tanggal Pemeriksaan + Estimasi Waktu Pengadaan Material </i>
                                <input type="date" class="form-control" name="tanggal_pemeriksaan" required />
                            </div>

                            <div class="form-group col-sm-12">
                                <div id="content1">
                                    <h7>Estimasi Waktu Hari Pengerjaan *</h7>
                                </div>
                                <i class="ket">Kategori Volume Kerja + Estimasi Waktu Pengadaan Material </i>
                                <input type="number" name="estimasi_waktu_pengadaan_material" class="form-control"
                                    required />
                            </div>

                            <div class="form-group col-sm-12">
                                <div id="content1">
                                    <h7>Tanggal Estimasi Selesai *</h7>
                                </div>
                                <i class="ket">Estimasi Waktu (hari) pengerjaan + Tanggal Mulai Dikerjakan </i>
                                <input type="date" class="form-control" name="tanggal_pemeriksaan" required />
                            </div>
                        </div>

                        <div class="form-row2 ">
                            <div class="form-group col-sm-12">
                                <label class="form-check-label ">
                                    <input type='radio' name="terms" value="agree" id="agree" required>
                                    <h7 style="font-weight: bold ; text-align:justify; ">Data yang diberikan diatas
                                        adalah hal yang sebenarnya. </h7>
                                </label>
                                <input type='radio' name="terms" value="not_agree" id="not_agree" hidden checked>
                                </h7>
                            </div>
                            <div class="col-sm-3 ">
                                <button type="submit" id="submit" name="simpan"
                                    class="btn btn-info btn-block  ">Order</button>

                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </div>
</div>
</div>
</form>


<script type="text/javascript" src="<?php echo base_url(); ?>assets/ckeditorfullcustom/ckeditor.js"></script>
<script type="text/javascript" src="<?php echo base_url(); ?>assets/ckeditorfullcustom/adapters/jquery.js"></script>

<script type="text/javascript">
$('textarea.texteditor').ckeditor();
</script>

<script type="text/javascript" src="<?php echo base_url(); ?>assets/ckeditorfullcustom/ckeditor.js"></script>
<script type="text/javascript" src="<?php echo base_url(); ?>assets/ckeditorfullcustom/adapters/jquery.js"></script>

<script type="text/javascript">
$('textarea.texteditor').ckeditor();
</script>
<script>
$(function() {
    $("#datepicker").datepicker();
});

$(document).ready(function() {
    $('#mySelect').select2({
        matcher: matchCustom
    });
});

$(function() {
    var btnSubmit = $('#submit');
    btnSubmit.attr('disabled', 'disabled');
    $('input[name=terms]').change(function(e) {
        if ($(this).val() == 'agree') {
            btnSubmit.removeAttr('disabled');
        } else {
            btnSubmit.attr('disabled', 'disabled');
        }
    });
});

$("#pilihnik").select2().on('change', function() {

    var agt = $(this).val();
    $.ajax({
        url: "<?php echo base_url() ?>Order/search_nik",
        type: "POST",
        data: {
            "id": agt
        },
        cache: false,
        success: function(huh) {
            $("#nama").val(huh);
        }
    })
})

$("#pilihnik").select2().on('change', function() {
    var agt = $(this).val();
    $.ajax({
        url: "<?php echo base_url() ?>Order/search_section",
        type: "POST",
        data: {
            "id": agt
        },
        cache: false,
        success: function(huh) {
            $("#section").val(huh);
        }
    })
})

$("#pilihnik").select2().on('change', function() {
    var agt = $(this).val();
    $.ajax({
        url: "<?php echo base_url() ?>Order/search_department",
        type: "POST",
        data: {
            "id": agt
        },
        cache: false,
        success: function(huh) {
            $("#department").val(huh);
        }
    })
})

$("#pilihsectionpermintaan").select2().on('change', function() {
    var agt = $(this).val();
    $.ajax({
        url: "<?php echo base_url() ?>Order/search_sectionpermintaan",
        type: "POST",
        data: {
            "id": agt
        },
        cache: false,
        success: function(huh) {
            $("#sectionpermintaan").val(huh);
        }
    })
})
</script>

<script>
$("body").on("click", "remove-data", function(e) {
    e.preventDefault();
    var targetUrl = $(this).attr("href");
    var id = $(this).attr("data-id");
    swal({
        title: 'Hapus Data?',
        // text: "Permanently!",
        type: 'warning',
        icon: 'warning',
        width: 500,
        dangerMode: true,

        buttons: {
            cancel: 'Batal',
            delete: 'Hapus'
        }
    }).then(function(willDelete) {
        if (willDelete) {
            var postData = {};
            postData["id"] = id;
            $.post(targetUrl, postData, function(willDelete) {
                swal("Success!", {
                    icon: "success",
                }).then(function() {
                    location.reload();
                });
            });
        }
    });
});
</script>