import 'package:flutter/material.dart';
import 'package:mis_libros/models/User.dart';
import 'package:mis_libros/pages/home_page.dart';
import 'package:mis_libros/pages/register_page.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';
import 'package:mis_libros/repository/firebase_api.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _password = TextEditingController();
  final _email = TextEditingController();
  final FirebaseApi _firebaseApi = FirebaseApi();

  User userLoad = User.Empty();

  void _showMsg(String msg) {
    final scaffold = ScaffoldMessenger.of(context);
    scaffold.showSnackBar(
      SnackBar(
        content: Text(msg),
        action: SnackBarAction(
            label: 'Aceptar', onPressed: scaffold.hideCurrentSnackBar),
      ),
    );
  }

  getUser() async{
    SharedPreferences preferences = await SharedPreferences.getInstance();
    Map<String, dynamic> userMap = jsonDecode(preferences.getString("user")!);
    userLoad = User.fromJson(userMap);
  }

  void _validateUser() async {
    if (_email.text.isEmpty || _password.text.isEmpty) {
      _showMsg("Debe digitar el correo y la contrasena");
    } else {
      var result = await _firebaseApi.logInUser(_email.text, _password.text);
      String msg = "";
      if (result == "invalid-email") {
        msg = "El correo electónico está mal escrito";
      } else if (result == "wrong-password") {
        msg = "Correo o contrasena incorrecta";
      } else if (result == "network-request-failed") {
        msg = "Revise su conexion a internet";
      } else {
        msg = "Bienvenido";
              // ignore: use_build_context_synchronously
        _showMsg(msg);
            if (msg == "Bienvenido"){
              Navigator.pushReplacement(
                  context, MaterialPageRoute(builder: (context) => const HomePage()));
        }
      }
    }
  }

  @override
  void initState(){
   // getUser();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget> [
              const Image(image: AssetImage('assets/images/logo.png')
              ),
              const SizedBox(
                height: 16.0,
              ),
              TextFormField(
                controller: _email,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Correo Electronico'),
                keyboardType: TextInputType.emailAddress,
              ),
              const SizedBox(
                height: 16.0,
              ),
              TextFormField(
                obscureText: true,
                controller: _password,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Contraseña'),
                keyboardType: TextInputType.visiblePassword,
              ),
              const SizedBox(
                height: 16.0,
              ),
              ElevatedButton(onPressed: (){
                _validateUser();
              }, child: const Text("Iniciar session")),
              const SizedBox(
                height: 16.0,
              ),
              TextButton(
                style: TextButton.styleFrom(
                  textStyle: const TextStyle(
                    fontSize: 16,
                    fontStyle: FontStyle.italic,
                    color: Colors.blue
                  )
                ),
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const RegisterPage()));
                  },
                  child: const Text("Registrese"),
                  ),
            ],
          ),
        ),
      ),
    );
  }
}
