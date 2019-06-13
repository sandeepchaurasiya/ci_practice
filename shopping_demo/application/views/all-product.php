
<?php include 'assets/include/header.php'; ?>     

<div class="breadcrumbs">
    <div class="col-sm-4">
        <div class="page-header float-left">
            <div class="page-title">
                <h1>All Cases</h1>
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
                     <div class="col-md-12">
                    <div class="card">
                        <div class="card-header">
                            <strong class="card-title">All Cases</strong>
                        </div>
                        <div class="card-body">
                            <table class="table table-striped">
							
                                <thead>
                                    <tr>
                                        <th>Product Id.</th>
                                        <th>Product Image</th>
                                        <th>Product Name</th>
                                        <th>Product Price</th>
                                        <th>Action</th>
                                    </tr>
                                </thead>
                                <tbody>
								<?php foreach($product->result() as $row) {
                                    echo '<tr>
                                        <td>'.$row->product_id.'</td>
                                        <td><img src="'.base_url().'images/'.$row->product_image.'" alt="" width="50px" height="50px"/></td>
                                        <td>'.$row->product_name.'</td>
                                        <td>$ '.$row->product_price.'</td>
                                        <td>
                                            <a href="'.base_url().'admin_dashboard/delete_prod/'.$row->product_id.'" class="btn btn-danger delete" >Delete</a>
                                        </td>
                                    </tr>
									';
								} ?>
                              </tbody>
                            </table>
                        </div>
                    </div>
                    </div>
                </div>
            </div>        
        </div><!-- /#right-panel -->
        <?php include "assets/include/footer.php"; ?>
		