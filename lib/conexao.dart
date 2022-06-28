import 'dart:convert';
import "package:http/http.dart" as http;

Future<List> pegarDados( var link) async {
    var url = link;
    var response = await http.get(url);
    if (response.statusCode == 200) {
      return jsonDecode(utf8.decode(response.bodyBytes));
    } else {
      throw Exception('Erro ao carregar dados do servidor');
    }
  }