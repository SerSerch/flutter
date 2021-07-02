import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Colors.deepOrangeAccent,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
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
        title: Text('Title bar $_counter'),
        centerTitle: true,
      ),
      body: Container(
        child: Image(
          image: NetworkImage(
              'https://flutter.dev/assets/homepage/carousel/slide_1-bg-4e2fcef9a7343692a5f7784d68241a786c57c79d55f0fe37e6b82a653d146b93.jpg'
          ),
          // image: AssetImage('images/a_dot_burr.jpeg'),
        ),
        margin: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        // margin: EdgeInsets.fromLTRB(10.5, 10.5, 10.5, 10.5),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        child: Icon(
          Icons.add_outlined,
          size: 35,
          color: Colors.white,
        ),
      ),
    );
  }
}
