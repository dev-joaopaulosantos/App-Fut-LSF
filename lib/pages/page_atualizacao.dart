import 'package:flutter/material.dart';
import 'package:teste04_completo/widgets/widget_atualizacao.dart';

class HomePageAtualizar extends StatefulWidget {
  const HomePageAtualizar({Key? key}) : super(key: key);
  @override
  _HomePageAtualizarState createState() => _HomePageAtualizarState();
}

class _HomePageAtualizarState extends State<HomePageAtualizar> {
  @override
  Widget build(BuildContext context) {
    link = Uri.parse('https://teste00-futlsf.herokuapp.com/api-msg.php');
    return CardAtualizacao();
  }
}
