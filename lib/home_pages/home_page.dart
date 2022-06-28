import 'package:flutter/material.dart';
import 'home_page_equipes.dart';
import 'home_page_mata_mata.dart';
import 'home_page_tabelas.dart';
import 'package:teste04_completo/pages/pages_primeira_fase.dart';
import 'package:teste04_completo/pages/page_atualizacao.dart';
import 'package:teste04_completo/pages/page_resultado_final.dart';
import 'package:teste04_completo/pages/page_sobre.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
          drawer: Drawer(
            // column holds all the widgets in the drawer
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    color: Color.fromARGB(255, 40, 104, 43),
                    height: 220,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          height: 60,
                          margin: const EdgeInsets.only(
                              top: 30, bottom: 8, left: 8, right: 8),
                          child: Column(
                            children: const [
                              Text(
                                "COPÃO URBANO-RURAL LAGOENSE 2022",
                                style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.white,
                                    fontFamily: 'PlusJakartaSans',
                                    height: 1.5),
                              ),
                            ],
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              margin: const EdgeInsets.only(
                                  top: 0, bottom: 0, left: 8, right: 8),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: const [
                                  Text(
                                    "Fut-LSF",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'PlusJakartaSans',
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              width: 200,
                              margin: EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.white),
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                              child: Padding(
                                padding: EdgeInsets.all(3.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: const [
                                    Text(
                                      'mobilefutlsf@gmail.com',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: 'PlusJakartaSans',
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 180,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          height: 40,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              TextButton(
                                onPressed: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) => HomePageEquipes()));
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  width: 130,
                                  height: 40,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: const [
                                      Text(
                                        'EQUIPES',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontFamily: 'PlusJakartaSans',
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 40,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              TextButton(
                                onPressed: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) => HomePageInfo()));
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  width: 130,
                                  height: 40,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: const [
                                      Text(
                                        'RESULTADO FINAL',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontFamily: 'PlusJakartaSans',
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 40,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              TextButton(
                                onPressed: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) =>
                                          HomePageAtualizar()));
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  width: 130,
                                  height: 40,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: const [
                                      Text(
                                        'ATUALIZAR APP',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontFamily: 'PlusJakartaSans',
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 40,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              TextButton(
                                onPressed: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) => HomePageSobre()));
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  width: 130,
                                  height: 40,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: const [
                                      Text(
                                        'SOBRE O APP',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontFamily: 'PlusJakartaSans',
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ]),
          ),
          appBar: AppBar(
            toolbarHeight: 100, //Altura da AppBar
            title: const Text(
              "1ª FASE",
              style: TextStyle(
                fontSize: 14,
                fontFamily: 'PlusJakartaSans',
              ),
            ),
            actions: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 55,
                    height: 32,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: const <BoxShadow>[
                        BoxShadow(
                          color: Color.fromARGB(148, 0, 0, 0),
                          blurRadius: 5.0,
                          offset: Offset(3, 3),
                        )
                      ],
                    ),
                    child: TextButton(
                      style: TextButton.styleFrom(
                        minimumSize: Size.zero,
                        padding: EdgeInsets.zero,
                        tapTargetSize: MaterialTapTargetSize.padded,
                        textStyle: const TextStyle(
                          fontSize: 14,
                        ),
                      ),
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => HomePageFaseDois()));
                      },
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Text(
                              "2ª Fase",
                              style: TextStyle(
                                color: Color.fromARGB(255, 40, 104, 43),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 55,
                    height: 32,
                    margin: EdgeInsets.only(left: 10, right: 25),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: const <BoxShadow>[
                        BoxShadow(
                          color: Color.fromARGB(148, 0, 0, 0),
                          blurRadius: 5.0,
                          offset: Offset(3, 3),
                        )
                      ],
                    ),
                    child: TextButton(
                      style: TextButton.styleFrom(
                        minimumSize: Size.zero,
                        padding: EdgeInsets.zero,
                        tapTargetSize: MaterialTapTargetSize.padded,
                        textStyle: const TextStyle(
                          fontSize: 14,
                        ),
                      ),
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => HomePageTabela()));
                      },
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Text(
                              "Tabelas",
                              style: TextStyle(
                                color: Color.fromARGB(255, 40, 104, 43),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
            bottom: const TabBar(
              labelColor: Colors.white,
              indicatorColor: Colors.white,
              tabs: [
                Tab(text: '1ª Rodada'),
                Tab(text: '2ª Rodada'),
                Tab(text: '3ª Rodada'),
              ],
            ),
          ),
          body: const TabBarView(
            children: [
              RodadaUm(),
              RodadaDois(),
              RodadaTres(),
            ],
          )),
    );
  }
}


//title: Text(snapshot.data![index]['nome']),
//subtitle: Text(snapshot.data![index]['email']),

// child: Container(
// decoration: BoxDecoration(
//   border: Border.all(color: Colors.white),
//   borderRadius: BorderRadius.circular(15.0),
// ),
// child: const Padding(
//   padding: EdgeInsets.only(
//       top: 2, bottom: 2, left: 5, right: 5),
//   child: Text(
//     'mobilefutlsf@gmail.com',
//     style: TextStyle(
//       color: Colors.white,
//       fontFamily: 'PlusJakartaSans',
//     ),
//   ),
// ),
// ),