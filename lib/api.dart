import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:translator/translator.dart';

class translate_data {

  static Future<String> get_data(String word) async {
    final translator= GoogleTranslator();
    var translation = await translator.translate(word, to: 'en');
    print(translation);
    return (translation.toString());
  }
}