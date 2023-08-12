import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});
  static String id = '/SecondScreen';

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.brown,
      body: Padding(
        padding: EdgeInsets.zero,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Container(
                // transform: , => used to perform animation.
                alignment: Alignment.center,
                margin: EdgeInsets.symmetric(horizontal: size.width * .05),
                padding: EdgeInsets.symmetric(horizontal: size.width * .05),
                width: size.width * .5,
                height: size.height * .2,
                decoration: BoxDecoration(
                    // color: Colors.blue,
                    image: DecorationImage(
                        image: AssetImage('assets/icons/app_icon.png')),
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
                    gradient: LinearGradient(
                      begin: Alignment.bottomLeft,
                      end: Alignment.center,
                      colors: [
                      Colors.white,
                      Colors.red,
                      Colors.blue,
                      Colors.black,
                    ]),
                    // borderRadius:BorderRadius.all(Radius.circular(36.0)),
                    ),
                child: Text('Hello, again !'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

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