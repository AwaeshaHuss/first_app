import 'package:firstapp/screens/counter_screen.dart';
import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});
  static String id = '/SecondScreen';

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.zero,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(child: Container(color: Colors.amberAccent)),
            GestureDetector(
              onTap: (){
                Navigator.pushNamed(context, CounterScreen.id);
              },
              child: Container(
                alignment: Alignment.center,
                margin: EdgeInsets.symmetric(vertical: 12.0),
                width: 120,
                height: 120,
                color: Colors.black,
                child: Text('To Counter Screen', style: TextStyle(color: Colors.white),),
              ),
            )
          ],
        ),
      ),
    );
  }
}

//ex4
/*

Center(
              child: Container(
                width: 250,
                height: 250,
                child: Stack(
                  alignment: Alignment.center,
                  clipBehavior: Clip.none,
                  // => if the widget size is less than the parent widget, then show the inner widget will visible or not according to this prop.
                  children: [
                    Container(
                      width: 240,
                      height: 240,
                      color: Colors.grey,
                    ),
                    Container(
                      width: 230,
                      height: 230,
                      color: Colors.blue,
                    ),
                    Positioned(
                      top: 40, // => 20 == 20 px
                      right: -20,
                      child: Container(
                        width: 220,
                        height: 220,
                        color: Colors.red,
                      ),
                    ),
                  ],
                ),
              ),
            ),

*/

//ex3
/*

SizedBox(
              width: 120,
              height: 120,
              child: Card(
                color:  Color(0xffb74093),
                elevation: 16.0,
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                    color: Colors.black,
                    width: 4,
                  ),
                  borderRadius: BorderRadius.circular(24.0)
                ),
                child: Center(
                  child: Text('Hello'),
                ),
              ),
            ), // => a widget that, help in sizing the child widget.

*/

//ex2
/*

// Expanded(child: Container()),
              Center(
                child: Container(
                    // transform: , => used to perform animation.
                    // transform: Matrix4.rotationZ(30),
                    alignment: Alignment.center,
                    margin: EdgeInsets.symmetric(horizontal: size.width * .05, vertical: 12.0),
                    padding: EdgeInsets.symmetric(horizontal: size.width * .05),
                    width: size.width * .5,
                    height: size.height * .1,
                    decoration: BoxDecoration(
                      /*
                      // color: Colors.blue,
                      // image: DecorationImage(
                      //     image: AssetImage('assets/icons/app_icon.png')),
                      // shape: BoxShape.circle,
                      // border: Border(
                      //     top: BorderSide(
                      //   color: Colors.black,
                      //   width: 2.0,
                      // ),
                      // right: BorderSide(
                      //   color: Colors.black,
                      //   width: 2.0,
                      // ),
                      // ),
                      */
                      gradient: LinearGradient(
                          begin: Alignment.bottomLeft,
                          end: Alignment.topRight,
                          colors: [
                            Colors.white,
                            Colors.red,
                            Colors.blue,
                            Colors.red,
                            Colors.black,
                          ]),
                      borderRadius: BorderRadius.all(Radius.circular(36.0)),
                    ),
                    child: Text(
                      'Hello, again !',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 22.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
              ),

*/

// ex1
/*

Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [   
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 6.0),
                    width: 40,
                    height: 40,
                    color: Colors.black,
                  ),
                        
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 6.0),
                    width: 40,
                    height: 40,
                    color: Colors.blue,
                  ),
                        
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 6.0),
                    width: 40,
                    height: 40,
                    color: Colors.red,
                  ),
                ],
               ),

*/