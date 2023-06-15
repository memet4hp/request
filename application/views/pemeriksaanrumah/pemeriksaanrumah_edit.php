<style>
h7 {
    color: #000;
    font-size: 16px;
}
 
.row2 {
    display: -ms-flexbox;
    display: flex;
    -ms-flex-wrap: wrap;
    flex-wrap: wrap;
    margin-right: 0px;
    margin-left: 0px;

    padding-top: 10px;
}
 
</style>

<div class="page-header-titles">Pemeriksaan Petugas </div>

<div class="row">
    <div class="col-sm-5">
        <div class="card">

            <div class="card-body">

                <input type="text" value="<?php echo $data['id_order']; ?>" class="form-control" name="id_order"
                    hidden />
                <div class=" row2" style="background-color:  #6f6f67;">
                    <div class="col-sm-12">
                        <h6 style="text-align: center; color:white"> Detail Order
                        </h6>
                    </div>
                </div>

                <div class=" row2">
                    <div class="form-group col-sm-12 bold">Identitas Peminta</div>
                </div>
                <div class=" row2">
                    <div class="col-sm-4">
                        <h7>NIK</label>
                    </div>
                    <div class="col-sm-1">
                        <h7>:</label>
                    </div>
                    <div class="col-sm-7">
                        <h7> <?php echo $data['nik_peminta']; ?> </h7>
                    </div>
                </div>


                <div class=" row2">
                    <div class="col-sm-4">
                        <h7>Nama Lengkap</label>
                    </div>
                    <div class="col-sm-1">
                        <h7>:</label>
                    </div>
                    <div class="col-sm-7">
                        <h7> <?php echo $data['nama_peminta']; ?> </h7>
                    </div>
                </div>
                <div class=" row2">
                    <div class="col-sm-4">
                        <h7>Section</label>
                    </div>
                    <div class="col-sm-1">
                        <h7>:</label>
                    </div>
                    <div class="col-sm-7">
                        <h7> <?php echo $data['section_peminta']; ?> </h7>
                    </div>
                </div>
                <div class=" row2">
                    <div class="col-sm-4">
                        <h7>Department</label>
                    </div>
                    <div class="col-sm-1">
                        <h7>:</label>
                    </div>
                    <div class="col-sm-7">
                        <h7> <?php echo $data['department_peminta']; ?> </h7>
                    </div>
                </div>
                <div class=" row2">
                    <div class="form-group col-sm-12 bold">Detail Permintaan</div>
                </div>
                <div class=" row2">
                    <div class="col-sm-4">
                        <h7>Jenis Perbaikan</label>
                    </div>
                    <div class="col-sm-1">
                        <h7>:</label>
                    </div>
                    <div class="col-sm-7">
                        <h7> <?php echo $data['jenis_perbaikan']; ?> </h7>
                    </div>
                </div>
                <div class=" row2">
                    <div class="col-sm-4">
                        <h7>Alokasi</label>
                    </div>
                    <div class="col-sm-1">
                        <h7>:</label>
                    </div>
                    <div class="col-sm-7">
                        <h7> <?php echo $data['alokasi']; ?> </h7>
                    </div>
                </div>
                <div class=" row2">
                    <div class="col-sm-4">
                        <h7>Tanggal Order</label>
                    </div>
                    <div class="col-sm-1">
                        <h7>:</label>
                    </div>
                    <div class="col-sm-7">
                        <h7><?php echo tgl_biasa($data['tanggal_order']); ?></h7>
                    </div>
                </div>

                <div class=" row2">
                    <div class="col-sm-4">
                        <h7>Prioritas</label>
                    </div>
                    <div class="col-sm-1">
                        <h7>:</label>
                    </div>
                    <div class="col-sm-7">
                        <h7><?php echo $data['prioritas']; ?></h7>
                    </div>
                </div>

                <div class=" row2">
                    <div class="col-sm-4">
                        <h7>Detail Order</label>
                    </div>
                    <div class="col-sm-1">
                        <h7>:</label>
                    </div>
                    <div class="col-sm-7">
                        <h7><?php echo $data['detail_order']; ?></h7>
                    </div>
                </div>


            </div>
        </div>
    </div>

    <div class="col-sm-7">
        <div class="card">

            <div class="card-body">
                <?php
                echo form_open_multipart('pemeriksaanrumah/edit', 'role="form" class="form-horizontal"');
                ?>
                <input type="text" value="<?php echo $data['id_order']; ?>" class="form-control" name="id_order"
                    hidden />
                <div class=" row2" style="background-color: #106391;">
                    <div class="col-sm-12">
                        <h6 style="text-align: center; color:white"> Form Pemeriksaan Petugas
                        </h6>
                    </div>
                </div>

                <div class="form-row">
                   
                    <div class="form-group col-sm-6">
                        <h7>Tanggal Pemeriksaan *</h7>
                        <input type="date" value="<?php echo date('Y-m-d') ?>" class="form-control" name="tanggal_pemeriksaan" required />
                    </div>
                    <!-- <div class="form-group col-sm-6">
                        <h7>Jumlah Hari Pemeriksaan *</h7>
                        <input type="number" class="form-control" name="tanggal_pemeriksaan" required />
                    </div> -->
                  
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

                    <!-- <div class="form-group col-sm-6">
                        <h7>Tanggal Dikerjakan *</h7>
                        <input type="date" class="form-control" name="tanggal_pemeriksaan" required />
                    </div> -->
                    <div class="form-group col-sm-12">
                        <h7>Estimasi Kebutuhan Material *</h7>
                        <textarea class="texteditor" rows="8" name="estimasi_kebutuhan_material" required></textarea>
                    </div>
                    <div class="form-group col-sm-6">
                        <h7>Estimasi Waktu Pengadaan Material (hari) *</h7>
                        <input type="number" name="estimasi_waktu_pengadaan_material" class="form-control" required />
                    </div>
                    <div class="form-group col-sm-6">
                        <h7>Estimasi Waktu Pengerjaan (hari) *</h7>
                        <input type="number" name="estimasi_waktu_pengerjaan" class="form-control" required /> </textarea>

                    </div>
                    <div class="form-group col-sm-6">
                        <h7>Dikerjakan Dengan</h7>
                        <select class="form-control" name="dikerjakan_dengan" required /> </b>
                        <option value="">Pilih Kategori</option>
                        <option value="Internal">Internal</option>
                        <option value="External">External</option>
                        </select>
                    </div>
                    <div class="form-group col-sm-6">
                        <h7>Petugas</h7>
                        <select class="form-control" name="petugas" required /> </b>
                        <option value="">Pilih Petugas</option>
                        <option value="Petugas A">Petugas A</option>
                        <option value="Petugas B">Petugas B</option>
                        </select>
                    </div>
                </div>

                <div class="form-row2">
                    <div class="col-sm-3">
                        <button type="submit" name="simpan" style="background-color: #0077b6;color:white"
                            class="btn btn-md btn-block  "> Terima</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
 
<?php echo form_close() ?>

<script type="text/javascript" src="<?php echo base_url(); ?>assets/ckeditorfullcustom/ckeditor.js"></script>
<script type="text/javascript" src="<?php echo base_url(); ?>assets/ckeditorfullcustom/adapters/jquery.js"></script>

<script type="text/javascript">
  $('textarea.texteditor').ckeditor();
</script>


<link href="<?php echo base_url(); ?>assets/bower_components/select2/dist/css/select2.min.css " rel="stylesheet" />
<script src="<?php echo base_url(); ?>assets/bower_components/select2/dist/js/select2.min.js"></script>
<script>
$(".theSelect").select2();
</script>
