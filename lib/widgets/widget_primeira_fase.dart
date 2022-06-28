import 'package:teste04_completo/conexao.dart';
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

var link;

class CardPrimeiraFase extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FutureBuilder<List>(
          future: pegarDados(link),
          builder: (context, snapshot) {
            if (snapshot.hasError) {
              return const Center(
                child: Text('Erro ao carregar dados'),
              );
            }
            if (snapshot.hasData) {
              return ListView.builder(
                itemCount: snapshot.data!.length,
                itemBuilder: (context, index) {
                  return SizedBox(
                    child: Column(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(
                              left: 15.0, top: 15.0, right: 15.0, bottom: 0.0),
                          child: Container(
                            margin: const EdgeInsets.only(
                                left: 0.0, top: 20.0, right: 0.0, bottom: 0.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                SizedBox(
                                  width: 130,
                                  child: Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          const Icon(
                                            Icons.location_on,
                                            size: 15,
                                          ),
                                          Text(snapshot.data![index]
                                              ['local_partida']),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  width: 70,
                                  child: Column(
                                    children: [
                                      Text(
                                        snapshot.data![index]['grupo'],
                                        style: const TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color:
                                              Color.fromARGB(255, 40, 104, 43),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  width: 120,
                                  child: Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            children: [
                                              Text(snapshot.data![index]
                                                  ['data_partida']),
                                            ],
                                          ),
                                          Row(
                                            children: const [
                                              Icon(
                                                Icons.date_range,
                                                size: 15,
                                              ),
                                            ],
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(
                              left: 15.0, top: 5.0, right: 15.0, bottom: 15.0),
                          decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.circular(10)),
                          height:
                              100, //Altura do container de todas as informações
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              SizedBox(
                                width: 105,
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        SizedBox(
                                          width: 45,
                                          height: 45,
                                          child: CachedNetworkImage(
                                            imageUrl: snapshot.data![index]
                                                ['escudo_equipe_01'],
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(snapshot.data![index]
                                            ['nome_equipe_01']),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: 120,
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      decoration: const BoxDecoration(
                                        color:
                                            Color.fromARGB(255, 201, 201, 201),
                                        borderRadius: BorderRadius.only(
                                          bottomLeft: Radius.circular(10.0),
                                          bottomRight: Radius.circular(10.0),
                                        ),
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(snapshot.data![index]
                                              ['status_partida']),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      child: SizedBox(
                                        width: 120,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Column(
                                              children: [
                                                Text(
                                                  snapshot.data![index]
                                                      ['gols_equipe_01'],
                                                  style: const TextStyle(
                                                      fontSize: 25,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                )
                                              ],
                                            ),
                                            SizedBox(
                                              width: 20,
                                              child: Column(
                                                children: [
                                                  Text(snapshot.data![index][
                                                      'gols_penaltis_equipe_01']),
                                                ],
                                              ),
                                            ),
                                            Column(
                                              children: [
                                                Text(
                                                  snapshot.data![index]
                                                      ['vs_ou_x'],
                                                  style: const TextStyle(
                                                      fontSize: 22),
                                                )
                                              ],
                                            ),
                                            SizedBox(
                                              width: 20,
                                              child: Column(
                                                children: [
                                                  Text(snapshot.data![index][
                                                      'gols_penaltis_equipe_02'])
                                                ],
                                              ),
                                            ),
                                            Column(
                                              children: [
                                                Text(
                                                  snapshot.data![index]
                                                      ['gols_equipe_02'],
                                                  style: const TextStyle(
                                                      fontSize: 25,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                )
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Container(
                                      decoration: const BoxDecoration(
                                        color:
                                            Color.fromARGB(255, 201, 201, 201),
                                        borderRadius: BorderRadius.only(
                                          topRight: Radius.circular(10.0),
                                          topLeft: Radius.circular(10.0),
                                        ),
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(snapshot.data![index]
                                              ['status_penaltis']),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: 105,
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        SizedBox(
                                          width: 45,
                                          height: 45,
                                          child: CachedNetworkImage(
                                            imageUrl: snapshot.data![index]
                                                ['escudo_equipe_02'],
                                          ),
                                        )
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(snapshot.data![index]
                                            ['nome_equipe_02']),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  );
                },
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
