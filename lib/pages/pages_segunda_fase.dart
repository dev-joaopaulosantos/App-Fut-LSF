import 'package:flutter/material.dart';
import 'package:teste04_completo/widgets/widget_segunda_fase.dart';


// Classe da página das quartas de final
class Quartas extends StatefulWidget {
  const Quartas({Key? key}) : super(key: key);
  @override
  _QuartasState createState() => _QuartasState();
}

class _QuartasState extends State<Quartas> {
  @override
  Widget build(BuildContext context) {
    link = Uri.parse(
          'https://teste00-futlsf.herokuapp.com/api-quartas-finais.php');
    return CardSegundaFase();
  }
}


// Classe da página das semi finais
class SemiFinais extends StatefulWidget {
  const SemiFinais({Key? key}) : super(key: key);
  @override
  _SemiFinaisState createState() => _SemiFinaisState();
}

class _SemiFinaisState extends State<SemiFinais> {
  @override
  Widget build(BuildContext context) {
    link =
          Uri.parse('https://teste00-futlsf.herokuapp.com/api-semi-finais.php');
    return CardSegundaFase();
  }
}


//Classe da página da final
class Final extends StatefulWidget {
  const Final({Key? key}) : super(key: key);
  @override
  _FinalState createState() => _FinalState();
}

class _FinalState extends State<Final> {
  @override
  Widget build(BuildContext context) {
    link = Uri.parse('https://teste00-futlsf.herokuapp.com/api-final.php');
    return CardSegundaFase();
  }
}