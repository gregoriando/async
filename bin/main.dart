import 'dart:convert';

import 'package:dart_assincronismo/api_key.dart';
import 'package:http/http.dart';

void main() {
  sendDataAsync({
    "id": "050",
    "name": "Gregory",
    "lastName": "Freire",
    "balance": 5000,
  });
}

Future<List<dynamic>> requestData() async {
  String url = "https://api.github.com/gists/a27645d88e7d7891b50a75cfa26fcfff";
  Response response = await get(Uri.parse(url));
  return jsonDecode(response.body);
}

sendDataAsync(Map<String, dynamic> mapAccount) async {
  List<dynamic> listAccounts = await requestData();
  listAccounts.add(mapAccount);
  String content = jsonEncode(listAccounts);
  String url = "https://api.github.com/gists/a27645d88e7d7891b50a75cfa26fcfff";
  Response response = await post(
    Uri.parse(url),
    headers: {"Authorization": "Bearer $githubApiKey"},
    body: jsonEncode({
      "description": "account.json",
      "public": true,
      "files": {
        "accounts.json": {"content": content},
      },
    }),
  );
  print(response.body);
}
