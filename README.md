# 🛠 getx_state_management

####  GetX is a powerful and lightweight Flutter package that provides tools for state management, dependency injection, and route management. It’s designed to make your Flutter application more maintainable and scalable by using a reactive programming approach.

### Key Features of GetX:
- Reactive Programming: The reactive approach in GetX allows you to update the UI based on data changes instantly, improving the performance and user experience.
- Minimal Boilerplate: GetX reduces the amount of code you need to write, making your application more readable and easier to maintain.
- Simple API: GetX’s API is intuitive and easy to use, which helps in building complex applications with less effort.
- High Performance: GetX is optimized for performance and memory usage, making it suitable for large-scale applications.

### Basic Example
```
import 'package:get/get.dart';

class CounterController extends GetxController {
  var count = 0.obs;

  void increment() {
    count++;
  }
}

// Usage in a Flutter widget
class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Find the controller
    final CounterController counterController = Get.put(CounterController());

    return Scaffold(
      appBar: AppBar(title: Text("GetX Example")),
      body: Center(
        child: Obx(() => Text("Count: ${counterController.count}")),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: counterController.increment,
        child: Icon(Icons.add),
      ),
    );
  }
}

```
## Counter app
<div align ="center">

  <img src = "https://github.com/user-attachments/assets/420cf9d3-3833-49ac-b063-ad78fd01d689"  height=35% width=22%  />
  <video height="450" src="https://github.com/user-attachments/assets/8697e1d8-164e-446b-b0c5-07e666c7ad2b" />

</div>
## Navigate betwen Screens 

<div align ="center">
  <img src = "https://github.com/user-attachments/assets/dee1d25c-5a36-41a1-a6b8-9aec6f2bf800"  height=35% width=22%  />
   <img src = "https://github.com/user-attachments/assets/cd0c1893-9f04-4e01-8879-0acec3a743d1"  height=35% width=22%  />
  <video height="450" src="https://github.com/user-attachments/assets/4b4cc39f-854e-48e8-bf92-700d750deaf0" />

</div>


### ☀ Employee Management with GetX: CRUD Operations

This Flutter application implements a CRUD (Create, Read, Update, Delete) functionality for managing employee details using the GetX state management package.

- Create: Add new employee records with details like name, ID, and designation using a form that opens in a dialog. The form data is saved to the employee list.

- Read: Display a list of all employees with their details. The list dynamically updates as you add, edit, or remove employees.

- Update: Edit existing employee details by pre-filling a form with current data. The updated information is saved back to the list.

- Delete: Remove an employee recor

  <div align ="center">
    <img src = "https://github.com/user-attachments/assets/56f7e13e-33ea-430d-a26a-11583622a458"  height=35% width=22%  />
   <img src = "https://github.com/user-attachments/assets/73e76c9c-9346-4f5e-bda2-1f1a92c3454e"  height=35% width=22%  />
    <img src = "https://github.com/user-attachments/assets/775b1c5e-9f69-47bc-9eca-2095b641ae7a"  height=35% width=22%  />
   <img src = "https://github.com/user-attachments/assets/1b35b87f-a0ac-44cf-8d11-0292880d57c2"  height=35% width=22%  />
   <img src = "https://github.com/user-attachments/assets/ca942671-65ad-4bbc-8ddf-b5f5ef7ba9f9"  height=35% width=22%  />
  <video height="450" src="https://github.com/user-attachments/assets/6cc601bf-736c-43a4-bf93-81b4688f83ed" />

</div>


