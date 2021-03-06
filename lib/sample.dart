import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
//void main() =>
  //  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: Fud()));

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'main sample Project',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: const MyHomePage(title: 'stat over today for a good begining'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => MynewState();
}

class MynewState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Container(
          child: Center(
            child: Image(
              image: NetworkImage(
               // "https://docs.flutter.dev/assets/images/docs/catalog-widget-placeholder.png"
               "https://iotvnaw69daj.i.optimole.com/AXVzL2w.n2y9~6666f/w:auto/h:auto/q:90/https://www.codeinwp.com/wp-content/uploads/2017/08/before-starting-a-blog.jpg",
              ),
            ),
          ),
        ));
  }
}
