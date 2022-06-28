import 'package:flutter/material.dart';
import 'package:teste04_completo/pages/pages_tabelas.dart';


class HomePageTabela extends StatefulWidget {
  const HomePageTabela({Key? key}) : super(key: key);
  @override
  _HomePageTabelaState createState() => _HomePageTabelaState();
}

class _HomePageTabelaState extends State<HomePageTabela> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
          appBar: AppBar(
            toolbarHeight: 100, //Altura da AppBar
            title: const Text(
              "TABELAS",
              style: TextStyle(
                fontSize: 14,
                fontFamily: 'PlusJakartaSans',
              ),
            ),
            bottom: const TabBar(
                labelColor: Colors.white,
                indicatorColor: Colors.white,
                tabs: [
                  Tab(
                    text: "Grupo 01",
                  ),
                  Tab(
                    text: "Grupo 02",
                  ),
                  Tab(
                    text: "Grupo 03",
                  ),
                  Tab(
                    text: "Grupo 04",
                  ),
                ]),
          ),
          body: const TabBarView(
            children: [
              TabelaA(),
              TabelaB(),
              TabelaC(),
              TabelaD(),
            ],
          )),
    );
  }
}
