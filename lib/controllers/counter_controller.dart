import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/state_manager.dart';

class CounterController extends GetxController{

  RxInt value = 0.obs; // => this is a srteam => rx == reactive

  increment(){
    value++;
    // update(); // => Rebuilds GetBuilder each time you call update() == setState((){})
  }

  decrement(){
    value--;
    // update();
  }

}