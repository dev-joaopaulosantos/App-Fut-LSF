import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:teste04_completo/conexao.dart';

var link;
String titulo = "";

class CardJogadores extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100, //Altura da AppBar
        title: Text(
          titulo,
          style: const TextStyle(
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
            return ListView.builder(
              itemCount: snapshot.data!.length,
              itemBuilder: (context, index) {
                return Container(
                  height: 85,
                  margin: const EdgeInsets.only(
                      top: 15, right: 10, left: 10, bottom: 10),
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 209, 209, 209),
                      borderRadius: BorderRadius.circular(10)),
                  child: SizedBox(
                    child: Center(
                      child: ListTile(
                        leading: const CircleAvatar(
                          backgroundColor: Color.fromARGB(255, 40, 104, 43),
                          child: Icon(Icons.person),
                        ),
                        title: Container(
                            height: 40,
                            margin: EdgeInsets.all(5),
                            child: Text(snapshot.data![index]['nome_jogador'])),
                        subtitle: SizedBox(
                          height: 30,
                          child: Row(
                            children: [
                              Container(
                                margin: EdgeInsets.only(left: 5, right: 10),
                                child: Row(
                                  children: [
                                    Text("Gols: "),
                                    Text(snapshot.data![index]['gols']),
                                  ],
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 5, right: 5),
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: 20,
                                      height: 20,
                                      child: CachedNetworkImage(
                                          imageUrl:
                                              'https://testeapiapp.joopp.repl.co/yellow_card.png'),
                                    ),
                                    Text(snapshot.data![index]
                                        ['cartao_amarelo']),
                                  ],
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 5, right: 5),
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: 20,
                                      height: 20,
                                      child: CachedNetworkImage(
                                          imageUrl:
                                              'https://testeapiapp.joopp.repl.co/red_card.png'),
                                    ),
                                    Text(snapshot.data![index]
                                        ['cartao_vermelho']),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        trailing: SizedBox(
                          width: 70,
                          height: 60,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const [
                                  Text(
                                    "Situação:",
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 40, 104, 43),
                                    ),
                                  )
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    snapshot.data![index]['situacao'],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
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
    );
  }
}
