import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:teste04_completo/pages/pages_jogadores_equipes.dart';
import 'package:teste04_completo/conexao.dart';

class HomePageEquipes extends StatefulWidget {
  const HomePageEquipes({Key? key}) : super(key: key);
  @override
  _HomePageEquipesState createState() => _HomePageEquipesState();
}

class _HomePageEquipesState extends State<HomePageEquipes> {
  @override
  Widget build(BuildContext context) {
    var link = Uri.parse('https://teste00-futlsf.herokuapp.com/api-equipes.php');
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100, //Altura da AppBar
        title: const Text(
          "EQUIPES",
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
                    height: 75,
                    margin: const EdgeInsets.only(
                        top: 15, right: 10, left: 10, bottom: 10),
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 209, 209, 209),
                        borderRadius: BorderRadius.circular(10)),
                    child: ListTile(
                      onTap: () {
                        if (snapshot.data![index]['id'] == 1) {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => BoaEsporte(),
                            ),
                          );
                        } else if (snapshot.data![index]['id'] == 2) {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => Maracoan(),
                            ),
                          );
                        } else if (snapshot.data![index]['id'] == 3) {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => Cabeceiras(),
                            ),
                          );
                        } else if (snapshot.data![index]['id'] == 4) {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => Corintinha(),
                            ),
                          );
                        } else if (snapshot.data![index]['id'] == 5) {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => LagoaDeFora(),
                            ),
                          );
                        } else if (snapshot.data![index]['id'] == 6) {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => FlamengoLag(),
                            ),
                          );
                        } else if (snapshot.data![index]['id'] == 7) {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => VilaNova(),
                            ),
                          );
                        } else if (snapshot.data![index]['id'] == 8) {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => EnganoDeCima(),
                            ),
                          );
                        } else if (snapshot.data![index]['id'] == 9) {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => Arsenal(),
                            ),
                          );
                        } else if (snapshot.data![index]['id'] == 10) {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => Tucuns(),
                            ),
                          );
                        } else if (snapshot.data![index]['id'] == 11) {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => Alazao(),
                            ),
                          );
                        } else if (snapshot.data![index]['id'] == 12) {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => Mororo(),
                            ),
                          );
                        } else if (snapshot.data![index]['id'] == 13) {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => Cabreiro(),
                            ),
                          );
                        } else if (snapshot.data![index]['id'] == 14) {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => BoaNova(),
                            ),
                          );
                        } else if (snapshot.data![index]['id'] == 15) {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => Cipo(),
                            ),
                          );
                        } else if (snapshot.data![index]['id'] == 16) {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => RealBrazuca(),
                            ),
                          );
                        }
                      },
                      leading: SizedBox(
                        width: 40,
                        height: 40,
                        child: CachedNetworkImage(
                          imageUrl: snapshot.data![index]['escudo'],
                        ),
                      ),
                      title: Text(
                        snapshot.data![index]['nome_equipe'],
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      subtitle: Row(
                        children: [
                          Text("Situação: "),
                          Text(snapshot.data![index]['situacao'].toString()),
                        ],
                      ),
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


//title: Text(snapshot.data![index]['nome']),
//subtitle: Text(snapshot.data![index]['email']),