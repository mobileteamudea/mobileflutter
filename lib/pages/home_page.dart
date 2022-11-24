import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mis_libros/pages/books_store_page.dart';
import 'package:mis_libros/pages/login_page.dart';
import 'package:mis_libros/pages/my_books_page.dart';
import 'package:mis_libros/pages/searchbooks_page.dart';

import 'favorites_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}
/**
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
}*/

enum Menu {logout}
//class _MyHomePageState extends State<MyHomePage> {
class _HomePageState extends State<HomePage>  {
  //User userLoad = User.Empty();
  var currentPage = 0;
  late List<Widget> pages;
  getUser() async {
   // SharedPreferences preferences = await SharedPreferences.getInstance();
    //Map<String, dynamic> userMap = jsonDecode(preferences.getString("user")!);
    //userLoad = User.fromJson(userMap);
  }

  void _loadPages() {
    pages = [];
    pages.add(MyBooksPage());
    pages.add(SearcBookPage());
    pages.add(FavoritesPage());
    pages.add(BookStorePage());
  }

  @override
  void initState() {
    _loadPages();
    super.initState();
  }

  void _onItemTapped(int page){
    setState(() {
      currentPage = page;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.menu),
        // the App.build method, and use it to set our appbar title.
        title: Text("Mis Libros"),
        actions: <Widget>[
          PopupMenuButton <Menu>(
            onSelected: (Menu item){
              setState(() {
                if(item == Menu.logout){
                  FirebaseAuth.instance.signOut();
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LoginPage()));
                }
              });
            },
            itemBuilder: (BuildContext context) => <PopupMenuEntry<Menu>>[
              const PopupMenuItem(
                  value: Menu.logout, child: Text('Cerrar Session'))
            ],
          )
        ],
        backgroundColor: Colors.blue,
      ),
      body: IndexedStack(
        index: currentPage,
        children: pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentPage,
        type: BottomNavigationBarType.fixed,
        onTap: (page){
          _onItemTapped(page);
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.book, size: 20,),
            label: 'Mis Libros'
          ),
          BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.searchengin, size:20),
              label: 'Buscar'),
          BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.heart, size:20),
              label: 'Favoritos'),
          BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.store, size:20),
              label: 'Tiendas'),
        ],
      ),
    );
  }
}
