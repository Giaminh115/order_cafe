import 'package:flutter/material.dart';
import 'package:project_order_cafe/sign_in.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

void main() {
  runApp(const AppCoffee());
}

class AppCoffee extends StatelessWidget {
  const AppCoffee({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Kiểm tra Password
      debugShowCheckedModeBanner: false,  // debugShowCheckedModeBanner (gỡ hiển thị trạng thái kiểm tra)
      theme: ThemeData(   // 
        primaryColorDark: Colors.brown.shade300,
        primarySwatch: Colors.grey,
      ),
      home: Sign_In(),
    );
  }
}


//////////////////////////////////////
class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);


  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
    
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
     
        title: Text(widget.title),
      ),
      body: Center(
      
        child: Column(
         
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
