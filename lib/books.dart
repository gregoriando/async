import 'dart:convert';

import 'package:http/http.dart';

void main() {
  fetchBooks("Machado de Assis");
}

fetchBooks(String author) async {
  String url =
      "https://raw.githubusercontent.com/alura-cursos/dart_assincronismo_api/aula05/.json/books.json";
  Response response = await get(Uri.parse(url));
  List<dynamic> listBooks = jsonDecode(response.body);

  List<dynamic> booksAuthor =
      listBooks.where((book) => book["author"] == author).toList();

  for (dynamic book in booksAuthor) {
    print("Titulo: ${book["title"]}");
  }
}
