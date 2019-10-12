<!-- begin #content -->
<div id="content" class="content">
	<!-- begin breadcrumb -->
	<?php echo create_breadcrumb('Home'); ?>
	<!-- end breadcrumb -->
	<!-- begin page-header -->
	<h1 class="page-header">Slider Management <small>Function to edit slider</small></h1>
	<!-- end page-header -->

    <!-- begin front message -->
    <?php echo (isset($front_message) ? $front_message : ""); ?>
    <!-- end front message -->

	<!-- begin row -->
	<div class="row">
	    <!-- begin col-12 -->
	    <div class="col-xs-12">
	        <!-- begin panel -->
            <?php echo $error_message; ?>
            <div class="panel panel-inverse">
                <div class="panel-heading">
                    <div class="panel-heading-btn">
                    	<a href="<?php echo base_url(); ?>index.php/slider/add" class="btn btn-xs btn-icon btn-circle btn-primary" ><i class="fa fa-plus"></i></a>
                        <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-default" data-click="panel-expand"><i class="fa fa-expand"></i></a>
                        <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-success" data-click="panel-reload"><i class="fa fa-repeat"></i></a>
                        <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-warning" data-click="panel-collapse"><i class="fa fa-minus"></i></a>
                        <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-danger" data-click="panel-remove"><i class="fa fa-times"></i></a>
                    </div>
                    <h4 class="panel-title">Slider Management - Table</h4>
                </div>
                <div class="panel-body" style="overflow-x: hidden;">
                    <br />
                    <div id="base-form" style="display: none;">
                        <?php echo anchor('', '<i class="fa fa-trash-o"></i>', array('title' => '','onclick' => 'remove_element(this);return false;','style' => 'width:37px;','class' => 'btn btn-danger pull-right')); ?>
                        <div style="width:100%;height:37px;" class="clearfix">&nbsp;</div>
                        <i><span style="color:#000;">*if you dont want editing this image slider, please empty this field.</span></i>
                        <?php echo form_upload(array('type' => 'file', 'name' => 'photo_upload[]','id' => 'fupload')); ?>
                        <div style="width:100%;height:3px;">&nbsp;</div>
                        <?php echo anchor('#', img(array('src' => '','class' => 'thumbnail','height' => '100px', 'id' => 'slider_preview', 'style' => 'display:block;margin-bottom:3px;')), array('id' => 'anchor_id', 'style' => 'display:none;')) ?>
                        <?php echo form_input(array('type' => 'hidden','value' => '0', 'name' => 'slider_detail_id[]', 'id' => 'slider_detail_id')); ?>
                        <?php echo form_input(array('placeholder' => 'Image Title','type' => 'text', 'name' => 'title[]','class' => 'form-control','required' => 'required','id' => 'input_title')); ?>
                        <div style="width:100%;height:3px;">&nbsp;</div>
                        <?php echo form_textarea(array('id'=>'content','type' => 'text', 'name' => 'content[]','class' => 'form-control')); ?>
                    </div>
                    <?php echo form_open_multipart('slider/update/'.@$id,array('id' => 'form_add')); ?>
                    <table class="table table-striped  table-bordered">
                        <tr>
                            <td width="150px" style="padding-top:15px;"><?php echo form_label('Slider Name*') ?></td>
                            <td><?php echo form_input(array('type' => 'text', 'name' => 'slider_name','class' => 'form-control','required' => 'required', 'value' => @$item->result()[0]->NAME)); ?></td>
                        </tr>
                        <tr>
                            <td width="150px" style="padding-top:15px;"><?php echo form_label('Upload Photo') ?></td>
                            <td>
                                <?php echo anchor('', '<i class="fa fa-plus"></i> Add Form', array('title' => '','onclick' => 'add_element();return false;','style' => 'width:100%;margin-bottom:3px;','class' => 'btn btn-primary')); ?>
                                <table style="border:2px solid #666;" id="paper-form" class="table table-striped"></table>
                            </td>
                        </tr>
                        <tr style="display: none;">
                            <td colspan="2">
                                <?php echo form_input(array('type' => 'hidden', 'name' => $csrf['name'],'value' => $csrf['hash'],'class' => 'form-control','required' => 'required')); ?>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2">
                            <?php echo anchor('/slider','Back', array('title' => 'Back to user list', 'class' => 'btn btn-sm btn-primary')); ?>
                            <?php echo form_submit('form_user_submit', 'Submit Form', 'class="btn btn-sm btn-primary"');?>
                            </td>
                        </tr>
                    </table>
                    <?php echo form_close(); ?>
                </div>
            </div>
        </div>
    </div>
</div>