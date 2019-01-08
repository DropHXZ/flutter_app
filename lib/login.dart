import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    home: new MyLogin(),
  ));
}

class MyLogin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Login'),
      ),
      body: new MyLoginHome(title: 'title2'),
    );
  }
}

class MyLoginHome extends StatefulWidget {
  final String title;

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new MyLoginHomePage();
  }

  MyLoginHome({Key key, this.title}) : super(key: key);
}

class MyLoginHomePage extends State<MyLoginHome> {
  int counter = 1;
  ValueChanged _nameChange;

  @override
  void initState() {
    // TODO: implement build
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      drawer: new Drawer(
        child: new Text('drawer'),
      ),
      body: new Center(
        child: new Column(
          children: <Widget>[
            new TextField(
              maxLength: 10,
              onSubmitted: _nameChange,
            ),
            new RaisedButton(
              onPressed: _counterAdd,
              child: new Text('RaisedButton'),
            ),
            new Text('$counter')
          ],
        ),
      ),
    );
  }

  void _counterAdd() {
    setState(() {
      counter++;
    });
  }
}
