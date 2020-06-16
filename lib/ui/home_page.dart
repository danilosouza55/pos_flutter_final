import 'package:aulaposaovivo09052020/constantes.dart';
import 'package:aulaposaovivo09052020/widgets/barra_titulo.dart';
import 'package:aulaposaovivo09052020/widgets/botao_padrao.dart';
import 'package:aulaposaovivo09052020/widgets/campo_texto.dart';
import 'package:aulaposaovivo09052020/widgets/texto_label.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//marcosdiasvendramini@yahoo.com.br

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final constantes = Constantes();
  final campoTexto = CampoTexto();
  final botaoPadrao = BotaoPadrao();
  final textoLabel = TextoLabel();

  final nomeController = TextEditingController();
  final foneController = TextEditingController();
  final emailController = TextEditingController();
  final valorController = TextEditingController();

  @override
  Widget build(BuildContext context) {

    final botaoSalvar = botaoPadrao.criarBotaoBarra(Icons.save, cliqueBarra,);
    final botaoLimpar = botaoPadrao.criarBotaoBarra(Icons.delete_forever, limparCampos,);

    return Scaffold(
      appBar: BarraTitulo().criar("Aula Ao Vivo Pós", botao1: botaoSalvar, botao2: botaoLimpar,),
      backgroundColor: constantes.corSecundaria,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            textoLabel.criar("Aula ao Vivo"),
            campoTexto.criar(nomeController, "Nome: ", "", TextInputType.text, top: 20.0,),
            campoTexto.criar(foneController, "Telefone: ", "", TextInputType.phone, left: 40.0,),
            campoTexto.criar(emailController, "E-mail: ", "@", TextInputType.emailAddress, right: 40.0),
            campoTexto.criar(valorController, "Valor: ", "R\$", TextInputType.number, tamanho: 25.0),
            botaoPadrao.criar("Enviar", enviarClique, icone: Icons.send, fontSize: 24.0),
          ],
        ),
      ),
    );
  }

  void enviarClique() {
    nomeController.text = "Olá Flutter";
  }

  void cliqueBarra() {
    emailController.text = "marcosdiasvendramini@yahoo.com.br";
  }

  void limparCampos() {
    nomeController.clear();
    foneController.clear();
    emailController.clear();
    valorController.clear();
  }
}
