import 'package:firstapp/screens/second_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  static String id = '/HomeScreen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // => Scaffold widget holds the screen theme
      backgroundColor: Colors.white,
      body: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.zero,
        margin: EdgeInsets.zero,
        decoration: const BoxDecoration(
          image:
              DecorationImage(image: AssetImage('assets/images/laptop.jpeg')),
        ),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Stack(
            // mainAxisAlignment: MainAxisAlignment.center,
            // => the main alignment for the column childs.
            // crossAxisAlignment: CrossAxisAlignment.start,
            // => the secondary alignment for the column childs.
            alignment: Alignment.center,
            clipBehavior: Clip.none,
            children: [
              // Positioned(
              //   top: 20,
              //   child: Container(
              //       width: 120,
              //       height: 120,
              //       padding: const EdgeInsets.all(12.0),
              //       color: Colors.red,
              //       child: const Text(
              //         'any text',
              //         style: TextStyle(color: Colors.white, fontSize: 18),
              //       )),
              // ),
              // Positioned(
              //   top: 30,
              //   child: Container(
              //     width: 120,
              //     height: 120,
              //     margin: const EdgeInsets.all(12.0),
              //     color: Colors.black,
              //     child: const Text(
              //       'any text 2',
              //       style: TextStyle(color: Colors.white, fontSize: 18),
              //     ),
              //   ),
              // ),
              Column(
                children: [
                  Container(
                      margin: const EdgeInsets.symmetric(
                          vertical: 14.5, horizontal: 22.5),
                      child: Image.asset('assets/images/laptop.jpeg')),
                       TextButton(onPressed: (){
                    Navigator.pushNamed(context, SecondScreen.id);
                  }, child: Container(
                    color: Colors.white,
                    padding: EdgeInsets.all(22),
                    child: Text('next screen')))
                ],
              ),
            ],
          ),
        ),
      ),
      // padding => spacing for the same widget ( inner spacing )
      // margin => spacing for the same widget ( outer spacing )
      // widget tree => the hiecrarchy for the widgets in the same screen, or the position for the widgets in the screen.
    );
  }
}

// Single line cmnt

/* Multi lines cmnt

Container(
          width: 120,
          height: 120,
          padding: EdgeInsets.all(12.0),
          color: Colors.red,
         ),

*/