import 'package:firstapp/controllers/counter_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CounterScreenGetX extends StatelessWidget {
   CounterScreenGetX({super.key});
  static const id = '/CounterScreenGetX';

CounterController controller = Get.put(CounterController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        title: Text('Counter Screen'),
        centerTitle: true,
        actions: [
          GestureDetector(
            onTap: (){
            },
            child: Padding(
              padding: const EdgeInsets.all(14.0),
              child: Text('reload'),
            ),
          ),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Obx(
            () => Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: (){
                    controller.increment();
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(12.0).copyWith(right: 12.0),
                    child: Icon(Icons.add),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0).copyWith(right: 12.0),
                  child: Text('${controller.value.value}'),
                ),
                GestureDetector(
                  onTap: (){
                   controller.decrement();
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Icon(Icons.remove),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
 
  }
}

/*


debug mode   => debuging, underDevelopment projects uses this, this one is the default.
release mode => deploy to the app/play store, you may use this one.
profile mode => used with dart dev tools, to measure performance issues.

flutter run => run the app, in debug mode
flutter pub ( packages ) get => install the pkgs listed in pubspec.yaml file
flutter clean => deletes the build dir

r => hot reload
R => hot restart
c => clear | cls => clear the console
q => exit the application

*/