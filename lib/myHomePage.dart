import 'package:flutter/material.dart';
import 'package:newprojecttest/myHomePage.dart';
import 'package:newprojecttest/registreSePage.dart';

class MyHomePage extends StatefulWidget {
  @override
  // ignore: library_private_types_in_public_api
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool _isObscure = true; // Variável _isObscure adicionada aqui

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
              Image.asset('assets/images/logo.png'),
              const SizedBox(height: 20),
              const Text(
                'Acesse sua Conta',
                style: TextStyle(color: Colors.white, fontSize: 25.0),
              ),
              const SizedBox(height: 70),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Cpf/Cnpj',
                    style: TextStyle(color: Colors.white, fontSize: 16.0),
                  ),
                  SizedBox(height: 10),
                  SizedBox(
                    width: 350.0,
                    height: 70.0,
                    child: TextField(
                      cursorColor: Colors.white30,
                      decoration: InputDecoration(
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Color.fromARGB(255, 255, 44, 44),
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(3.0)),
                        ),
                        hintText: 'Insira seu Cpf/Cnpj',
                        hintStyle: TextStyle(color: Colors.white30),
                        fillColor: Colors.black87,
                        filled: true,
                      ),
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16.0,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const Text(
                    'Senha',
                    style: TextStyle(color: Colors.white, fontSize: 16.0),
                  ),
                 const SizedBox(height: 10),
                  SizedBox(
                    width: 350.0,
                    height: 70.0,
                    child: Stack(
                      alignment: Alignment.centerRight,
                      children: [
                        TextField(
                          obscureText: _isObscure,
                          cursorColor: Colors.white30,
                          decoration: const InputDecoration(
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Color.fromARGB(255, 255, 44, 44),
                              ),
                              borderRadius: BorderRadius.all(Radius.circular(3.0)),
                            ),
                            hintText: 'Insira sua senha',
                            hintStyle: TextStyle(color: Colors.white30),
                            fillColor: Colors.black87,
                            filled: true,
                          ),
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 16.0,
                          ),
                        ),
                        IconButton(
                          icon: Icon(
                            _isObscure ? Icons.visibility_off : Icons.visibility,
                            color: Colors.white,
                          ),
                          onPressed: () {
                            setState(() {
                              _isObscure = !_isObscure;
                            });
                          },
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 350.0,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Esqueceu sua senha?',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12.0,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                        SizedBox(width: 5),
                        Text(
                          'Clique aqui!',
                          style: TextStyle(
                            color: Color.fromARGB(255, 255, 44, 44),
                            fontSize: 12.0,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 100),
              SizedBox(
                width: 350.0,
                height: 50.0,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => RegistreSePage(), settings: const RouteSettings(name: '/RegistreSe')));
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 255, 44, 44),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(3.0),
                    ),
                  ),
                  child: const Text(
                    'Entrar',
                    style: TextStyle(color: Colors.white, fontSize: 15.0),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Novo A-Cinante? ',
                    style: TextStyle(color: Colors.white, fontSize: 12.0),
                  ),
                  Text(
                    'Registre-se agora!',
                    style: TextStyle(
                      color: Color.fromARGB(255, 255, 44, 44),
                      fontSize: 12.0,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
