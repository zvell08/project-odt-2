import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Quran Exam App'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Key centerKey = ValueKey<String>('bottom-sliver-list');

  int _nilai = 100;

  void _diketuk() {
    setState(() {
      _nilai - 8;
    });
  }

  void _terdiam() {
    setState(() {

    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 5.0),
          children: <Widget>[
            Container(
              margin: const EdgeInsets.only(top: 20.0, right: 30.0, left: 30.0),
              width: 310,
              height: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16.0),
                color: Colors.black,
              ),
              child: Row(
                children: [],
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 13, horizontal: 13),
              child: Image.asset('assets/image.png'),
            ), // Image Quran
            Container(),
          ],
        ),
      ),
    );
  }
}
