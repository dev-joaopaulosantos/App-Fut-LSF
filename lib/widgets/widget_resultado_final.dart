import 'package:flutter/material.dart';
import 'package:teste04_completo/conexao.dart';
import 'package:cached_network_image/cached_network_image.dart';

var link;

class CardResultadoFinal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100, //Altura da AppBar
        title: const Text(
          "RESULTADO FINAL",
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
                    height: 80,
                    margin: const EdgeInsets.only(
                        top: 20, bottom: 15, left: 10, right: 10),
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 209, 209, 209),
                        borderRadius: BorderRadius.circular(10)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 8),
                          width: 50,
                          height: 50,
                          child: CachedNetworkImage(
                            imageUrl: snapshot.data![index]['escudo'],
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              children: [
                                Text(
                                  snapshot.data![index]['texto_titulo'],
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  snapshot.data![index]['nome'],
                                  style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromARGB(255, 40, 104, 43),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              children: [
                                Text(
                                  snapshot.data![index]['titulo_gols'],
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  snapshot.data![index]['gols'],
                                ),
                              ],
                            )
                          ],
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 8),
                          width: 30,
                          height: 30,
                          child: CachedNetworkImage(
                            imageUrl: snapshot.data![index]['trofeu'],
                          ),
                        )
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
