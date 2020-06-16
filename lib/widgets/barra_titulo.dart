import 'package:aulaposaovivo09052020/constantes.dart';
import 'package:aulaposaovivo09052020/widgets/texto_label.dart';
import 'package:flutter/material.dart';

class BarraTitulo {
  Widget criar(String titulo, {Color corFundo, Color corTexto, centralizar = true, fontSize = 24.0, Widget botao1, Widget botao2}) {
    final constantes = Constantes();

    return AppBar(
      title: TextoLabel().criar(titulo, cor: corTexto ?? constantes.corSecundaria, size: fontSize),
      centerTitle: centralizar,
      backgroundColor: corFundo ?? constantes.corPrimaria,
      actions: <Widget>[
        botao1 ?? Container(),
        botao2 ?? Container(),
      ],
    );
  }
}