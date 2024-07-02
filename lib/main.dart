import 'package:flutter/material.dart';

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

class LogIn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Log in'),
        backgroundColor: Colors.redAccent,
        centerTitle: true,
        leading: IconButton(icon: Icon(Icons.menu), onPressed: () {}),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.search), onPressed: () {})
        ],
      ),
      body: SingleChildScrollView(
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
                            decoration: InputDecoration(
                              labelText: 'Enter "DICE"'
                            ),
                            keyboardType: TextInputType.emailAddress,
                          ),
                          TextField(
                            decoration: InputDecoration(
                                labelText: 'Enter Passward'
                            ),
                            keyboardType: TextInputType.text,
                            obscureText: true,
                          ),
                          Padding(padding: EdgeInsets.only(top: 50)),
                          ButtonTheme(
                              child: ElevatedButton (
                                onPressed: () {

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
  }
}
