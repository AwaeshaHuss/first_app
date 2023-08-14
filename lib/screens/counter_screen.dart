import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});
  static String id = '/CounterScreen';

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {

int value = 0;

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
            onTap: (){},
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
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: (){
                  value <=9 ?
                  setState(() {
                    value ++;
                  }) : null;
                },
                child: Padding(
                  padding: const EdgeInsets.all(12.0).copyWith(right: 12.0),
                  child: Icon(Icons.add),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0).copyWith(right: 12.0),
                child: Text('$value'),
              ),
              GestureDetector(
                onTap: (){
                  value >=1 ?
                  setState(() {
                    value --;
                  }) : null;
                },
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Icon(Icons.remove),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
