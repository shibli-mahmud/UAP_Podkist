import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      alignment: Alignment.center,
      color: const Color(0xff150939),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Image.asset('assets/images/logo1.png'),
          const Text("Welcome!",
              style: TextStyle(
                  color: Colors.white, fontFamily: 'Caveat', fontSize: 40)),
          const Text(
            "Signin to continue",
            style: TextStyle(
                color: Colors.white, fontFamily: 'Ubuntu', fontSize: 10),
          ),
          Form(
            child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(labelText: 'E-mail'),
                )
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
