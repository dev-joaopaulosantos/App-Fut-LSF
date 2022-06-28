// ignore_for_file: deprecated_member_use
import 'package:flutter/material.dart';
import 'package:teste04_completo/conexao.dart';
import 'package:url_launcher/url_launcher.dart';

var link;

class CardAtualizacao extends StatelessWidget {
  launchApp(String url, BuildContext context) async {
    await canLaunch(url)
        ? await launch(url)
        : showDialog(
            context: context,
            builder: (BuildContext context) {
              return const AlertDialog(
                title: Text("Aviso!"),
                content: Text("Link Indisponível, Tente Mais Tarde!"),
              );
            },
          );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100, //Altura da AppBar
        title: const Text(
          "ATUALIZAÇÕES",
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
                  return Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Color.fromARGB(255, 209, 209, 209),
                    ),
                    margin: const EdgeInsets.only(
                        top: 20, bottom: 20, left: 15, right: 15),
                    height: 150,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(
                          height: 40,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Text(
                                "Versão Instalada: Fut-LSF v0.08",
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Color.fromARGB(255, 40, 104, 43),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [Text("Clique para baixar!")],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            TextButton(
                              onPressed: () {
                                launchApp(
                                    snapshot.data![index]["link_atualizacao"],
                                    context);
                              },
                              child: Container(
                                height: 45,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: Color.fromARGB(225, 40, 104, 43),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Row(
                                        children: [
                                          Text(
                                            snapshot.data![index]
                                                ["texto_atualizacao"],
                                            style: const TextStyle(
                                              fontSize: 16,
                                              color: Color.fromARGB(
                                                  255, 255, 255, 255),
                                            ),
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
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
    );
  }
}
