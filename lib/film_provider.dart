import 'package:flutter/material.dart';

class FilmProvider with ChangeNotifier {
  final List<Map<String, String>> _films = [
    {
      'title': 'Harry Potter',
      'image': 'https://images.epagine.fr/772/9781781108772_1_75.jpg',
      'details': 'Harry Potter is a show about...'
    },
    {
      'title': 'Hanger game',
      'image':
          'https://cdn1.booknode.com/book_cover/1151/full/hunger-games-le-guide-officiel-du-film-1150842.jpg',
      'details': 'Hanger game is a show about...'
    },
    {
      'title': 'The legend',
      'image':
          'https://www.actusf.com/files/new_images/actualit%C3%A9s/Je%20suis%20une%20l%C3%A9gende%20-%20Titre.png',
      'details': 'The legend is a show about...'
    },
  ];

  List<Map<String, String>> get films => _films;

  Map<String, String> getFilmByIndex(int index) {
    return films[index];
  }
}
