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
  var _nilai = 100;

  late int diketuk;
  late int terdiam;

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
              margin: const EdgeInsets.only(top: 20.0, right: 35.0, left: 35.0),
              width: 310,
              height: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16.0),
                color: Colors.green[800],
              ),
              child: Center(
                child: Row(
                  children: const [
                    SizedBox(width: 27),
                    Text(
                      'Surah Al-Baqarah      |',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(width: 30),
                    Text(
                      'Hal: 2',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ), // Banner
            Container(
              padding: const EdgeInsets.symmetric(vertical: 13, horizontal: 13),
              child: Image.asset('assets/image.png'),
            ), // Image Quran
            Container(
              margin: const EdgeInsets.only(top: 20.0),
              child: Column(
                children: [
                  Center(
                    child: Text(
                      '$_nilai',
                      style: const TextStyle(fontSize: 70),
                    ),
                  ),
                  const SizedBox(height: 40.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Ink(
                        decoration: const ShapeDecoration(
                          color: Color(0xff437cd1),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10.0),
                            bottomLeft: Radius.circular(10.0),
                          )),
                        ),
                        child: IconButton(
                          icon: const Icon(Icons.refresh),
                          color: Colors.white,
                          onPressed: () {},
                        ),
                      ),
                      SizedBox(
                        width: 250,
                        height: 48,
                        child: ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(const Color(0xff0d18de)),
                            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                             const RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(10.0),
                                  bottomRight: Radius.circular(10.0),
                                ),
                              ),
                            ),
                          ),
                          onPressed: () {},
                          child: const Text("Diketuk", style: TextStyle(fontSize: 20)),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 15.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Ink(
                        decoration: const ShapeDecoration(
                          color: Color(0xff437cd1),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10.0),
                            bottomLeft: Radius.circular(10.0),
                          )),
                        ),
                        child: IconButton(
                          icon: const Icon(Icons.refresh),
                          color: Colors.white,
                          onPressed: () {},
                        ),
                      ),
                      SizedBox(
                        width: 250,
                        height: 48,
                        child: ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(const Color(0xff0d18de)),
                            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                              const RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(10.0),
                                  bottomRight: Radius.circular(10.0),
                                ),
                              ),
                            ),
                          ),
                          onPressed: () {},
                          child: const Text("Diberitahu", style: TextStyle(fontSize: 20)),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 15.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Ink(
                        decoration: const ShapeDecoration(
                          color: Color(0xff437cd1),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10.0),
                            bottomLeft: Radius.circular(10.0),
                          )),
                        ),
                        child: IconButton(
                          icon: const Icon(Icons.refresh),
                          color: Colors.white,
                          onPressed: () {},
                        ),
                      ),
                      SizedBox(
                        width: 250,
                        height: 48,
                        child: ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(const Color(0xff0d18de)),
                            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                              const RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(10.0),
                                  bottomRight: Radius.circular(10.0),
                                ),
                              ),
                            ),
                          ),
                          onPressed: () {},
                          child: const Text("Salah Harokat", style: TextStyle(fontSize: 20)),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 15.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Ink(
                        decoration: const ShapeDecoration(
                          color: Color(0xff437cd1),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10.0),
                            bottomLeft: Radius.circular(10.0),
                          )),
                        ),
                        child: IconButton(
                          icon: const Icon(Icons.refresh),
                          color: Colors.white,
                          onPressed: () {},
                        ),
                      ),
                      SizedBox(
                        width: 250,
                        height: 48,
                        child: ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(const Color(0xff0d18de)),
                            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                              const RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(10.0),
                                  bottomRight: Radius.circular(10.0),
                                ),
                              ),
                            ),
                          ),
                          onPressed: () {},
                          child: const Text("Berhenti Lama", style: TextStyle(fontSize: 20)),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ), // Score & Button
            Container(
              margin: const EdgeInsets.only(top: 30.0, left: 20.0, right: 20.0),
              child: const TextField(
                maxLines: 10,
                decoration: InputDecoration.collapsed(hintText: "Note Here..."),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
