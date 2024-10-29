import 'package:flutter/material.dart';
import '../../detail/article3detail.dart';

class Article3 extends  StatelessWidget {
  const Article3({super.key});

  // Liste d'articles statique
  static const List<Map<String, dynamic>> articles = [
    {
      'title': 'Article 3',
      'description': 'Découvrez la liste de nos produits cosmotique',
      'date': '2024-07-15',
      'heure': '11:45:00'
    },
  ];

  @override
  Widget build(BuildContext ) {
    // Conteneur de la section de deuxième article
    return Container(
      child: SizedBox(
        height: 50,
        child: ListView.builder( // Liste dynamique d'articles
            itemCount: articles.length, // Liste dynamique d'articles
            itemBuilder: (context, index)
            { return Card(
                child: ListTile( // Liste avec un icon d'img, titre, description et date
                    leading: Image.asset('assets/images/image1.jpg'),
                    title: Text(articles[index]['title']),
                    subtitle: Text(articles[index]['description']),
                    trailing: Text(articles[index]['date']),
                    onTap: () {
                      // Navigation vers la page de détails de l'article
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const Article3Detail()));
                    }
                ),
              );
            }
        ),
      ),
    );
  }



}

