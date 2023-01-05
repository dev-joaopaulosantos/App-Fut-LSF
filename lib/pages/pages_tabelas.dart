import 'package:flutter/material.dart';
import 'package:teste04_completo/widgets/widget_tabelas.dart';

// Class da página do grupo A
class TabelaA extends StatefulWidget {
  const TabelaA({Key? key}) : super(key: key);
  @override
  _TabelaAState createState() => _TabelaAState();
}

class _TabelaAState extends State<TabelaA> {
  @override
  Widget build(BuildContext context) {
    titulo = "GRUPO 1";
    link = Uri.parse(
          'https://teste00-futlsf.herokuapp.com/api-tabela-grupo-a.php');
    return cardTabelas();
  }
}

// Class da página do grupo B
class TabelaB extends StatefulWidget {
  const TabelaB({Key? key}) : super(key: key);
  @override
  _TabelaBState createState() => _TabelaBState();
}

class _TabelaBState extends State<TabelaB> {
  @override
  Widget build(BuildContext context) {
    titulo = "GRUPO 2";
    link = Uri.parse(
          'https://teste00-futlsf.herokuapp.com/api-tabela-grupo-b.php');
    return cardTabelas();
  }
}

// Class da página do grupo C
class TabelaC extends StatefulWidget {
  const TabelaC({Key? key}) : super(key: key);
  @override
  _TabelaCState createState() => _TabelaCState();
}

class _TabelaCState extends State<TabelaC> {
  @override
  Widget build(BuildContext context) {
    titulo = "GRUPO 3";
    link = Uri.parse(
          'https://teste00-futlsf.herokuapp.com/api-tabela-grupo-c.php');
    return cardTabelas();
  }
}

// Class da página do grupo D
class TabelaD extends StatefulWidget {
  const TabelaD({Key? key}) : super(key: key);
  @override
  _TabelaDState createState() => _TabelaDState();
}

class _TabelaDState extends State<TabelaD> {
  @override
  Widget build(BuildContext context) {
    titulo = "GRUPO 4";
    link = Uri.parse(
          'https://teste00-futlsf.herokuapp.com/api-tabela-grupo-d.php');
    return cardTabelas();
  }
}
