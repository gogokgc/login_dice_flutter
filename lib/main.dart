import 'package:flutter/material.dart';
import 'dice.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Dice game',
      home: LogIn(),
    );
  }
}

class LogIn extends StatefulWidget {
  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {

  TextEditingController controller = TextEditingController();
  TextEditingController controller2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Log in'),
        backgroundColor: Colors.redAccent,
        foregroundColor: Colors.white,
        centerTitle: true,
        leading: IconButton(icon: Icon(Icons.menu), onPressed: () {}),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.search), onPressed: () {})
        ],
      ),
      body: Builder(
        builder: (context) {
          return GestureDetector(
            onTap: () {
              FocusScope.of(context).unfocus();
            },
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Padding(padding: EdgeInsets.only(top: 50)),
                  Center(
                    child: Image(
                      image: AssetImage('images/chef.gif'),
                      width: 170,
                      height: 190,
                    ),
                  ),
                  Form(
                      child: Theme(
                          data: ThemeData(
                              primaryColor: Colors.teal,
                              inputDecorationTheme: InputDecorationTheme(
                                  labelStyle: TextStyle(
                                      color: Colors.teal,
                                      fontSize: 15
                                  )
                              )
                          ),
                          child: Container(
                            padding: EdgeInsets.all(40),
                            child: Column(
                              children: <Widget>[
                                TextField(
                                  controller: controller,
                                  decoration: InputDecoration(
                                      labelText: 'Enter "DICE"'
                                  ),
                                  keyboardType: TextInputType.emailAddress,
                                ),
                                TextField(
                                  controller: controller2,
                                  decoration: InputDecoration(
                                      labelText: 'Enter Passward'
                                  ),
                                  keyboardType: TextInputType.text,
                                  obscureText: true,
                                ),
                                Padding(padding: EdgeInsets.only(top: 50)),
                                ButtonTheme(
                                    child: ElevatedButton(
                                      onPressed: () {
                                        if (controller.text == 'DICE' &&
                                            controller2.text == '1234') {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(builder: (
                                                  BuildContext context) => Dice())
                                          );
                                        } else if (controller.text == 'DICE' &&
                                            controller2.text != '1234') {
                                          showSnackBarPassward(context);
                                        } else if (controller.text != 'DICE' &&
                                            controller2.text == '1234') {
                                          showSnackBarId(context);
                                        } else {
                                          showSnackBar(context);
                                        }
                                      },
                                      child: Text('Login'),
                                    )
                                )
                              ],
                            ),
                          )
                      )
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

void showSnackBar(BuildContext context) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(content:
      Text(
        'Please double check your Login info',
        textAlign: TextAlign.center,
      ),
      duration: Duration(seconds: 2),
      backgroundColor: Colors.blue,
    )
  );
}

void showSnackBarId(BuildContext context) {
  ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content:
      Text(
        'Please double check your ID info',
        textAlign: TextAlign.center,
      ),
        duration: Duration(seconds: 2),
        backgroundColor: Colors.blue,
      )
  );
}

void showSnackBarPassward(BuildContext context) {
  ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content:
      Text(
        'Please double check your Passward info',
        textAlign: TextAlign.center,
      ),
        duration: Duration(seconds: 2),
        backgroundColor: Colors.blue,
      )
  );
}