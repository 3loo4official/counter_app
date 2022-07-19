import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({ Key? key }) : super(key: key);

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int counter = 1;
  @override
  void initState() 
  {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter'),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children:
          [
            TextButton(onPressed: ()
            {
              setState(() 
              {
                counter--;
                print(counter);
              });
            }
            , child: Text('MINUS',style: TextStyle(fontSize: 20),),),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Text('$counter',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 50),),
            ),
            TextButton(onPressed: ()
            {
                setState(() 
              {
                counter++;
                print(counter);
              });
            },
             child: Text('PLUS',style: TextStyle(fontSize: 20),),),
    
          ],
        ),
      ),
    );
  }
}