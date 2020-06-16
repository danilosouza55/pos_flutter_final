import 'package:aulaposaovivo09052020/constantes.dart';
import 'package:flutter/material.dart';

class TextoLabel {
  Widget criar(String texto, {Color cor, size: 22.0, negrito: FontWeight.normal}) {
    return Text(texto, style: TextStyle(color: cor ?? Constantes().corSecundaria, fontSize: size, fontWeight: negrito),);
  }
}