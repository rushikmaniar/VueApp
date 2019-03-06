<div class="card">
    <div class="card-body">
        <div class="col-sm-12 col-md-12">
            <button type="button" class="btn btn-success btn-top" id="btn_add_user"
                    onclick="ajaxModel('backoffice/Employee/viewAddEmployeeModal','Add New Employee','modal-lg')">
                <i class="fa fa-plus"></i> Add Employee
            </button>
        </div>
        <table class="display nowrap table table-hover table-striped table-bordered dataTable" id="EmployeeTable">
            <thead>
            <tr>
                <th>Employee Image</th>
                <th>Employee Code</th>
                <th>Employee Name</th>
                <th>Employee Email</th>
                <th>Employee Mobile</th>
                <th>Department</th>
                <th class="text-center">Action</th>
            </tr>
            </thead>
            <tbody>

            <tr v-for="(row,key,index) in employee_list" :key="row.emp_code">
                <!-- Employee Code -->

                <td v-if="row.emp_image != null">
                    <img :src="base_url+'uploads/employee/'+row.emp_image"
                         :onerror="base_url+'/images/person-noimage-found.png'" class="img-responsive img-circle"
                         style="height: 100px;width: 100px">
                </td>
                <td v-else>
                    <img :src="base_url+'/images/person-noimage-found.png'" class="img-responsive img-circle"
                         style="height: 100px;width: 100px">
                </td>
                <td>{{ row.emp_code }}</td>
                <td>{{ row.emp_name }}</td>
                <td>{{ row.emp_email }}</td>
                <td>{{ row.emp_phone }}</td>
                <td>{{ row.dept_name }}</td>

                <!-- if no entry exits -->
                <td class="text-center">
                    <div class="btn-group">
                        <button type="button" class="btn btn-success btn-sm"
                                data-container="body"
                                title="Edit User" :disabled="row.analysis_emp_code_entries != 0"
                        >
                            <i class="fa fa-pencil"></i>
                        </button>
                        <button type="button" @click="deleteEmployee(index)"
                                class="btn btn-danger btn-sm"
                                data-container="body" title="Delete User" :disabled="row.analysis_emp_code_entries != 0"
                        >
                            <i class="fa fa-remove"></i>
                        </button>
                    </div>
                </td>
            </tr>
            </tbody>
        </table>
    </div>

</div>
<!-- Vuew Js -->
<script src="https://cdn.jsdelivr.net/npm/vue@2.6.8/dist/vue.js"></script>
<script src="https://unpkg.com/axios/dist/axios.min.js"></script>
<script>
    var EmployeeTable = new Vue({
        el: '#EmployeeTable',
        data: {
            employee_list:new Array(),
            base_url: base_url
        },
        created() {
            console.log(this.employee_list)
            axios.get(base_url + '/backoffice/VueServices/Employee/getEmployeesList')
                .then(response => {
                    if(response.status === 200){
                        this.employee_list = response.data.data.employee_list
                    }
                })
                .catch(error => {
                    console.log(error);
                })
        },
        methods: {
            deleteEmployee: function (index) {
                this.employee_list.splice(index,1)
                /*swal({
                    title: 'Are you sure?',
                    text: "You won't be able to revert this!",
                    type: 'warning',
                    showCancelButton: true,
                    confirmButtonColor: '#3085d6',
                    cancelButtonColor: '#d33',
                    confirmButtonText: 'Yes, delete it!'
                }).then(function (result) {


                    $.ajax({
                        url: base_url + "backoffice/Employee/deleteEmployee",
                        type: "POST",
                        dataType: "json",
                        data: {"emp_code": emp_code, "emp_image": emp_image},
                        success: function (result) {
                            if (result.code == 1 && result.code != '') {
                                toastr["success"](result.message, "Success");
                                setTimeout(function () {
                                    EmployeeTable.employee_list.delete(emp_code);
                                }, 1000);
                            }
                            else {
                                toastr["error"](result.message, "Error");
                            }
                        },
                        error: function (result) {
                            console.log(result);
                        }
                    });

                }).catch(swal.noop);*/
            }
        }
    });


    $(document).ready(function () {

        $('#EmployeeTable').dataTable({
            dom: 'Bfrtip',
            buttons: [
                'copy', 'csv', 'excel', 'pdf', 'print'
            ]
        });

    });
</script>