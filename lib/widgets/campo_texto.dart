import 'package:aulaposaovivo09052020/constantes.dart';
import 'package:flutter/material.dart';

class CampoTexto {
  final constantes = Constantes();

   Widget criar(TextEditingController controller, String label, String prefixo, TextInputType teclado,
       {Color cor, tamanho = 22.0, left = 20.0, top = 10.0, right = 20.0, bottom = 10.0}) {
     return Padding(
       padding: EdgeInsets.fromLTRB(left, top, right, bottom),
       child: TextField(
         controller: controller,
         decoration: InputDecoration(
           labelText: label,
           labelStyle: TextStyle(color: cor ?? constantes.corCampoTexto),
           border: OutlineInputBorder(),
           prefixText: prefixo,
         ),
         style: TextStyle(color: cor ?? constantes.corCampoTexto, fontSize: tamanho),
         keyboardType: teclado,
       ),
     );
   }
}