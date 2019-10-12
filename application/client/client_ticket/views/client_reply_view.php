<?php 
$is_ticket_open = 0;
if($ticket_query->num_rows() > 0) {
    foreach($ticket_query->result() as $row_ticket) {
        $is_ticket_open = $row_ticket->IS_TICKET_OPEN;
    }
}?>
<!-- begin #content -->
<div id="content" class="content">
	<!-- begin breadcrumb -->
	<?php echo create_breadcrumb('Home'); ?>
	<!-- end breadcrumb -->
	<!-- begin page-header -->
	<h1 class="page-header">Admin Ticket Management <small>Function to client ticket</small></h1>
	<!-- end page-header -->

	<!-- begin row -->
	<div class="row">
	    <!-- begin col-12 -->
	    <div class="col-xs-12">
	        <!-- begin panel -->
			<?php echo $error_message; ?>
            <div class="panel panel-inverse">
                <div class="panel-heading">
                    <div class="panel-heading-btn">
                    	<a href="<?php echo base_url(); ?>index.php/client_ticket" class="btn btn-xs btn-icon btn-circle btn-primary" ><i class="fa fa-reply"></i></a>
                        <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-default" data-click="panel-expand"><i class="fa fa-expand"></i></a>
                        <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-success" data-click="panel-reload"><i class="fa fa-repeat"></i></a>
                        <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-warning" data-click="panel-collapse"><i class="fa fa-minus"></i></a>
                        <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-danger" data-click="panel-remove"><i class="fa fa-times"></i></a>
                    </div>
                    <h4 class="panel-title">Admin Ticket Management - Table</h4>
                </div>
                <div class="panel-body" style="overflow-x: hidden;">
                    <div class="col-xs-12 panel-chat">
                    <ul class="chat">
                        <?php 
                        if($message_query->num_rows() > 0) :
                            foreach($message_query->result() as $row) : ?>

                        <?php   if($row->ADMIN_ID > 0) : ?>
                        <li class="left clearfix"><span class="chat-img pull-left">
                            <img style="width:45px;height:45px;" src="<?php echo get_admin_foto_by_id($row->ADMIN_ID); ?>" alt="User Avatar" class="img-circle" />
                        </span>
                            <div class="chat-body clearfix">
                                <div class="header">
                                    <strong class="primary-font"><?php echo get_admin_name_by_id($row->ADMIN_ID); ?></strong> <small class="pull-right text-muted">
                                        <span class="glyphicon glyphicon-time"></span>  <?php echo time_since($row->CREATE_TIME); ?> ago</small>
                                </div>
                                <div style="width:100%;" >
                                    <p>
                                    <?php echo $row->CLIENT_TICKET_MESSAGE; ?>
                                    </p>
                                </div>
                            </div>
                        </li>
                        <?php endif;

                        if($row->USER_ID > 0) : ?>
                        <li class="right clearfix"><span class="chat-img pull-right">
                            <img style="width:45px;height:45px;" src="<?php echo get_client_photo(); ?>" alt="User Avatar" class="img-circle" />
                        </span>
                            <div class="chat-body clearfix">
                                <div class="header">
                                <strong class="pull-right primary-font"><?php echo get_client_firstname().' '.get_client_lastname(); ?></strong>
                                    <small class=" text-muted"><span class="glyphicon glyphicon-time"></span>
                                    <?php echo time_since($row->CREATE_TIME); ?> ago</small>
                                </div>
                                <p>
                                    <?php echo $row->CLIENT_TICKET_MESSAGE; ?>
                                </p>
                            </div>
                        </li>
                        <?php 
                        endif;
                        endforeach;
                        endif; ?>
                        <?php if($is_ticket_open == 1) : ?>
                        <li><span class="badge badge-danger">Ticket has been closed.</span></li>
                        <?php endif; ?>
                    </ul>
                    </div>
                	<br />
                    <?php if($is_ticket_open == 0) : ?>
                	<?php echo form_open_multipart('client_ticket/reply_save/'.$reply_id,array('id' => 'form_add')); ?>
					<table class="table table-striped  table-bordered">
						<tr>
							<td><?php echo form_textarea(array('type' => 'text', 'name' => 'client_ticket_description','class' => 'form-control')); ?></td>
						</tr>
						<tr style="display: none;">
							<td><?php echo form_input(array('type' => 'hidden', 'name' => $csrf['name'],'value' => $csrf['hash'],'class' => 'form-control','required' => 'required')); ?></td>
						</tr>
						<tr>
							<td>
							<?php echo anchor('/client_ticket','Back', array('title' => 'Back to Admin Ticket list', 'class' => 'btn btn-sm btn-primary')); ?>
							<?php echo form_submit('form_user_submit', 'Submit Form', 'class="btn btn-sm btn-primary"');?>
							</td>
						</tr>
					</table>
					<?php echo form_close(); ?>
                    <?php endif; ?>
                </div>
            </div>
        </div>
    </div>
</div>