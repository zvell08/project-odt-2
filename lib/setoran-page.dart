import 'package:flutter/material.dart';

class SetoranPage extends StatefulWidget {
  const SetoranPage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<SetoranPage> createState() => _MySetoranState();
}

class _MySetoranState extends State<SetoranPage> {
  int _nilai = 100;

  int badge1 = 0;
  int badge2 = 0;
  int badge3 = 0;
  int badge4 = 0;

  bool isVisible1 = false;
  bool isVisible2 = false;
  bool isVisible3 = false;
  bool isVisible4 = false;

  void _diketuk() {
    setState(() {
      _nilai -= 2;
    });
  }
  void _rdiketuk() {
    setState((){
      _nilai += 2;
    });
  }
  void _diberitahu() {
    setState(() {
      _nilai -= 4;
    });
  }
  void _rdiberitahu() {
    setState(() {
      _nilai += 4;
    });
  }
  void _salahharokat() {
    setState(() {
      _nilai -= 5;
    });
  }
  void _rsalahharokat() {
    setState(() {
      _nilai += 5;
    });
  }
  void _berhentilama() {
    setState(() {
      _nilai -= 6;
    });
  }
  void _rberhentilama() {
    setState(() {
      _nilai += 6;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView(
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
                    Visibility(
                      visible: isVisible1,
                      child: Ink(
                        decoration: const ShapeDecoration(
                          color: Color(0xff437cd1),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10.0),
                            topRight: Radius.circular(10.0),
                            bottomLeft: Radius.circular(10.0),
                            bottomRight: Radius.circular(10.0),
                          )),
                        ),
                        child: IconButton(
                          icon: const Icon(Icons.refresh),
                          color: Colors.white,
                          onPressed: () {
                            badge1--;
                            _rdiketuk();
                            if (badge1 <= 0) {
                              isVisible1 = false;
                            }
                          },
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
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
                                topLeft: Radius.circular(10.0),
                                bottomRight: Radius.circular(10.0),
                                bottomLeft: Radius.circular(10.0),
                              ),
                            ),
                          ),
                        ),
                        onPressed: () {
                          badge1++;
                          _diketuk();
                          if (badge1 > 0) {
                            isVisible1 = true;
                          }
                        },
                        child: Text("Diketuk:  $badge1", style: TextStyle(fontSize: 20)),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 15.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Visibility(
                      visible: isVisible2,
                      child: Ink(
                        decoration: const ShapeDecoration(
                          color: Color(0xff437cd1),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10.0),
                            topRight: Radius.circular(10.0),
                            bottomLeft: Radius.circular(10.0),
                            bottomRight: Radius.circular(10.0),
                          )),
                        ),
                        child: IconButton(
                          icon: const Icon(Icons.refresh),
                          color: Colors.white,
                          onPressed: () {
                            _rdiberitahu();
                            badge2--;
                            if (badge2 <= 0) {
                              isVisible2 = false;
                            }
                          },
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
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
                                topLeft: Radius.circular(10.0),
                                bottomRight: Radius.circular(10.0),
                                bottomLeft: Radius.circular(10.0),                                ),
                            ),
                          ),
                        ),
                        onPressed: () {
                          badge2++;
                          _diberitahu();
                          if (badge2 > 0) {
                            isVisible2 = true;
                          }
                        },
                        child: Text("Diberitahu:  $badge2", style: TextStyle(fontSize: 20)),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 15.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Visibility(
                      visible: isVisible3,
                      child: Ink(
                        decoration: const ShapeDecoration(
                          color: Color(0xff437cd1),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10.0),
                            topRight: Radius.circular(10.0),
                            bottomLeft: Radius.circular(10.0),
                            bottomRight: Radius.circular(10.0),
                          )),
                        ),
                        child: IconButton(
                          icon: const Icon(Icons.refresh),
                          color: Colors.white,
                          onPressed: () {
                            _rsalahharokat();
                            badge3--;
                            if (badge3 <= 0) {
                              isVisible3 = false;
                            }
                          },
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
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
                                topLeft: Radius.circular(10.0),
                                bottomRight: Radius.circular(10.0),
                                bottomLeft: Radius.circular(10.0),
                              ),
                            ),
                          ),
                        ),
                        onPressed: () {
                          _salahharokat();
                          badge3++;
                          if (badge3 > 0) {
                            isVisible3 = true;
                          }
                        },
                        child: Text("Salah Harokat:  $badge3", style: TextStyle(fontSize: 20)),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 15.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Visibility(
                      visible: isVisible4,
                      child: Ink(
                        decoration: const ShapeDecoration(
                          color: Color(0xff437cd1),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10.0),
                            topRight: Radius.circular(10.0),
                            bottomLeft: Radius.circular(10.0),
                            bottomRight: Radius.circular(10.0),
                          )),
                        ),
                        child: IconButton(
                          icon: const Icon(Icons.refresh),
                          color: Colors.white,
                          onPressed: () {
                            badge4--;
                            _rberhentilama();
                            if (badge4 <= 0) {
                              isVisible4 = false;
                            }
                          },
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
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
                                topLeft: Radius.circular(10.0),
                                bottomRight: Radius.circular(10.0),
                                bottomLeft: Radius.circular(10.0),
                              ),
                            ),
                          ),
                        ),
                        onPressed: () {
                          _berhentilama();
                          badge4++;
                          if (badge4 > 0) {
                            isVisible4 = true;
                          }
                        },
                        child: Text("Berhenti Lama: $badge4", style: TextStyle(fontSize: 20)),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ), // Score & Button
          Container(
            margin: const EdgeInsets.only(top: 30.0, left: 40.0, right: 40.0, bottom: 30.0),
            child: const TextField(
              maxLines: 10,
              decoration: InputDecoration(
                hintText: "Note Here...",
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 3,
                      color: Colors.black38,
                    )
                ),
              ),
            ),
          ), // Note
          Padding(
            padding: const EdgeInsets.only(left: 40.0, right: 40.0, top: 10.0, bottom: 34.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton.icon(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.navigate_before,
                    size: 24.0,
                  ),
                  style: ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(Colors.red)),
                  label: const Text("Back"),
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(Colors.green)),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children:  const <Widget> [
                      Text('Next'),
                      SizedBox(width: 5),
                      Icon(Icons.navigate_next, size: 24.0),
                    ],
                  ),
                ),
              ],
            ),
          ), // Next or Back
        ],
      ),
    );
  }
}
