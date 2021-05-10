/* 
A API abaixo retorna uma frase aleatório sempre que uma nova
consulta GET é realizada.
Link da API: https://api.senac.estevaorada.com/api/frase
*/
import 'dart:convert';
import 'package:http/http.dart';

class FraseModel{

static List<String> frases = ['frase'];

 final String frase;
 final String autor;

  FraseModel({this.frase, this.autor} );

factory FraseModel.fromJson(Map json){
return FraseModel(
frase: json['frase'],
autor: json['autor'],
);
}

static Future<FraseModel> obterDados () async{
var url = Uri.parse('https://api.senac.estevaorada.com/api/frase');
var resposta = await get(url);
var json = jsonDecode(resposta.body);
return FraseModel.fromJson(json);
}





}
