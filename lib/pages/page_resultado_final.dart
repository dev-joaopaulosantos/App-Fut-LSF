import 'package:flutter/material.dart';
import 'package:teste04_completo/widgets/widget_resultado_final.dart';

class HomePageInfo extends StatefulWidget {
  const HomePageInfo({Key? key}) : super(key: key);
  @override
  _HomePageInfoState createState() => _HomePageInfoState();
}

class _HomePageInfoState extends State<HomePageInfo> {
  @override
  Widget build(BuildContext context) {
    link = Uri.parse('https://teste00-futlsf.herokuapp.com/informacoes.php');
    return CardResultadoFinal();
  }
}