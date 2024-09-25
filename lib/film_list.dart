import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'film_provider.dart';

class FilmList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final filmProvider = Provider.of<FilmProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Popular tv series'),
        backgroundColor: Color.fromARGB(255, 222, 74, 44),
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: ListView.builder(
          itemCount: filmProvider.films.length,
          itemBuilder: (context, index) {
            return Card(
              margin:
                  EdgeInsets.symmetric(vertical: 8.0), // espace bin les cards
              child: GestureDetector(
                onLongPress: () {
                  Navigator.pushNamed(
                    context,
                    '/details',
                    arguments: index,
                  );
                },
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.network(
                      filmProvider.films[index]['image']!,
                      height: 200,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Center(
                        child: Text(
                          filmProvider.films[index]['title']!,
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );

    // return Scaffold(
    //   appBar: AppBar(
    //     title: Text('Popular tv series'),
    //     backgroundColor: Color.fromARGB(255, 222, 74, 44),
    //   ),
    //   body: Padding(
    //     padding: const EdgeInsets.all(18.0),
    //     child: ListView.builder(
    //       itemCount: filmProvider.films.length,
    //       itemBuilder: (context, index) {
    //         return ListTile(
    //           leading: Image.network(filmProvider.films[index]['image']!),
    //           title: Text(filmProvider.films[index]['title']!),
    //           onLongPress: () {
    //             Navigator.pushNamed(
    //               context,
    //               '/details',
    //               arguments: index,
    //             );
    //           },
    //         );
    //       },
    //     ),
    //   ),
    // );
  }
}
