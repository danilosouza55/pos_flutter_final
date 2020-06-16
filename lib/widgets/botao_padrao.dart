import 'package:aulaposaovivo09052020/constantes.dart';
import 'package:aulaposaovivo09052020/widgets/texto_label.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BotaoPadrao {
  final constantes = Constantes();

  Widget criar(String texto, eventoClique, {Color corFundo, Color corTexto, IconData icone,
      tamanhoBotao = 150.0, fontSize = 20.0, left = 20.0, top = 10.0, right = 20.0, bottom = 10.0}) {
    return Padding(
      padding: EdgeInsets.fromLTRB(left, top, right, bottom),
      child: RaisedButton(
        color: corFundo ?? constantes.corPrimaria,
        child: Container(
          width: tamanhoBotao,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              icone != null ? _criarIcone(icone, corTexto ?? constantes.corSecundaria, fontSize) : Container(),
              TextoLabel().criar(texto, cor: corTexto ?? constantes.corSecundaria, size: fontSize),
            ],
          ),
        ),
        onPressed: eventoClique,
      ),
    );
  }

  Widget _criarIcone(IconData icone, Color cor, double tamanho) {
    return Padding(
      padding: EdgeInsets.only(right: 6.0),
      child: Icon(icone, color: cor, size: tamanho,),
    );
  }

  Widget criarBotaoBarra(IconData icone, eventoClique, {Color cor, tamanho: 30.0}) {
    return IconButton(
      icon: Icon(icone, color: cor ?? constantes.corSecundaria, size: tamanho,),
      onPressed: eventoClique,
    );
  }
}