import 'package:flutter/material.dart';
import 'package:teste04_completo/widgets/widget_primeira_fase.dart';

// Classe da página da primeira rodada
class RodadaUm extends StatefulWidget {
  const RodadaUm({Key? key}) : super(key: key);
  @override
  _RodadaUmState createState() => _RodadaUmState();
}

class _RodadaUmState extends State<RodadaUm> {
  @override
  Widget build(BuildContext context) {
    link = Uri.parse('https://teste00-futlsf.herokuapp.com/api-rodada-um.php');
    return CardPrimeiraFase();
  }
}

// Classe da página da segunda rodada
class RodadaDois extends StatefulWidget {
  const RodadaDois({Key? key}) : super(key: key);
  @override
  _RodadaDoisState createState() => _RodadaDoisState();
}

class _RodadaDoisState extends State<RodadaDois> {
  @override
  Widget build(BuildContext context) {
    link =
        Uri.parse('https://teste00-futlsf.herokuapp.com/api-rodada-dois.php');
    return CardPrimeiraFase();
  }
}

// Classe da página da terceira rodada
class RodadaTres extends StatefulWidget {
  const RodadaTres({Key? key}) : super(key: key);
  @override
  _RodadaTresState createState() => _RodadaTresState();
}

class _RodadaTresState extends State<RodadaTres> {
  @override
  Widget build(BuildContext context) {
    link =
        Uri.parse('https://teste00-futlsf.herokuapp.com/api-rodada-tres.php');
    return CardPrimeiraFase();
  }
}
