                    
                    <table id="dg" class="easyui-datagrid" style="width:100%;height:auto;"
                            url="<?php echo base_url(); ?>index.php/file_manager/page_list_rest"
                            toolbar="#toolbar" pagination="true"
                            rownumbers="true" fitColumns="true" singleSelect="true">
                        <thead>
                            <tr>
                                <th field="TITLE" width="30">Title</th>
                                <th field="SIZE" width="10">Size (KB)</th>
                                <th field="EXTENSION" width="10">Extension</th>
                                <th field="PATH" width="50">Path</th>
                            </tr>
                        </thead>
                    </table>
                    <div id="toolbar">
                        <a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-add" plain="true" onclick="newFileManager()">Add</a>
                        <a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-edit" plain="true" onclick="editFileManager()">Edit</a>
                        <a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-remove" plain="true" onclick="destroyFileManager()">Remove</a>
                    </div>