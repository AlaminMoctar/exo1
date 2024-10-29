import 'package:exo/models/home/widget/categorie.dart';
import 'package:exo/models/home/widget/cherche.dart';
import 'package:exo/models/home/widget/entete.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12,
      // Zone de contenu scrollable
      body: const SingleChildScrollView(
        // Empilement des éléments de contenu
        child: Stack(
          children: [
            // Colonne pour organiser verticalement le contenu principal
            Column(
              children: [
                Entete(),// widget d'entete
                Cherche(),//widget de recherche
                Cat(),//widget de section catègorie pour les articles
              ],
            ),
          ],
        ),
      ),

      // Barre de navigation inférieure pour la navigation
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_outline),
            label: 'Favoris',
          ),
          BottomNavigationBarItem(
            icon: Icon(
                Icons.contact_mail),
            label: 'Contact',
          ),

        ],
        // Index de l'élément sélectionné par défaut
        currentIndex: 0, // Set the initial selected index
        selectedItemColor: const Color(0xff780aa5),
        onTap: (index) {
          // Handle navigation or state changes based on the selected index

        },
      ),
    );
  }
}