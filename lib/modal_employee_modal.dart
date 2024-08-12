class EmployeeModal{

  late String name;
  late String designation;
  late int id;

  EmployeeModal(this.name,this.designation,this.id);

  factory EmployeeModal.fromMap(Map m1)
  {
    return EmployeeModal(m1['name'], m1['designation'], m1['id']);
  }

}