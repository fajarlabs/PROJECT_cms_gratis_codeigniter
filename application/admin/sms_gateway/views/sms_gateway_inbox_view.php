<!-- begin #content -->
<div id="content" class="content">
	<!-- begin breadcrumb -->
	<?php echo create_breadcrumb('Home'); ?>
	<!-- end breadcrumb -->
    
	<!-- begin page-header -->
	<h1 class="page-header">SMS Gateway <small>Receiver function sms.</small></h1>
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
                        <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-warning" data-click="panel-collapse"><i class="fa fa-minus"></i></a>
                        <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-danger" data-click="panel-remove"><i class="fa fa-times"></i></a>
                    </div>
                    <h4 class="panel-title">SMS Inbox - Table</h4>
                </div>
                <div class="panel-body">
				    <table id="dg" class="easyui-datagrid" style="width:100%;min-height:400px"
				            url="<?php echo base_url(); ?>index.php/sms_gateway/inbox_rest"
				            toolbar="#toolbar" pagination="true"
				            rownumbers="true" fitColumns="true" singleSelect="true">
				        <thead>
				            <tr>
				                <th field="SenderNumber" width="30">Sender Number</th>
				                <th field="TextDecoded" width="30">Text Decoded</th>
				                <th field="UpdatedInDB" width="20">Receive Date Time</th>
				            </tr>
				        </thead>
				    </table>
                    <div id="toolbar">
                        <a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-add" plain="true" onclick="create_sms()">Create SMS</a>
                        <a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-reload" plain="true" onclick="outbox_sms()">Outbox</a>
                        <a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-ok" plain="true" onclick="senditems_sms()">Send Items</a>
                           <a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-remove" plain="true" onclick="delete_inbox()">Delete</a>
                    </div>
                    <div id="dlg" class="easyui-dialog" style="width:400px"
                            closed="true" buttons="#dlg-buttons">
                        <form id="fm" method="post" novalidate style="width:auto;">
                            <table class="table table-striped table-bordered">
                                <tr>
                                    <td style="color:#666;">Contact</td>
                                    <td>
                                        <?php echo form_input(array('type' => 'text', 'name' => 'contact','class' => 'form-control', 'id' => 'contact','placeholder' => 'Phone Number')); ?>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="color:#666;">Message</td>
                                    <td>
                                        <?php echo form_textarea(array('id' => 'text_sms','name' => 'text_sms', 'class' => 'form-control', 'required' => 'true', 'label' => 'Text SMS', 'style' => 'width:100%;height:100px;', 'placeholder' => 'Text SMS')); ?>
                                    </td>
                                </tr>
                            </table>
                        </form>
                    </div>
                    <div id="dlg-buttons">
                        <a href="javascript:void(0)" class="easyui-linkbutton c6" iconCls="icon-ok" onclick="save_sms()" style="width:90px">Save</a>
                        <a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-cancel" onclick="javascript:$('#dlg').dialog('close')" style="width:90px">Cancel</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>