import 'package:flutter/material.dart';
import 'package:mis_libros/models/Result.dart';
import 'package:mis_libros/pages/detail_search_book_page.dart';
import 'package:mis_libros/repository/books_api.dart';

class SearcBookPage extends StatefulWidget {
  const SearcBookPage({Key? key}) : super(key: key);

  @override
  State<SearcBookPage> createState() => _SearcBookPageState();
}

class _SearcBookPageState extends State<SearcBookPage> {

  final _parametro = TextEditingController();
  final BookApi _bookApi = BookApi();

  List<Items> listBook = <Items>[];

  Future _searchBook() async{
      Result resultFuture = await _bookApi.getBooks(_parametro.text);
      setState(() {
        resultFuture.items?.forEach(
                (element) {
                  listBook.add(element);
                });
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
        child: Center(
          child: Column(
            children: <Widget>[
              TextFormField(
                controller: _parametro,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Digite libro o autor'),
                keyboardType: TextInputType.text,
              ),
              const SizedBox(
                height: 16.0,
              ),
              ElevatedButton(
                style: TextButton.styleFrom(
                  textStyle: const TextStyle(fontSize: 20)
                ),
                onPressed: (){
                  _searchBook();
                },
                child: const Text("Buscar Libro"),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: listBook.length,
                  itemBuilder: (BuildContext context, int index){
                    Items book = listBook[index];
                    return Card(
                      child: ListTile(
                        leading: Image.network(
                          book.volumeInfo?.imageLinks?.smallThumbnail ?? "",
                          errorBuilder: (BuildContext context,Object excepcion, StackTrace? stacktrace){
                            return const Image(image: AssetImage('assets/images/logo.png'),);
                          },
                        ),
                        title: Text(book.volumeInfo?.title ?? "No  title"),
                        subtitle: Text(book.volumeInfo?.publishedDate ?? "No publishedate"),
                        onTap: (){
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      DetailSearchBookPage(book)));
                        },
                      ),
                    );
                  }
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
