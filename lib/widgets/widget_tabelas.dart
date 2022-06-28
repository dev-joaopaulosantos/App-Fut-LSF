import 'package:flutter/material.dart';
import 'package:teste04_completo/conexao.dart';
import 'package:cached_network_image/cached_network_image.dart';

String titulo = "";
var link;

class cardTabelas extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder<List>(
        future: pegarDados(link),
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return const Center(
              child: Text('Erro ao carregar usuarios'),
            );
          }

          if (snapshot.hasData) {
            return ListView(
              children: [
                SizedBox(
                  height: 60,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(titulo,
                          style: const TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                          ))
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 10, right: 10),
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 40, 104, 43),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10)),
                  ),
                  height: 40,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      SizedBox(
                          width: 140,
                          child: Center(
                            child: Text('Equipe',
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.bold)),
                          )),
                      SizedBox(
                          width: 30,
                          child: Center(
                            child: Text('P',
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.bold)),
                          )),
                      SizedBox(
                          width: 30,
                          child: Center(
                            child: Text('J',
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.bold)),
                          )),
                      SizedBox(
                          width: 30,
                          child: Center(
                            child: Text('V',
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.bold)),
                          )),
                      SizedBox(
                          width: 30,
                          child: Center(
                            child: Text('E',
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.bold)),
                          )),
                      SizedBox(
                          width: 30,
                          child: Center(
                            child: Text('D',
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.bold)),
                          )),
                      SizedBox(
                          width: 30,
                          child: Center(
                            child: Text('SG',
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.bold)),
                          )),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 10, right: 10),
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(232, 184, 184, 184),
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10)),
                  ),
                  height: 235,
                  child: ListView.builder(
                    itemCount: 4,
                    itemBuilder: (context, index) {
                      return SizedBox(
                        child: Column(
                          children: [
                            Column(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(0),
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      SizedBox(
                                        width: 140,
                                        child: Column(
                                          children: [
                                            Container(
                                              height: 55,
                                              decoration: const BoxDecoration(
                                                border: Border(
                                                  bottom: BorderSide(
                                                      width: 2.0,
                                                      color: Color(0xFF000000)),
                                                ),
                                              ),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  SizedBox(
                                                    child: CachedNetworkImage(
                                                      imageUrl:
                                                          snapshot.data![index]
                                                              ['escudo'],
                                                    ),
                                                    width: 28,
                                                    height: 28,
                                                  ),
                                                  Text(
                                                    snapshot.data![index]
                                                        ['equipe'],
                                                    style: const TextStyle(
                                                        fontSize: 15),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        color: Colors.grey,
                                        child: SizedBox(
                                          width: 30,
                                          child: Column(
                                            children: [
                                              Container(
                                                height: 55,
                                                decoration: const BoxDecoration(
                                                  border: Border(
                                                    bottom: BorderSide(
                                                        width: 2.0,
                                                        color:
                                                            Color(0xFF000000)),
                                                  ),
                                                ),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Text(snapshot.data![index]
                                                        ['pontos']),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 30,
                                        child: Column(
                                          children: [
                                            Container(
                                              height: 55,
                                              decoration: const BoxDecoration(
                                                border: Border(
                                                  bottom: BorderSide(
                                                      width: 2.0,
                                                      color: Color(0xFF000000)),
                                                ),
                                              ),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Text(snapshot.data![index]
                                                      ['jogos']),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        color: Colors.grey,
                                        child: SizedBox(
                                          width: 30,
                                          child: Column(
                                            children: [
                                              Container(
                                                height: 55,
                                                decoration: const BoxDecoration(
                                                  border: Border(
                                                    bottom: BorderSide(
                                                        width: 2.0,
                                                        color:
                                                            Color(0xFF000000)),
                                                  ),
                                                ),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Text(snapshot.data![index]
                                                        ['vitorias']),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 30,
                                        child: Column(
                                          children: [
                                            Container(
                                              height: 55,
                                              decoration: const BoxDecoration(
                                                border: Border(
                                                  bottom: BorderSide(
                                                      width: 2.0,
                                                      color: Color(0xFF000000)),
                                                ),
                                              ),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Text(snapshot.data![index]
                                                      ['empates']),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        color: Colors.grey,
                                        child: SizedBox(
                                          width: 30,
                                          child: Column(
                                            children: [
                                              Container(
                                                height: 55,
                                                decoration: const BoxDecoration(
                                                  border: Border(
                                                    bottom: BorderSide(
                                                        width: 2.0,
                                                        color:
                                                            Color(0xFF000000)),
                                                  ),
                                                ),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Text(snapshot.data![index]
                                                        ['derrotas']),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 30,
                                        child: Column(
                                          children: [
                                            Container(
                                              height: 55,
                                              decoration: const BoxDecoration(
                                                border: Border(
                                                  bottom: BorderSide(
                                                      width: 2.0,
                                                      color: Color(0xFF000000)),
                                                ),
                                              ),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Text(snapshot.data![index]
                                                      ['saldo_gols']),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
                Container(
                  margin:
                      EdgeInsets.only(top: 10, left: 15, bottom: 5, right: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        "Legenda",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 40, 104, 43),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  margin:
                      EdgeInsets.only(top: 5, bottom: 5, left: 15, right: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 90,
                        child: Column(
                          children: [
                            Row(
                              children: const [
                                Text(
                                  "P",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromARGB(255, 40, 104, 43),
                                  ),
                                ),
                                Text(" = Pontos")
                              ],
                            ),
                            Row(
                              children: const [
                                Text(
                                  "J",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromARGB(255, 40, 104, 43),
                                  ),
                                ),
                                Text(" = Jogos")
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 90,
                        child: Column(
                          children: [
                            Row(
                              children: const [
                                Text(
                                  "V",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromARGB(255, 40, 104, 43),
                                  ),
                                ),
                                Text(" = Vitórias")
                              ],
                            ),
                            Row(
                              children: const [
                                Text(
                                  "E",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromARGB(255, 40, 104, 43),
                                  ),
                                ),
                                Text(" = Empates")
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 130,
                        child: Column(
                          children: [
                            Row(
                              children: const [
                                Text(
                                  "D",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromARGB(255, 40, 104, 43),
                                  ),
                                ),
                                Text(" = Derrotas")
                              ],
                            ),
                            Row(
                              children: const [
                                Text(
                                  "SG",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromARGB(255, 40, 104, 43),
                                  ),
                                ),
                                Text(" = Saldo de Gols")
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
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
