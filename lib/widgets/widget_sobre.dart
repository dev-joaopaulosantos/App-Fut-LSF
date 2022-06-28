import 'package:flutter/material.dart';
import 'package:teste04_completo/conexao.dart';

var link;

class CardSobre extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 100, //Altura da AppBar
          title: const Text(
            "SOBRE O APP",
            style: TextStyle(
              fontSize: 14,
              fontFamily: 'PlusJakartaSans',
            ),
          ),
        ),
        body: FutureBuilder<List>(
          future: pegarDados(link),
          builder: (context, snapshot) {
            if (snapshot.hasError) {
              return Center(
                child: Text('${snapshot.error}'),
              );
            }
            if (snapshot.hasData) {
              return Center(
                child: ListView.builder(
                  itemCount: snapshot.data!.length,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Column(
                          children: [
                            Container(
                              margin: const EdgeInsets.only(
                                  top: 20, bottom: 20, left: 15, right: 15),
                              child: Text(
                                snapshot.data![index]["texto_sobre"],
                                style: const TextStyle(
                                    fontFamily: 'PlusJakartaSans',
                                    fontSize: 16,
                                    height: 1.5),
                              ),
                            ),
                          ],
                        ),
                        Container(
                          margin: const EdgeInsets.only(
                              top: 20, bottom: 20, left: 15, right: 15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: const [
                              Text(
                                "mobilefutlsf - 2022",
                                style: TextStyle(
                                    fontFamily: 'PlusJakartaSans',
                                    fontSize: 16,
                                    height: 1.5),
                              )
                            ],
                          ),
                        ),
                      ],
                    );
                  },
                ),
              );
            }

            return const Center(
              child: CircularProgressIndicator(),
            );
          },
        ),
      ),
    );
  }
}
