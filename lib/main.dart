import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

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
        title: Text(widget.title),
      ),
      body: Center(
        child: Container(
          width: 400,
          height: 400,
          color: Colors.red[200],
          // child: Center(
          //   child: ConstrainedBox(
          //     constraints: BoxConstraints.tightFor(width: 120, height: 120),


            // child: ConstrainedBox(
            //   constraints: BoxConstraints(
            //     minWidth: 60,
            //     maxWidth: 120,
            //     minHeight: 60,
            //     maxHeight: 120,
            //   ).loosen(),

              // child: FractionallySizedBox(
              //   widthFactor: 0.5,
              //   heightFactor: 0.5,

              // child: SizedBox.expand(//透過.expand讓SizedBox填滿父級元素

              // child: SizedBox(
              //   width: 120,
              //   height: 120,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: LayoutBuilder(
                  builder: (BuildContext context, BoxConstraints constraints) {
                    print("constraints: $constraints");
                    return FlutterLogo();
                  },
                ),
              ),
          //   ),
          // ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
