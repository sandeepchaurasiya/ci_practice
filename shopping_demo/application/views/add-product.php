
<?php include 'assets/include/header.php'; ?>
<div class="breadcrumbs">
    <div class="col-sm-4">
        <div class="page-header float-left">
            <div class="page-title">
                <h1>Create New Cases</h1>
            </div>
        </div>
    </div>
    <div class="col-sm-8">
        <div class="page-header float-right">
            <div class="page-title">

            </div>
        </div>
    </div>
</div>
<div class="content mt-3">
    <div class="animated fadeIn">
        <div class="row">
            <div class="col-lg-12">
                <div class="card">
                    <div class="card-header">
                        <strong>Create New Cases</strong>
                    </div>
                    <div class="card-body card-block">
                        <?php if ($this->session->flashdata('success_message')) { ?>
                            <div class="alert alert-success alert-dismissible fade show" role="alert">
                                <?php echo $this->session->flashdata('success_message'); ?>.
                                <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                            </div>

                        <?php } ?>
                        <form action="<?= base_url(); ?>admin_dashboard/product_validation" enctype="multipart/form-data"  method="post" class="form-horizontal">
                            <div class="row form-group">
                                <div class="col col-md-3">
                                    <label for="prod_img" class=" form-control-label">Product Image</label>
                                </div>
                                <div class="col-12 col-md-4">
                                    <input type="file" id="prod_img" name="prod_img" class="form-control-file">
                                    <?php echo form_error("prod_img"); ?>
                                </div>
                            </div>
							<div class="row form-group">
                                <div class="col col-md-3">
                                    <label for="pro_name" class=" form-control-label">Product Name</label>
                                </div>
                                <div class="col-12 col-md-9">
                                    <input type="text" id="pro_name" name="pro_name" placeholder="Your Product Name" value="<?php echo set_value('pro_name'); ?>" class="form-control">
                                    <?php echo form_error("pro_name"); ?>
                                </div>
                            </div>

                            <div class="row form-group">
                                <div class="col col-md-3">
                                    <label for="pro_price" class=" form-control-label">Product Price</label>
                                </div>
                                <div class="col-12 col-md-9">
                                    <input type="text" id="pro_price" name="pro_price" placeholder="Enter Product Price" value="<?php echo set_value('pro_price'); ?>" class="form-control">
                                    <?php echo form_error("pro_price"); ?>
                                </div>
                            </div>

                            <button type="submit" class="btn btn-primary btn-group-lg">
                                <i class="fa fa-dot-circle-o"></i> Submit
                            </button>
                            <button type="reset" class="btn btn-danger btn-group-lg">
                                <i class="fa fa-ban"></i> Reset
                            </button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<?php include "assets/include/footer.php"; ?>
