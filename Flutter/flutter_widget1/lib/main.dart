import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('제목'),
      ),

      // 1. Text
//      body: Text('여기에 예제 작성'),

      // 2. Container
//        body: Container(
//          color: Colors.red,
//          width: 100,
//          height: 100,
//          padding: const EdgeInsets.all(8.0),
//          margin: const EdgeInsets.all(8.0),
//        ),

      // 3. Column
//        body: Column(
//          children: <Widget>[
//            Container(
//              color: Colors.red,
//              width: 100,
//              height: 100,
//              padding: const EdgeInsets.all(8.0),
//              margin: const EdgeInsets.all(8.0),
//            ),
//            Container(
//              color: Colors.green,
//              width: 100,
//              height: 100,
//              padding: const EdgeInsets.all(8.0),
//              margin: const EdgeInsets.all(8.0),
//            ),
//            Container(
//              color: Colors.blue,
//              width: 100,
//              height: 100,
//              padding: const EdgeInsets.all(8.0),
//              margin: const EdgeInsets.all(8.0),
//            ),
//          ],
//        ),

      // 4. Row
//        body: Row(
//          mainAxisSize: MainAxisSize.max, // 최대: max, 최소: min
//          mainAxisAlignment: MainAxisAlignment.center, // mainAxis는 Column의 경우 x축, Row의 경우 y축이 된다.
//          crossAxisAlignment: CrossAxisAlignment.center, // crossAxis는 mainAxis의 반대 축을 의미한다.
//          // 가운데 정렬: center, 왼쪽 정렬: start, 오른쪽 정렬: end
//          // 그 외 spaceEvenly, spaceBetween, spaceAround 등이 있다.
//          children: <Widget>[
//            Container(
//              color: Colors.red,
//              width: 100,
//              height: 100,
//              padding: const EdgeInsets.all(8.0),
//              margin: const EdgeInsets.all(8.0),
//            ),
//            Container(
//              color: Colors.green,
//              width: 100,
//              height: 100,
//              padding: const EdgeInsets.all(8.0),
//              margin: const EdgeInsets.all(8.0),
//            ),
//            Container(
//              color: Colors.blue,
//              width: 100,
//              height: 100,
//              padding: const EdgeInsets.all(8.0),
//              margin: const EdgeInsets.all(8.0),
//            ),
//          ],
//        ),

      // 5. Stack
      body: Stack(
        children: <Widget>[
          Container(
            color: Colors.red,
            width: 100,
            height: 100,
            padding: const EdgeInsets.all(8.0),
            margin: const EdgeInsets.all(8.0),
          ),
          Container(
            color: Colors.green,
            width: 80,
            height: 80,
            padding: const EdgeInsets.all(8.0),
            margin: const EdgeInsets.all(8.0),
          ),
          Container(
            color: Colors.blue,
            width: 60,
            height: 60,
            padding: const EdgeInsets.all(8.0),
            margin: const EdgeInsets.all(8.0),
          ),
        ],
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
