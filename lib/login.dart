import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  LoginPage({Key? key}) : super(key: key);

  String email = "";
  String password = "";

  @override
  Widget build(BuildContext context) {
    return SafeArea (
      child: Scaffold(
        appBar: AppBar(
          title: Text("Login Screen",
          style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        body : Column (
            children: [
              _pic(),
              _emailField(),
              _passwordField(),
              _loginButton(context),
              _forgotPassword(context),
            ]
        ),
      ),
    );
  }

  Widget _pic() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical:10),
      margin: EdgeInsets.fromLTRB(0, 200, 0, 30),
      child: Image.asset(
        'images/logo.png',
        height: 30,
        width: 30,
      ),
      );
  }
  Widget _emailField() {
    return  Container(
      padding:EdgeInsets.symmetric(horizontal: 30, vertical:10),
      child: TextFormField(
        enabled : true,
        onChanged: (value) {
          email = value;
        },
        decoration: const InputDecoration(
          hintText: '   Email',
          contentPadding: const EdgeInsets.all(10.0),
          border: OutlineInputBorder(
            borderRadius:
            BorderRadius.all (Radius.circular(50.0),
            ),
          ),
        ),
      ),
    );
  }

  Widget _passwordField() {
    return  Container(
      padding:EdgeInsets.symmetric(horizontal: 30, vertical:10),
      child: TextFormField(
        obscureText: true,
        decoration: const InputDecoration(
          hintText: '   Password',
          contentPadding: const EdgeInsets.all(10.0),
          border: OutlineInputBorder(
            borderRadius:
            BorderRadius.all (Radius.circular(50.0),
            ),
          ),
        ),
      ),
    );
  }

  Widget _loginButton (BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 5),
      margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
      width: MediaQuery.of(context).size.width,
      child: ElevatedButton(
        onPressed: () {},
        child: const Text('Log In'),
      ),
    );
  }

  Widget _forgotPassword (BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 5),
      margin: EdgeInsets.only(top: 0.0),
      width: MediaQuery.of(context).size.width,
      child: TextButton (
        onPressed: () {},
        style: TextButton.styleFrom(
        primary: Colors.grey),
        child: const Text('Forgot password?'),
      ),
    );
  }
}