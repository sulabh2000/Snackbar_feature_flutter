import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Text('Snackbar'),
          leading: Icon(Icons.settings_backup_restore),
        ),
        body: MySecond(),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            print('hii');
          },
          child: Icon(Icons.message),
          backgroundColor: Colors.green,
        ),
      ),
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
    );
  }
}

class MySecond extends StatefulWidget {
  @override
  _MySecondState createState() => _MySecondState();
}

class _MySecondState extends State<MySecond> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              onPressed: () {
                //print('do it');
                Scaffold.of(context).showSnackBar(SnackBar(
                  content: Text('message sent successfully....'),
                  duration: Duration(seconds: 10),
                  backgroundColor: Colors.amberAccent,
                ));
              },
              child: Text('press'),
            )
          ],
        ),
      ),
    );
  }
}
