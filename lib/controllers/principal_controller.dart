
import 'package:flutter/material.dart';
import 'package:frase_do_dia/models/frase_model.dart';

class MainController{
var palavra = TextEditingController();
var resultadoFrase = '';
var resultadoAutor = '';


 void buscar ()async{
var aux = FraseModel();
aux = await FraseModel.obterDados();
resultadoFrase = "Frase: ${aux.frase}";
resultadoAutor= "Autor ${aux.autor}";
}


}









