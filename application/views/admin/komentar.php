<div class="gap inner-bg">
                  <div class="element-title">
                    <h4><?php echo $title; ?></h4>
                    <span>Default Tables style base on bootstrap </span> </div>
                  <div class="table-styles">
                    <div class="flash-data" data-flashdata="<?php echo $this->session->flashdata('flash'); ?>"></div>
                    <div class="widget">
                      <table class="prj-tbl striped bordered table-responsive" id="myTable">
                        <thead class="">
                          <tr>
                            <th><em>No</em></th>
                            <th><em>Tgl</em></th>
                            <th><em>Dari</em></th>
                            <th><em>Produk</em></th>
                            <th><em>Komentar</em></th>
                            <th><em>Status</em></th>
                            <th><em>Moderasi</em></th>
                          </tr>
                        </thead>
                        <tbody>
                          <?php $i = 1; ?>
                          <?php foreach($komentar as $pro): ?>
                          <tr>
                            <td><?php echo $i.'.'; ?></td>
                            <td><span><?php echo date('d-m-Y H:i:s', strtotime($pro['komentar_tgl'])); ?></span></td>
                            <td><i><?php echo $pro['user_nama']; ?></i></td>
                            <td><i><?php echo $pro['produk_name']; ?></i></td>
                            <td><i><?php echo $pro['komentar_isi']; ?></i></td>
                            <td>
                              <?php if($pro['komentar_option'] == 1) { ?>
                                <i>Dihapus</i>
                              <?php }else { ?>
                                <i>Aktif</i>
                              <?php } ?>
                            </td>
                            <td>
                              <?php if($pro['komentar_option'] == 1) { ?>
                                <a href="<?php echo base_url(); ?>admin/restore_komentar/<?php echo $pro['komentar_id']; ?>" title="Kembalikan" class="btn-st blu-clr"><i class="fa fa-refresh"></i></a>
                              <?php }else { ?>
                                <a href="<?php echo base_url(); ?>admin/moderasi_komentar/<?php echo $pro['komentar_id']; ?>" title="Hapus" class="btn-st rd-clr bdel"><i class="fa fa-trash"></i></a>
                              <?php } ?>
                            </td>
                          </tr>
                          <?php $i++; ?>
                          <?php endforeach; ?>
                        </tbody>
                      </table>
                    </div>
                    
                  </div>
                </div>