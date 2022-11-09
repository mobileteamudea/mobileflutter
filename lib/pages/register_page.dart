//import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:mis_libros/repository/firebase_api.dart';
import 'package:mis_libros/models/User.dart';
import 'package:mis_libros/pages/login_page.dart';
//import 'dart:convert';

//import '../firebase_api.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

enum Genre { masculino, femenino }

enum Favorites { aventura, fantasia, terror }

class _RegisterPageState extends State<RegisterPage> {
  final FirebaseApi _firebaseApi = FirebaseApi();
  final _name = TextEditingController();
  final _email = TextEditingController();
  final _password = TextEditingController();
  final _rePassword = TextEditingController();

  String data = "informacion";
  Genre? _genre = Genre.masculino;

  bool _aventura = false;
  bool _fantasia = false;
  bool _terror = false;
  Favorites? favorites = Favorites.aventura;

  //final DateTime _date = DateTime(2022,1,1);
  String buttonMsg = "Fecha de nacimiento";
  String bornDate = "";

  String _dataConverter(DateTime newData) {
    final DateFormat formater = DateFormat('yyyy-MM-dd');
    final String dateFormated = formater.format(newData);
    return dateFormated;
  }

  void _showSelectDate() async {
    final DateTime? newData = await showDatePicker(
        context: context,
        locale: const Locale("es", "CO"),
        initialDate: DateTime(2022, 6),
        firstDate: DateTime(1980, 1),
        lastDate: DateTime(2022, 12),
        helpText: "Fecha de nacimiento");

    if (newData != null) {
      setState(() {
        bornDate = _dataConverter(newData);
        buttonMsg = "Fecha de nacimiento: $bornDate";
      });
    }
  }

  void _registerUser(User user) async {
    var result = await _firebaseApi.registerUser(user.email, user.password);
    String msg = "";
    if (result == "invalid-email") {
      msg = "El correo electronico esta mal escrito";
    } else if (result == "email-already-in-use") {
      msg = "Ya existe una cuenta con ese correo electronico";
    } else if (result == "weak-password") {
      msg = "Debe utilizar una contraseña de minimo 6 digitos";
    } else if (result == "network-request-failed") {
      msg = "Revise su conexiona a internet";
    } else {
      msg = "Usario registrado con exito";
    }

    _showMsg(msg);

    if (msg == "Usario registrado con exito") {
      user.uid = result;
      print(result);
      _saveUser(user);
    }

    //SharedPreferences preferences = await SharedPreferences.getInstance();
    //preferences.setString("user", jsonEncode(user));
  }

  void _saveUser(User user) async {
    var result = await _firebaseApi.createUser(user);
    print(result);
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => const LoginPage()));
  }

  void _showMsg(String msg) {
    final scaffold = ScaffoldMessenger.of(context);
    scaffold.showSnackBar(SnackBar(
      content: Text(msg),
      action: SnackBarAction(
          label: 'Aceptar', onPressed: scaffold.hideCurrentSnackBar),
    ));
  }

  void _onRegisterButtonClicked() {
    setState(() {
      if (_password.text == _rePassword.text && _password.text.isNotEmpty) {
        String genre = "Masculino";
        String favoritos = "";
        if (_genre == Genre.femenino) {
          genre = "Femenino";
        }
        if (_aventura) favoritos = "$favoritos Aventura";
        if (_fantasia) favoritos = "$favoritos Fantasia";
        if (_terror) favoritos = "$favoritos Terror";

        var user = User("", _name.text, _email.text, _password.text, genre,
            favoritos, bornDate);
        _registerUser(user);
      } else {
        _showMsg("Las contraseñas deben de ser iguales");
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Image(image: AssetImage('assets/images/logo.png')),
                const SizedBox(
                  height: 16.0,
                ),
                TextFormField(
                  controller: _name,
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(), labelText: 'Nombre'),
                  keyboardType: TextInputType.text,
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
                      border: OutlineInputBorder(), labelText: 'Contraseña'),
                  keyboardType: TextInputType.text,
                ),
                const SizedBox(
                  height: 16.0,
                ),
                TextFormField(
                  obscureText: true,
                  controller: _rePassword,
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Repetir Contraseña'),
                  keyboardType: TextInputType.text,
                ),
                const SizedBox(
                  height: 16.0,
                ),
                Row(
                  children: [
                    Expanded(
                      child: ListTile(
                        title: const Text('Masculino'),
                        leading: Radio<Genre>(
                          value: Genre.masculino,
                          groupValue: _genre,
                          onChanged: (Genre? value) {
                            setState(() {
                              _genre = value;
                            });
                          },
                        ),
                      ),
                    ),
                    Expanded(
                      child: ListTile(
                        title: const Text('Femenino'),
                        leading: Radio<Genre>(
                          value: Genre.femenino,
                          groupValue: _genre,
                          onChanged: (Genre? value) {
                            setState(() {
                              _genre = value;
                            });
                          },
                        ),
                      ),
                    )
                  ],
                ),
                const Text(
                  "Generos Favoritos",
                  style: TextStyle(fontSize: 20),
                ),
                CheckboxListTile(
                  title: const Text("Aventura"),
                  value: _aventura,
                  selected: _aventura,
                  onChanged: (bool? value) {
                    setState(() {
                      _aventura = value!;
                    });
                  },
                ),
                CheckboxListTile(
                  title: const Text("Fantasia"),
                  value: _fantasia,
                  selected: _fantasia,
                  onChanged: (bool? value) {
                    setState(() {
                      _fantasia = value!;
                    });
                  },
                ),
                CheckboxListTile(
                  title: const Text("Terror"),
                  value: _terror,
                  selected: _terror,
                  onChanged: (bool? value) {
                    setState(() {
                      _terror = value!;
                    });
                  },
                ),
                ElevatedButton(
                  onPressed: () {
                    _showSelectDate();
                  },
                  child: Text(buttonMsg),
                ),
                const SizedBox(height: 16.0),
                ElevatedButton(
                  style: TextButton.styleFrom(
                      textStyle: const TextStyle(fontSize: 16)),
                  onPressed: () {
                    _onRegisterButtonClicked();
                  },
                  child: const Text("Register"),
                ),
                Text(
                  data,
                  style: const TextStyle(
                      fontSize: 12, fontStyle: FontStyle.italic),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
