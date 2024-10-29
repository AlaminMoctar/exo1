import 'package:flutter/material.dart';
import 'package:exo/models/detail/article.dart';

class Artcl2 extends  StatelessWidget {
  const Artcl2({super.key});

  // Liste d'articles statique
  static const List<Map<String, dynamic>> articles = [
    {
      'title': 'Article 2',
      'description': 'Découvrez la liste de nos produits espace de vie',
      'date': '2024-08-15',
      'heure': '09:30:00'
    },
  ];

  @override
  Widget build(BuildContext ) {
    // Conteneur de la section de deuxième article
    return Container(
      child: SizedBox(
        height: 50,
        child: ListView.builder( // Liste dynamique d'articles
          itemCount: articles.length,// Liste dynamique d'articles
            itemBuilder: (context, index)
            { return Card(
                child: ListTile( // Liste avec un icon d'img, titre, description et date
                  leading: Image.asset('assets/images/sofa.png'),
                    title: Text(articles[index]['title']),
                    subtitle: Text(articles[index]['description']),
                    trailing: Text(articles[index]['date']),
                    onTap: () {
                      // Navigation vers la page de détails de l'article
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const article()));
                    }
                ),
              );
            }
        ),
      ),
    );
  }

}