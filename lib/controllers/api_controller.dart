import 'package:firstapp/models/user_model.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class APiController extends GetxController{

  // API ==> Application Programming Interface
  List<UserModel> users = [];

  @override
  void onInit() {
    super.onInit();
    populateUsers();
  }

  populateUsers() async{
    
    final uri = Uri.parse('https://jsonplaceholder.typicode.com/posts/1');
    http.Response response = await http.delete(uri);
    final responseBody = jsonDecode(response.body);
    if(response.statusCode == 200){
      print('the returned body: $responseBody');
    }else{
      print('status code: ${response.statusCode}');
    }
    
  } // => the future means a function that needs a given period of time to return it's value.
}

// response codes:
// 200 == ok
// 201 == created used with POST, PUT and PATCH 
// 403 == Forbidden, no access gaurenteed.
// 404 == not found
// 500 == internal server error

// GET => gets or returns a value || set of values from a preDefiened rest Api end point.
// POST => create an object to a preDefiened rest Api end point.
// DELETE => deletes a record or resource from a preDefiened rest Api end point.

// H.W => PUT & PATCH, what is the difference between each.