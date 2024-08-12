# getx_state_management

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
