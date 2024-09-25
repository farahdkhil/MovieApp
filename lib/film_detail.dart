import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'film_provider.dart';

class FilmDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final int index = ModalRoute.of(context)!.settings.arguments as int;
    final filmProvider = Provider.of<FilmProvider>(context);
    final films = filmProvider.getFilmByIndex(index);

    return Scaffold(
      appBar: AppBar(
        title: Text(films['title']!),
        backgroundColor: Color.fromARGB(255, 222, 74, 44),
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(films['image']!),
            SizedBox(height: 15),
            Center(
              child: Text(
                films['title']!,
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
            Text(
              films['details']!,
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
