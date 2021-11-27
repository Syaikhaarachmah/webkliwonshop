<div class="gap no-gap">
  <div class="inner-bg">
    <div class="element-title">
      <h4><?php echo $title; ?></h4>
      <span>Please fill the form bellow.</span> </div>
      <form action="" method="post" enctype="multipart/form-data">
      <div class="flash-data-error" data-flashdata="<?php echo $this->session->flashdata('error'); ?>"></div>
      <div class="add-prod-from">
        <div class="row">
          <div class="col-md-12">
            <label>Judul Artikel</label>
            <input type="text" name="judul" value="<?php echo set_value('judul'); ?>" placeholder="Harga produk naik">
            <small class="text-danger"><?php echo form_error('judul'); ?></small>
          </div>
          <div class="col-md-12">
            <label>Isi Artikel</label>
            <textarea cols="30" name="isi" rows="10" placeholder="loram ipsum dolor sit amit"><?php echo set_value('isi'); ?></textarea>
            <small class="text-danger"><?php echo form_error('isi'); ?></small>
          </div>
          <div class="col-md-12"> <span class="upload-image">Upload Gambar</span>
            <label class="fileContainer"> <span>upload</span>
              <input type="file" name="gambar" />
            </label>
          </div>
          <div class="col-md-12">
            <div class="buttonz">
              <button type="submit">save</button>
              <button type="button" onclick="goBack()">cancel</button>
            </div>
          </div>
        </div>
      </div>
        </form>
    </div>
  </div>