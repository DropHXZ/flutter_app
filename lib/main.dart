import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
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
    return new Scaffold(
      drawer: new Drawer(
        child: new Column(
          children: <Widget>[
            new Expanded(
                child: new Text(
              'data1',
              textAlign: TextAlign.start,
              style: new TextStyle(
                color: const Color(0xffff0000),
                decorationColor: const Color(0xff000000),
              ),
            )),
            new Expanded(child: new Text('data2')),
            new Text('666'),
            new Row(
              children: <Widget>[
                new Expanded(child: new Text('data4')),
                new Expanded(child: new Text('data3')),
              ],
            )
          ],
        ),
      ),
      appBar: new AppBar(
        title: new Text(widget.title),
      ),
      body: new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text(
              'You have pushed the button this many times:',
            ),
            new Text(
              '$_counter',
              style: Theme.of(context).textTheme.display1,
            ),
            new Container(
              constraints: new BoxConstraints.expand(height: 240.0),
              transform: new Matrix4.rotationZ(0.3),
              alignment: Alignment.center,
              margin: const EdgeInsets.all(10.0),
              child: new Text('hello world'),
              decoration: new BoxDecoration(
                borderRadius: new BorderRadius.all(new Radius.circular(20.0)),
                border: new Border.all(color: Colors.blue, width: 5.0),
                color: Colors.greenAccent,
                image: new DecorationImage(
                  image: new NetworkImage(
                      'http://h.hiphotos.baidu.com/zhidao/wh%3D450%2C600/sign=0d023672312ac65c67506e77cec29e27/9f2f070828381f30dea167bbad014c086e06f06c.jpg'),
                  centerSlice: new Rect.fromLTRB(270.0, 180.0, 1360.0, 730.0),
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: new FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: new Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
