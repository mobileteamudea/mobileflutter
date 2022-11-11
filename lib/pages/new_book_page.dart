import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class NewBooksPage extends StatefulWidget {
  const NewBooksPage({Key? key}) : super(key: key);



  @override
  State<NewBooksPage> createState() => _NewBooksPageState();
}

class _NewBooksPageState extends State<NewBooksPage> {

  final _name =TextEditingController();
  final _author =TextEditingController();
  final _page =TextEditingController();

  double _rating = 3.0;

  bool _accion = false, _aventura = false, _cienciaFiccion = false, _drama= false;
  bool _fantasia = false, _romance = false, _suspenso = false, _terror = false;

  void _saveBook() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Mis Libros"),
      ),
      body: Padding(
        padding:  const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
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
                controller: _author,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(), labelText: 'Autor'),
                keyboardType: TextInputType.text,
              ),
              const SizedBox(
                height: 16.0,
              ),
              TextFormField(
                controller: _page,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(), labelText: 'Numero de pagina'),
                keyboardType: TextInputType.text,
              ),
              const SizedBox(
                height: 16.0,
              ),
              RatingBar.builder(
                initialRating: 3,
                minRating: 1,
                direction: Axis.horizontal,
                allowHalfRating: true,
                itemCount: 5,
                itemPadding: const EdgeInsets.symmetric(horizontal: 4),
                itemBuilder: (context, _)=> const Icon(
                  Icons.star,
                  color: Colors.amber,
                ),
                onRatingUpdate: (rating){
                  _rating = rating;
                },
              ),
              const Text(
                'Generos Favoritos',
                style:
                TextStyle(fontSize: 20, fontStyle: FontStyle.italic),
              ),
              Row(
                children: [
                  Expanded(
                    child: CheckboxListTile(
                    title: const Text("Accion"),
                    value: _accion,
                    selected: _accion,
                    onChanged: (bool? value) {
                      setState(() {
                        _accion = value!;
                      });
                    },
                  ),
                  ),
                  Expanded(
                    child: CheckboxListTile(
                      title: const Text("Aventura"),
                      value: _aventura,
                      selected: _aventura,
                      onChanged: (bool? value) {
                        setState(() {
                          _aventura = value!;
                        });
                      },
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: CheckboxListTile(
                    title: const Text("Ciencia Ficcion"),
                    value: _cienciaFiccion,
                    selected: _cienciaFiccion,
                    onChanged: (bool? value) {
                      setState(() {
                        _cienciaFiccion = value!;
                      });
                    },
                  ),
                  ),
                  Expanded(
                    child: CheckboxListTile(
                      title: const Text("Drama"),
                      value: _drama,
                      selected: _drama,
                      onChanged: (bool? value) {
                        setState(() {
                          _drama = value!;
                        });
                      },
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: CheckboxListTile(
                    title: const Text("Fantasia"),
                    value: _fantasia,
                    selected: _fantasia,
                    onChanged: (bool? value) {
                      setState(() {
                        _fantasia = value!;
                      });
                    },
                  ),
                  ),
                  Expanded(
                    child: CheckboxListTile(
                      title: const Text("Romance"),
                      value: _romance,
                      selected: _romance,
                      onChanged: (bool? value) {
                        setState(() {
                          _romance = value!;
                        });
                      },
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: CheckboxListTile(
                    title: const Text("Suspenso"),
                    value: _suspenso,
                    selected: _suspenso,
                    onChanged: (bool? value) {
                      setState(() {
                        _suspenso = value!;
                      });
                    },
                  ),
                  ),
                  Expanded(
                    child: CheckboxListTile(
                      title: const Text("Terror"),
                      value: _terror,
                      selected: _terror,
                      onChanged: (bool? value) {
                        setState(() {
                          _terror = value!;
                        });
                      },
                    ),
                  )
                ],
              ),
              ElevatedButton(onPressed: (){
                _saveBook();
              }, child: const Text("Guardar Libro")
              ),
            ],
          ),
        ),
      ),
    );
  }
}
