<!DOCTYPE html>
<html lang="en">

<head>

  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Login</title>

  <!-- CSS -->
  <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Roboto:400,100,300,500">
  <link rel="stylesheet" href="<?php echo base_url(); ?>assets/admin/login/assets/bootstrap/css/bootstrap.min.css">
  <link rel="stylesheet" href="<?php echo base_url(); ?>assets/admin/login/assets/font-awesome/css/font-awesome.min.css">
  <link rel="stylesheet" href="<?php echo base_url(); ?>assets/admin/login/assets/css/form-elements.css">
  <link rel="stylesheet" href="<?php echo base_url(); ?>assets/admin/login/assets/css/polyglot-language-switcher.css">
  <link rel="stylesheet" href="<?php echo base_url(); ?>assets/admin/login/assets/css/style.css">
  <style type="text/css">
      select.form-control {
        height: 50px;
        width:100% !important;
      margin: 0;
          margin-bottom: 0px;
      vertical-align: middle;
      background: #fefefe;
      border: 3px solid #ddd;
      font-family: 'Roboto', sans-serif;
      font-size: 16px;
      font-weight: 300;
      line-height: 50px;
      color: #888;
      -moz-border-radius: 4px;
      -webkit-border-radius: 4px;
      border-radius: 4px;
          border-top-left-radius: 4px;
          border-bottom-left-radius: 4px;
      -moz-box-shadow: none;
      -webkit-box-shadow: none;
      box-shadow: none;
      -o-transition: all .3s;
      -moz-transition: all .3s;
      -webkit-transition: all .3s;
      -ms-transition: all .3s;
      transition: all .3s;
      }
  </style>

  <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
  <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
            <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
            <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
          <![endif]-->

        </head>

        <body>

          <!-- Top menu -->
          <nav class="navbar navbar-inverse navbar-no-bg" role="navigation">
           <div class="container">
            <div class="navbar-header">
             <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#top-navbar-1">
              <span class="sr-only">Toggle navigation</span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
            </button>                    

          </div>


        </div>
      </nav>

      <!-- Top content -->
      <div class="top-content">

        <div class="inner-bg" style="padding-top: 50px;">
          <div class="container">
            <div class="col-md-5 col-md-offset-3 form-box " style="margin-left: 29%;">
              <center><img src="<?php echo base_url(); ?>assets/admin/login/assets/img/logo-app.png" class="img-responsive" alt="phiro-logo" width="150" style="margin-bottom: 10px;text-align: center;display: contents;"></center>
              <div class="form-bottom">
               <form role="form" action="" id="login-form" method="post" class="registration-form">
                <div class="form-group">
                  <div class="input-group">
                    <h3>SecureIOT | Login Administrator</h3>
                  </div>
                </div>
                <div class="form-group">
                 <div class="input-group">
                  <span class="input-group-addon"><i class="glyphicon glyphicon-home"></i></span>
                  <select id="select_division" class="form-control" name="cln">
                      <option value="" selected>-- Select Access --</option>
                      <option value="customers">Customers</option>
                      <option value="internal">Internal</option>                    
                  </select>                                    
                </div>
              </div>                
                <div class="form-group">
                 <div class="input-group">
                  <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                  <input id="user" type="text" class="form-control" name="un" value="" placeholder="Username">                                        
                </div>
              </div>
              <div class="form-group">
               <div class="input-group">
                <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
                <input id="password" type="password" class="form-control" name="ps" value="" placeholder="Password"> 
                <input type="hidden" name="<?php echo $csrf['name']; ?>" value="<?php echo $csrf['hash'];?>" />                                       
              </div>
            </div>                           
            <button type="submit" href="#" class="btn btn-primary pull-right" style="font-size:large;"><strong>Login</strong></button>
            <hr>
          </form>
        </div>
      </div>
    </div>
  </div>
</div>

</div>


<!-- Javascript -->
<script type="text/javascript">
  window.baseurl = '<?php echo base_url(); ?>';
</script>
<script src="<?php echo base_url(); ?>assets/admin/login/assets/js/jquery-1.11.1.min.js"></script>
<script src="<?php echo base_url(); ?>assets/admin/login/assets/bootstrap/js/bootstrap.min.js"></script>
<script src="<?php echo base_url(); ?>assets/admin/login/assets/js/jquery.backstretch.min.js"></script>
<script src="<?php echo base_url(); ?>assets/admin/login/assets/js/retina-1.1.0.min.js"></script>
<script src="<?php echo base_url(); ?>assets/admin/login/assets/js/scripts.js"></script>
<script>
    jQuery(document).ready(function ($) {
      $('#select_division').change(function (){
          var select_value =$('#select_division :selected').val();
          if(select_value == 'internal') {
            $('#login-form').attr('action','<?php echo base_url(); ?>index.php/login/auth');
          } else if(select_value  == 'customers') {
            $('#login-form').attr('action','<?php echo base_url(); ?>index.php/client/auth');
          } else {
            $('#login-form').attr('action','');
          }
      });
    });

    $('#login-form').on('submit',function(e){
        var action = $('#login-form').attr('action');
        if(action == '') {
          alert('Select division required');
          $('#select_division').focus();
          return false;
        }
    });
</script>

        <!--[if lt IE 10]>
            <script src="assets/js/placeholder.js"></script>
          <![endif]-->
        </body>
        </html>