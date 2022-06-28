import 'package:flutter/material.dart';
import 'package:teste04_completo/widgets/widget_jogadores_equipes.dart';

// Classe da página de jogadores do Alazão
class Alazao extends StatefulWidget {
  const Alazao({Key? key}) : super(key: key);
  @override
  _AlazaoState createState() => _AlazaoState();
}

class _AlazaoState extends State<Alazao> {
  @override
  Widget build(BuildContext context) {
    titulo = "JOGADORES: ALAZÃO";
    link = Uri.parse(
        'https://teste00-futlsf.herokuapp.com/api-jogadores-alazao.php');
    return CardJogadores();
  }
}


// Classe da página de jogadores do arsenal
class Arsenal extends StatefulWidget {
  const Arsenal({Key? key}) : super(key: key);
  @override
  _ArsenalState createState() => _ArsenalState();
}

class _ArsenalState extends State<Arsenal> {
  @override
  Widget build(BuildContext context) {
    titulo = "JOGADORES: ARSENAL";
    link = Uri.parse(
        'https://teste00-futlsf.herokuapp.com/api-jogadores-arsenal.php');
    return CardJogadores();
  }
}


// Classe da página de jogadores do Boa Esporte
class BoaEsporte extends StatefulWidget {
  const BoaEsporte({Key? key}) : super(key: key);
  @override
  _BoaEsporteState createState() => _BoaEsporteState();
}

class _BoaEsporteState extends State<BoaEsporte> {
  @override
  Widget build(BuildContext context) {
    titulo = "JOGADORES: BOA ESPORTE";
    link = Uri.parse(
        'https://teste00-futlsf.herokuapp.com/api-jogadores-boa-esporte.php');
    return CardJogadores();
  }
}


// Classe da página de jogadores do Boa Nova
class BoaNova extends StatefulWidget {
  const BoaNova({Key? key}) : super(key: key);
  @override
  _BoaNovaState createState() => _BoaNovaState();
}

class _BoaNovaState extends State<BoaNova> {
  @override
  Widget build(BuildContext context) {
    titulo = "JOGADORES: BOA NOVA";
    link = Uri.parse(
        'https://teste00-futlsf.herokuapp.com/api-jogadores-boa-nova.php');
    return CardJogadores();
  }
}


// Classe da página de jogadores da Cabeceiras
class Cabeceiras extends StatefulWidget {
  const Cabeceiras({Key? key}) : super(key: key);
  @override
  _CabeceirasState createState() => _CabeceirasState();
}

class _CabeceirasState extends State<Cabeceiras> {
  @override
  Widget build(BuildContext context) {
    titulo = "JOGADORES: CABECEIRAS";
    link = Uri.parse(
        'https://teste00-futlsf.herokuapp.com/api-jogadores-cabeceiras.php');
    return CardJogadores();
  }
}



// Classe da página de jogadores do Cabreiro
class Cabreiro extends StatefulWidget {
  const Cabreiro({Key? key}) : super(key: key);
  @override
  _CabreiroState createState() => _CabreiroState();
}

class _CabreiroState extends State<Cabreiro> {
  @override
  Widget build(BuildContext context) {
    titulo = "JOGADORES: CABREIRO";
    link = Uri.parse(
        'https://teste00-futlsf.herokuapp.com/api-jogadores-cabreiro.php');
    return CardJogadores();
  }
}



// Classe da página de jogadores do Cipó
class Cipo extends StatefulWidget {
  const Cipo({Key? key}) : super(key: key);
  @override
  _CipoState createState() => _CipoState();
}

class _CipoState extends State<Cipo> {
  @override
  Widget build(BuildContext context) {
    titulo = "JOGADORES: CIPÓ";
    link = Uri.parse(
        'https://teste00-futlsf.herokuapp.com/api-jogadores-cipo.php');
    return CardJogadores();
  }
}


// Classe da página de jogadores do Corintinha
class Corintinha extends StatefulWidget {
  const Corintinha({Key? key}) : super(key: key);
  @override
  _CorintinhaState createState() => _CorintinhaState();
}

class _CorintinhaState extends State<Corintinha> {
  @override
  Widget build(BuildContext context) {
    titulo = "JOGADORES: CORINTINHA";
    link = Uri.parse(
        'https://teste00-futlsf.herokuapp.com/api-jogadores-corintinha.php');
    return CardJogadores();
  }
}


// Classe da página de jogadores do Engano de Cima
class EnganoDeCima extends StatefulWidget {
  const EnganoDeCima({Key? key}) : super(key: key);
  @override
  _EnganoDeCimaState createState() => _EnganoDeCimaState();
}

class _EnganoDeCimaState extends State<EnganoDeCima> {
  @override
  Widget build(BuildContext context) {
    titulo = "JOGADORES: ENGANO DE CIMA";
    link = Uri.parse(
        'https://teste00-futlsf.herokuapp.com/api-jogadores-engano-de-cima.php');
    return CardJogadores();
  }
}


// Classe da página de jogadores do Flamengo Lagoense
class FlamengoLag extends StatefulWidget {
  const FlamengoLag({Key? key}) : super(key: key);
  @override
  _FlamengoLagState createState() => _FlamengoLagState();
}

class _FlamengoLagState extends State<FlamengoLag> {
  @override
  Widget build(BuildContext context) {
    titulo = "JOGADORES: FLAMENGO LAGOENSE";
    link = Uri.parse(
        'https://teste00-futlsf.herokuapp.com/api-jogadores-flamengo-lag.php');
    return CardJogadores();
  }
}



// Classe da página de jogadores do Lagoa de Fora
class LagoaDeFora extends StatefulWidget {
  const LagoaDeFora({Key? key}) : super(key: key);
  @override
  _LagoaDeForaState createState() => _LagoaDeForaState();
}

class _LagoaDeForaState extends State<LagoaDeFora> {
  @override
  Widget build(BuildContext context) {
    titulo = "JOGADORES: LAGOA DE FORA";
    link = Uri.parse(
        'https://teste00-futlsf.herokuapp.com/api-jogadores-lagoa-de-fora.php');
    return CardJogadores();
  }
}


// Classe da página de jogadores do Maracoan
class Maracoan extends StatefulWidget {
  const Maracoan({Key? key}) : super(key: key);
  @override
  _MaracoanState createState() => _MaracoanState();
}

class _MaracoanState extends State<Maracoan> {
  @override
  Widget build(BuildContext context) {
    titulo = "JOGADORES: MARACOAN";
    link = Uri.parse(
        'https://teste00-futlsf.herokuapp.com/api-jogadores-maracoan.php');
    return CardJogadores();
  }
}



// Classe da página de jogadores do Mororo
class Mororo extends StatefulWidget {
  const Mororo({Key? key}) : super(key: key);
  @override
  _MororoState createState() => _MororoState();
}

class _MororoState extends State<Mororo> {
  @override
  Widget build(BuildContext context) {
    titulo = "JOGADORES: MORORÓ";
    link = Uri.parse(
        'https://teste00-futlsf.herokuapp.com/api-jogadores-mororo.php');
    return CardJogadores();
  }
}


// Classe da página de jogadores do Real Brazuca
class RealBrazuca extends StatefulWidget {
  const RealBrazuca({Key? key}) : super(key: key);
  @override
  _RealBrazucaState createState() => _RealBrazucaState();
}

class _RealBrazucaState extends State<RealBrazuca> {
  @override
  Widget build(BuildContext context) {
    titulo = "JOGADORES: REAL BRAZUCA";
    link = Uri.parse(
        'https://teste00-futlsf.herokuapp.com/api-jogadores-real-brazuca.php');
    return CardJogadores();
  }
}



// Classe da página de jogadores do Tucuns
class Tucuns extends StatefulWidget {
  const Tucuns({Key? key}) : super(key: key);
  @override
  _TucunsState createState() => _TucunsState();
}

class _TucunsState extends State<Tucuns> {
  @override
  Widget build(BuildContext context) {
    titulo = "JOGADORES: TUCUNS";
    link = Uri.parse(
        'https://teste00-futlsf.herokuapp.com/api-jogadores-tucuns.php');
    return CardJogadores();
  }
}



// Classe da página de jogadores do Vila Nova
class VilaNova extends StatefulWidget {
  const VilaNova({Key? key}) : super(key: key);
  @override
  _VilaNovaState createState() => _VilaNovaState();
}

class _VilaNovaState extends State<VilaNova> {
  @override
  Widget build(BuildContext context) {
    titulo = "JOGADORES: VILA NOVA";
    link = Uri.parse(
        'https://teste00-futlsf.herokuapp.com/api-jogadores-vila-nova.php');
    return CardJogadores();
  }
}