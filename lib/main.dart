import 'package:flutter/material.dart';

void main() {
  var number = 0;

  double getValue() {
    return 12.88;
  }

  int intValue = 42;
  double doubleValue = 12.99;
  num numValue = getValue();

  print(number.runtimeType);
  print(doubleValue.runtimeType);
  print(numValue.runtimeType);

  String str = 'Dart';
  print('${str.toUpperCase()} - $intValue');

  print(1 == int.parse('1'));
  print('1' == 1.toString());
  print('3.14' == 3.14159.toStringAsFixed(2));

  List<int> list = [1, 2, 3];
  list.add(4);
  // list.addAll([5, 6, 7]);
  // list.remove(2); // по значению
  // list.removeAt(2); // по индексу
  // list.removeWhere((element) => element >= 5); // через функцию
  print('First: ${list.first}, Last: ${list.last}, Length: ${list.length}');

  // for(var i = 0; i < list.length; i++) {
  //   print(list[i]);
  // }
  // for(var el in list) {
  //   print(el);
  // }
  list.forEach((v) => print(v));

  Set<int> user = {1, 2}; // повторяющиеся элементы будут удалены

  void toup(String value) => { // функция ничего не возвращает
    print('${value.toUpperCase()}')
  };
  toup('code');

  dynamic dynamicData = 5;

  const Step = 2;

  String getModel({String title='', int value=0}) {
    return '$title - ${value ~/ 10}'; // ~ целое число
  }
  print(getModel(title: 'Model', value: 22));

  String hello(String name, String msg, [String device='']) {
    var res = '$name says $msg';
    if (device != '') {
      res = '$res from $device';
    }
    return res;
  }
  print(hello('Alex', 'Hello', 'Odessa'));

  int math(int a, String operator, int b) {
    int res;
    switch (operator) {
      case '+':
        res = a + b;
        break;
      case '-':
        res = a - b;
        break;
      default:
        res = 0;
    }
    return res;
  }

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
  MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  @override
  void initState() {
    super.initState();
  }

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
      body: SafeArea(
        child: Container(
          child: Image(
            image: NetworkImage(
                'https://flutter.dev/assets/homepage/carousel/slide_1-bg-4e2fcef9a7343692a5f7784d68241a786c57c79d55f0fe37e6b82a653d146b93.jpg'
            ),
            // image: AssetImage('images/a_dot_burr.jpeg'),
          ),
          margin: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
          // margin: EdgeInsets.fromLTRB(10.5, 10.5, 10.5, 10.5),
        ),
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
