import 'package:get/get.dart';


import '../modal_employee_modal.dart';

class EmployeeController extends GetxController
{
  RxList<EmployeeModal>employeeList = <EmployeeModal>[].obs;

  void addEmployee(Map employee)
  {
    EmployeeModal employeeModal = EmployeeModal.fromMap(employee);
    employeeList.add(employeeModal);
  }
  void removeEmployee(int index)
  {
    employeeList.removeAt(index);
  }
  void updateEmployee(int index, Map updatedEmployee) {
    EmployeeModal updatedEmployeeModal = EmployeeModal.fromMap(updatedEmployee);
    employeeList[index] = updatedEmployeeModal;
  }

}