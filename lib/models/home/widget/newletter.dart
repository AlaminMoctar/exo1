import 'package:flutter/material.dart';

class Newsletter extends StatelessWidget {
  const Newsletter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Contrôleurs pour les champs de saisie
    final TextEditingController nameController = TextEditingController();
    final TextEditingController emailController = TextEditingController();

    // Conteneur principal du formulaire
    return Container(
      padding: const EdgeInsets.all(16.0), // Marge intérieure du conteneur
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10), // Bords arrondis du formulaire
        boxShadow: [
          BoxShadow( // Effet d'ombre du formulaire
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 2, // Étalement de l'ombre
            blurRadius: 5, // Flou de l'ombre
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Column( // Disposition verticale des éléments du formulaire
        crossAxisAlignment: CrossAxisAlignment.start, // Alignement à gauche
        children: [
          // Titre du formulaire
          const Row(
            children: [
              Icon(Icons.email),
              SizedBox(width: 8),
              Text('Inscrivez-vous à notre newsletter'),
            ],
          ),
          const SizedBox(height: 16), // Espacement après le titre
          TextField(
            controller: nameController, // Association du contrôleur au champ
            decoration: const InputDecoration(
              labelText: 'Nom',
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(height: 16), // Espacement entre les champs
          TextField(
            controller: emailController, // Association du contrôleur au champ
            keyboardType: TextInputType.emailAddress, // Clavier adapté aux adresses email
            decoration: const InputDecoration(
              labelText: 'Email',
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(height: 16), // Espacement entre le champs et le bottom
          ElevatedButton(
            onPressed: () {
              // Action lors du clic sur le bouton
              // Actuellement, affiche les valeurs saisies dans la console
              print('Nom: ${nameController.text}');
              print('Email: ${emailController.text}');
            },
            child: const Text('S\'inscrire'),
          ),
        ],
      ),
    );
  }
}