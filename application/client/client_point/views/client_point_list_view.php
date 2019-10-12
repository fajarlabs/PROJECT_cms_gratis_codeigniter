                    <table id="dg" class="easyui-datagrid" style="width:100%;min-height:auto;"
                            url="<?php echo base_url(); ?>index.php/client_point/page_list_rest"
                            toolbar="#toolbar" pagination="true"
                            rownumbers="true" fitColumns="true" singleSelect="true">
                        <thead>
                            <tr>
                                <th field="NAME" width="30">Name</th>
                                <th field="TYPE" width="30">Type</th>
                                <th field="LATITUDE" width="30">Latitude</th>
                                <th field="LONGITUDE" width="30">Longitude</th>
                            </tr>
                        </thead>
                    </table>
                    <div id="toolbar">
                        <a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-add" plain="true" onclick="newMapPoint()">Add</a>
                        <a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-edit" plain="true" onclick="editMapPoint()">Edit</a>
                        <a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-remove" plain="true" onclick="destroyMapPoint()">Remove</a>
                    </div>