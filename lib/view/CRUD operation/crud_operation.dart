import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controller/employee_controller.dart';


class CrudOperation extends StatelessWidget {
  const CrudOperation({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController nameController = TextEditingController();
    TextEditingController designationController = TextEditingController();
    TextEditingController idController = TextEditingController();
    EmployeeController employeeController = Get.put(EmployeeController());

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: const Icon(
            Icons.person,
            color: Colors.white,
          ),
          title: const Text(
            'Employee Data',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.indigo[900],
        ),
        body: Obx(() => ListView.builder(
          itemCount: employeeController.employeeList.length,
          itemBuilder: (context, index) {

            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                color: Colors.indigo[100],
                child: ListTile(
                  leading: Text(employeeController.employeeList[index].id.toString()),
                  title: Text(employeeController.employeeList[index].name),
                  subtitle: Text(employeeController.employeeList[index].designation),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(
                        onPressed: () {
                          nameController.text = employeeController.employeeList[index].name;
                          idController.text =employeeController.employeeList[index].id.toString();
                          designationController.text = employeeController.employeeList[index].designation;

                          Get.dialog(
                            AlertDialog(
                              title: const Text(
                                'Update Employee Details',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                ),
                              ),
                              content: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: TextField(
                                      controller: nameController,
                                      decoration: InputDecoration(
                                        labelText: 'Name',
                                        border: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(15),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: TextField(
                                      cursorColor: Colors.black,
                                      controller: idController,
                                      decoration: InputDecoration(
                                        labelText: 'ID',
                                        border: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(15),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(15),
                                        ),
                                      ),
                                      keyboardType: TextInputType.number,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: TextField(
                                      controller: designationController,
                                      decoration: InputDecoration(
                                        labelText: 'Designation',
                                        border: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(15),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(15),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              actions: [
                                TextButton(
                                  onPressed: () {
                                    Get.back();
                                  },
                                  child: const Text(
                                    'Cancel',
                                    style: TextStyle(
                                      color: Colors.red,
                                      fontSize: 18,
                                    ),
                                  ),
                                ),
                                ElevatedButton(
                                  onPressed: () {
                                    final Map updatedEmployee = {
                                      'name': nameController.text,
                                      'id': int.tryParse(idController.text),
                                      'designation': designationController.text,
                                    };
                                    employeeController.updateEmployee(index, updatedEmployee);
                                    Get.back();
                                  },
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.indigo[900],
                                  ),
                                  child: const Text(
                                    'Save',
                                    style: TextStyle(fontSize: 18, color: Colors.white),
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                        icon: Icon(Icons.edit),
                      ),
                      IconButton(
                        onPressed: () {
                          employeeController.removeEmployee(index);
                        },
                        icon: Icon(Icons.delete),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        )),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.indigo[900],
          onPressed: () {
            nameController.clear();
            idController.clear();
            designationController.clear();

            Get.dialog(
              AlertDialog(
                title: const Text(
                  'Add Employee Details',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                content: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextField(
                        cursorColor: Colors.black,
                        controller: nameController,
                        decoration: InputDecoration(
                          labelText: 'Name',
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextField(
                        cursorColor: Colors.black,
                        controller: idController,
                        decoration: InputDecoration(
                          labelText: 'ID',
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                        keyboardType: TextInputType.number,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextField(
                        cursorColor: Colors.black,
                        controller: designationController,
                        decoration: InputDecoration(
                          labelText: 'Designation',
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                actions: [
                  TextButton(
                    onPressed: () {
                      Get.back(); // Close the dialog
                    },
                    child: const Text(
                      'Cancel',
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: 18,
                      ),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      final Map newEmployee = {
                        'name': nameController.text,
                        'id': int.tryParse(idController.text),
                        'designation': designationController.text,
                      };
                      employeeController.addEmployee(newEmployee);
                      Get.back(); // Close the dialog
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.indigo[900],
                    ),
                    child: const Text(
                      'Save',
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                  ),
                ],
              ),
            );
          },
          child: const Icon(
            Icons.add,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
