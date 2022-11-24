
import 'dart:convert';

import 'package:http/http.dart' as http;

import '../models/Result.dart';
class BookApi{

  Future<Result> getBooks(String parametro) async{
    final response = await http.get(Uri.parse("https://www.googleapis.com/books/v1/volumes?q=$parametro"));

    if(response.statusCode == 200){
      return Result.fromJson(jsonDecode(response.body));
    }else{
      throw Exception('Failed to load book');
    }

  }
}