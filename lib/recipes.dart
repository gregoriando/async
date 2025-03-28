import 'dart:convert';

import 'package:http/http.dart';

void main() {
  fetchRecipes();
  fetchPossibleRecipes(["ovo"]);
}

Future<List<dynamic>> fetchRecipes() async {
  String url =
      "https://gist.githubusercontent.com/gregoriando/01b26b554eba8e8c2d49beea64956a5e/raw/1c028a810130479bc81f9428d265f97c9b48eb39/recipes.json";
  Response response = await get(Uri.parse(url));
  return jsonDecode(response.body);

  //print(response.body);
  //print(response.statusCode);
  //print(jsonDecode(response.body)[0]);
  //for (dynamic recipe in listRecipes) {
  //print("Nome: ${recipe["nome"]} \n Ingredientes: ${recipe["ingredientes"]}");
}

fetchPossibleRecipes(List<String> listIngredients) async {
  List<dynamic> listRecipes = await fetchRecipes();
  List<String> possibleRecipes = [];

  //for(dynamic recipeDyn in listRecipes)
}
