import 'package:flutter/material.dart';
import 'package:teste04_completo/pages/pages_segunda_fase.dart';

class HomePageFaseDois extends StatefulWidget {
  const HomePageFaseDois({Key? key}) : super(key: key);

  @override
  _HomePageFaseDoisState createState() => _HomePageFaseDoisState();
}

class _HomePageFaseDoisState extends State<HomePageFaseDois> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
          appBar: AppBar(
            toolbarHeight: 100, //Altura da AppBar
            title: const Text(
              "MATA-MATA",
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
                    text: "Quartas",
                  ),
                  Tab(
                    text: "Semi Finais",
                  ),
                  Tab(
                    text: "Final",
                  ),
                ]),
          ),
          body: const TabBarView(
            children: [
              Quartas(),
              SemiFinais(),
              Final(),
            ],
          )),
    );
  }
}
