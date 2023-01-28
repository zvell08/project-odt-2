
import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:untitled1/list-santri-page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            backgroundColor: Colors.grey[300],
            appBar: AppBar(title: Text('Quran')),
            body:

            Center(
                child: RegisterUser()
            )
        )
    );
  }
}

class RegisterUser extends StatefulWidget {

  RegisterUserState createState() => RegisterUserState();

}

class RegisterUserState extends State {

  bool visible = false ;

  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  Future userRegistration() async{

    setState(() {
      visible = true ;
    });

    String username = usernameController.text;
    String password = passwordController.text;

    // SERVER API URL
    var url = 'https://odt1.000webhostapp.com/register.php';

    //  Param Name.
    var data = {'name': username, 'password' : password};

    var response = await http.post(Uri.parse(url), body: json.encode(data));

    var message = jsonDecode(response.body);

    if(response.statusCode == 200){
      setState(() {
        visible = false;
      });
    }
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: new Text(message),
          actions: <Widget>[
            TextButton(
              child: new Text("OK"),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => listSantri(),),);
              },
            ),
          ],
        );
      },
    );

  }

  @override
  Widget build(BuildContext context) {


    return Scaffold(
        backgroundColor: Colors.deepPurpleAccent,
        body: SingleChildScrollView(
            child: Center(
              child: Column(
                children: <Widget>[

                  SizedBox(height: 75),


                  Padding(
                      padding: const EdgeInsets.all(12.0),

                      child: Text(' Registration ',
                          style: TextStyle(fontSize: 40))),

                  Divider(),

                  Container(
                      width: 280,
                      padding: EdgeInsets.all(10.0),
                      child: TextField(
                        controller: usernameController,
                        autocorrect: true,
                        decoration: InputDecoration(hintText: 'Enter Your Name Here'),
                      )
                  ),

                  Container(
                      width: 280,
                      padding: EdgeInsets.all(10.0),
                      child: TextField(
                        controller: passwordController,
                        autocorrect: true,
                        obscureText: true,
                        decoration: InputDecoration(hintText: 'Enter Your Password Here'),
                      )
                  ),
                  ElevatedButton(
                    child: Text('Button'),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => listSantri(),),);
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                        padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                        textStyle: TextStyle(
                            fontSize: 11)),
                  ),
                  Visibility(
                      visible: visible,
                      child: Container(
                          margin: EdgeInsets.only(bottom: 30),
                          child: CircularProgressIndicator()
                      )
                  ),

                ],
              ),
            )));
  }
}