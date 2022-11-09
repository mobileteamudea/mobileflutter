import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:mis_libros/models/User.dart';
import 'dart:convert';
import 'dart:ui';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Home page',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Home page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  User userLoad = User.Empty();
  getUser() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    Map<String, dynamic> userMap = jsonDecode(preferences.getString("user")!);
    userLoad = User.fromJson(userMap);
  }

  @override
  void initState() {
    getUser();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.menu),
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
        actions: const [
          Icon(Icons.favorite),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Icon(Icons.search),
          ),
          Icon(Icons.more_vert),
        ],
        backgroundColor: Colors.purple,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
        child: Center(
          child: Column(
            children: const <Widget>[
              Image(image: AssetImage('assets/images/logo.png')),
              SizedBox(
                height: 16.0,
              ),
              Text(
                'Nombre del usuario: equipo  mobilteam',
                style:
                    TextStyle(fontSize: 20, fontStyle: FontStyle.italic),
              ),
              SizedBox(
                height: 16.0,
              ),
               Text(
                'Ubicacion en el : colombia',
                style:
                     TextStyle(fontSize: 20, fontStyle: FontStyle.italic),
              ),
              SizedBox(
                height: 16.0,
              ),
              Text(
                'Temperatura: 34°',
                style:
                     TextStyle(fontSize: 20, fontStyle: FontStyle.italic),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
