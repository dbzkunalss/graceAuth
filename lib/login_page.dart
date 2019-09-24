import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String _email;
  String _password;

  final formKey = new GlobalKey<FormState>();
  void validateAndSave() {
    final form = formKey.currentState;
    if(form.validate())
      print('Valid form');
      else
      print('invalid form');
  }
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: Center(child: const Text('Grace Firebase Auth')),
      ),
      body: new Container(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: new Form(
            key: formKey,
            child: new Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                new TextFormField(
                  decoration: new InputDecoration(labelText: 'Email'),
                  validator: (value) => value.isEmpty?'Email cannot be empty':null ,
                ),
                new TextFormField(
                  decoration: new InputDecoration(labelText: 'Password'),
                  obscureText: true,
                  validator: (value) => value.isEmpty?'Passwrd cannot be empty':null ,

                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: new RaisedButton(
                    child: new Text(
                      'Login',
                      style: new TextStyle(
                          fontFamily: 'Calibre-Semibold', fontSize: 20.0),
                    ),
                    onPressed: validateAndSave,
                    color: Colors.blue,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
