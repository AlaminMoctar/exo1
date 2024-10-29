
import 'package:exo/models/detail/article1.dart';
import 'package:exo/models/home/widget/article2.dart';
import 'package:flutter/material.dart';
import 'article3.dart';

class Cat extends  StatelessWidget {
 const  Cat({super.key});

 // Liste d'articles statique
static const List<Map<String, dynamic>> articles = [
 {
   'title': 'Article1',
   'description': 'Découvrez la liste de nos produits coin repas ',
   'date': '2024-09-1',
   'heure': '14:30:00'
 },
 ];
  @override
  Widget build(BuildContext) {
    // Conteneur de la section des catégories
    return Container(
      height: 300,
      decoration: const BoxDecoration(
        color: Color(0xffccc6c6),
        borderRadius: BorderRadius.only(// Bord arrondi en haut
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        )
      ),
      child: Column( // Disposition verticale du contenu
        children: [
          SizedBox(
            height: 90,
              //color: Colors.cyanAccent,
            child: ListView.builder( // Liste dynamique d'articles
                itemCount: articles.length, // Liste dynamique d'articles
            itemBuilder: (context, index)
              { return Card( // Carte pour chaque article
                  child: ListTile( // Liste avec un icon d'img, titre, description et date
                    leading: Image.asset('assets/images/c3.jpeg'),
                    title: Text(articles[index]['title']),
                    subtitle: Text(articles[index]['description']),
                    trailing: Text(articles[index]['date']),
                      onTap: () {
                        // Navigation vers la page de détails de l'article
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const article1()));
                    }
                  ),
                );
              },)
          ),

          // Affichage du deuxième article avec espacement
          const SizedBox(height: 90,
          child: Artcl2(),),

          // Affichage du troisième article avec espacement
          const SizedBox(height: 90,
          child: Article3(),)
        ],

      ),
    );

  }
}