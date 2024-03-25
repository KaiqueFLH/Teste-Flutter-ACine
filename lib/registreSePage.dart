import 'package:flutter/material.dart';
import 'registreSePage.dart';

class RegistreSePage extends StatefulWidget {
  @override
  _RegistreSePageState createState() => _RegistreSePageState();
}

class _RegistreSePageState extends State<RegistreSePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 30, 30, 30),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 100.0),
          alignment: Alignment.topCenter,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => RegistreSePage(),
                            settings:
                                const RouteSettings(name: '/myHomePage')));
                  },
                  child: const Text('Login')),
              Image.asset('assets/images/logo.png'),
            ],
          ),
        ),
      ),
    );
  }
}
