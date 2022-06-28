import 'package:flutter/material.dart';
import 'package:teste04_completo/widgets/widget_sobre.dart';

class HomePageSobre extends StatefulWidget {
  const HomePageSobre({Key? key}) : super(key: key);

  @override
  _HomePageSobreState createState() => _HomePageSobreState();
}

class _HomePageSobreState extends State<HomePageSobre> {
  @override
  Widget build(BuildContext context) {
    link = Uri.parse('https://teste00-futlsf.herokuapp.com/api-msg.php');
    return CardSobre();
  }
}