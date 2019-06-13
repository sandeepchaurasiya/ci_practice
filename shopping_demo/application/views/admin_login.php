<!doctype html>
<html class="no-js" lang=""> 

    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>Sufee Admin - HTML5 Admin Template</title>
        <meta name="description" content="Sufee Admin - HTML5 Admin Template">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <link rel="apple-touch-icon" href="apple-icon.html">
        <link rel="shortcut icon" href="favicon.ico">

        <link rel="stylesheet" href="<?= base_url(); ?>assets/css/normalize.css">
        <link rel="stylesheet" href="<?= base_url(); ?>assets/css/bootstrap.min.css">
        <link rel="stylesheet" href="<?= base_url(); ?>assets/css/font-awesome.min.css">
        <link rel="stylesheet" href="<?= base_url(); ?>assets/css/themify-icons.css">
        <link rel="stylesheet" href="<?= base_url(); ?>assets/css/flag-icon.min.css">
        <link rel="stylesheet" href="<?= base_url(); ?>assets/css/cs-skin-elastic.css">
        <!-- <link rel="stylesheet" href="assets/css/bootstrap-select.less"> -->
        <link rel="stylesheet" href="<?= base_url(); ?>assets/scss/style.css">

        <link href='https://fonts.googleapis.com/css?family=Open+Sans:400,600,700,800' rel='stylesheet' type='text/css'>

    <!-- <script type="text/javascript" src="https://cdn.jsdelivr.net/html5shiv/3.7.3/html5shiv.min.js"></script> -->

    </head>
    <body class="bg-dark">


        <div class="sufee-login d-flex align-content-center flex-wrap">
            <div class="container">
                <div class="login-content">
                    <div class="login-logo">
                        <a href="index.html">
                            <img class="align-content" src="images/logo.png" alt="">
                        </a>
                    </div>
                    <div class="login-form">
                        <form method="post" action="<?= base_url(); ?>admin_dashboard/login_validation">
                             <?php
                            echo $this->session->flashdata("error");
                            ?> 
                            <div class="form-group">
                                <label>Username</label>
                                <input type="text" class="form-control" name="username" placeholder="Username">
                                <?php echo form_error('username'); ?>
                            </div>
                            <div class="form-group">
                                <label>Password</label>
                                <input type="password" class="form-control" name="password" placeholder="Password">
                                <?php echo form_error('password'); ?>
                            </div>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox"> Remember Me
                                </label>
                                <label class="pull-right">
                                    <a href="#">Forgotten Password?</a>
                                </label>

                            </div>
                            <button type="submit" class="btn btn-success btn-flat m-b-30 m-t-30">Login</button>
                            <!--                        <div class="register-link m-t-15 text-center">
                                                        <p>Don't have account ? <a href="#"> Sign Up Here</a></p>
                                                    </div>-->
                            
                        </form>
                    </div>
                </div>
            </div>
        </div>


        <script src="<?= base_url(); ?>assets/js/vendor/jquery-2.1.4.min.js" type="0db9e5a13e75e48bc7753177-text/javascript"></script>
        <script src="<?= base_url(); ?>assets/js/popper.min.js" type="0db9e5a13e75e48bc7753177-text/javascript"></script>
        <script src="<?= base_url(); ?>assets/js/plugins.js" type="0db9e5a13e75e48bc7753177-text/javascript"></script>
        <script src="<?= base_url(); ?>assets/js/main.js" type="0db9e5a13e75e48bc7753177-text/javascript"></script>


        <!-- Global site tag (gtag.js) - Google Analytics -->
        <script async src="https://www.googletagmanager.com/gtag/js?id=UA-23581568-13" type="0db9e5a13e75e48bc7753177-text/javascript"></script>

        <script src="<?= base_url(); ?>assets/js/rocket-loader.min.js" data-cf-settings="0db9e5a13e75e48bc7753177-|49" defer=""></script></body>

</html>
