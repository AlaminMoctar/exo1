import 'package:flutter/material.dart';

import '../home/widget/copyright.dart';
import '../home/widget/newletter.dart';

class article extends StatelessWidget {
  const article({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Banner supérieur
            Container(
              height: 50,
              color: Colors.white,
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Nos produit favoris', style: TextStyle(color: Colors.black),),
                  Row(
                    children: [
                      Text('la qualité'),
                      IconButton(icon: Icon(
                        Icons.person_rounded,
                        color: Color(0xff780aa5),
                        size: 25,
                      ),
                        onPressed: null, // Fonctionnalité à implémenter
                      )
                    ],
                  )
                ],
              ),
            ),

            // Section principale de l'article
            Container(
              height: 500,
              color: const Color(0xffccc6c6),
              child: SingleChildScrollView(
                child: Row(
                  children: [
                    // Image du produit
                    Image.asset('assets/images/sofa.png',
                    height: 500, width: 400,),
                    Expanded(child: Container(
                      decoration: const BoxDecoration(
                          color: Colors.white54,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20),
                          )
                      ),
                       padding: const EdgeInsets.all(10),
                      //color: Colors.white,
                       height: 140,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text('Welcome chez dosta'),
                          const Text('Description du produit 1'),
                          const Text('la qualité a bas prix'),

                          ElevatedButton(onPressed: () {}, // Fonctionnalité à implémenter
                            child: const Text ('Voir plus'),
                          ),
                          Expanded(child: Row(
                            children: [
                           Expanded(child: Container(
                             decoration: const BoxDecoration(
                                 color: Colors.blue,
                                 borderRadius: BorderRadius.only(
                                   topLeft: Radius.circular(20),
                                   topRight: Radius.circular(20),
                                 )
                             ),
                             padding: const EdgeInsets.all(10),
                             height: 6,
                             //color: Colors.cyanAccent,
                           ))

                            ],
                          ),
                          ),
                    ],
                      //width: 50,
                    )
                    ),
                    ),
                  ],
              ),
            )
            ),
           const SizedBox(height: 5,),//Espacement

            // Image secondaire
            Image.asset('assets/images/sofa.png',
              height: 120, width: 100,
            ),

            // Description du produit 1
            Container(
              padding: const EdgeInsets.only(
                // right: 15, top: 15
              ),
              color: Colors.white54,
              height: 155,
              width: 150,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('Produit 1'),
                  const Text('Description du produit1'),
                  const Text('Prix: 10 €'),
                  
                  //container contenant les icons stars marquer copmme produit favoris
                  Container(
                    //color: Colors.cyanAccent,
                    margin: const EdgeInsets.fromLTRB(10, 3, 10, 0),
                    child: const Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.star_rate,
                          color: Color(0xff780aa5),
                          size: 10,
                        ),
                        Icon(
                          Icons.star_rate,
                          color: Color(0xff780aa5),
                          size: 10,
                        ),
                        Icon(
                          Icons.star_rate,
                          color: Color(0xff780aa5),
                          size: 10,
                        ),Icon(
                          Icons.star_rate,
                          color: Color(0xff780aa5),
                          size: 10,
                        ),Icon(
                          Icons.star_half,
                          color: Color(0xff780aa5),
                          size: 10,
                        ),
                        SizedBox(width: 5,),
                        Text('4.5')
                      ],
                    ),
                  ),
                  // Bottom permettant de commander un produit
                  ElevatedButton(
                    onPressed: () {
                      // Logique de commande (par exemple, afficher un dialogue de confirmation)
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: const Text('Confirmation de commande'),
                            content: const Text('Êtes-vous sûr de vouloir commander cet article ?'),
                            actions: [
                              TextButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: const Text('Annuler'),
                              ),
                              TextButton(
                                onPressed: () {
                                  // Logique pour effectuer la commande
                                  Navigator.pop(context);
                                  // Afficher un message de confirmation
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    const SnackBar(content: Text('Commande effectuée !')),
                                  );
                                },
                                child: const Text('Commander'),
                              ),
                            ],
                          );
                        },
                      );
                    },
                    child: const Text('Commander'),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20,),//Espacement
            // Conteneur principal de la section présentant deux produits
          Container(
            height: 300, // Hauteur du conteneur
            color: Colors.white54, // Couleur de fond semi-opaque

            // Colonne organisant les éléments verticalement
            child: Column(
              children: [
                // Contenu défilant horizontalement (pour les produits)
                SingleChildScrollView(
                  child: Row(
                    children: [
                      // Premier produit (occupant la moitié de l'écran)
                      Expanded(child: Container(
                        margin: const EdgeInsets.all(10),// Marge autour du produit
                        height: 200,
                        decoration: const BoxDecoration(
                            color: Colors.white54,// Couleur de fond semi-opaque
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),// Coins arrondis du produit
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: Color(0xffccc6c6),// Couleur de l'ombre
                                spreadRadius: 4, // Étalement de l'ombre
                                blurRadius: 6, // Flou de l'ombre
                                offset: Offset(0, 3), // Décalage de l'ombre (bas et à droite)
                              )
                            ]
                        ),
                        child: Column(
                          children: [
                            // Image du produit (hauteur 100)
                            Container(
                              height: 100,
                              decoration: const BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.all(
                                    Radius.circular(10)
                                ),
                              ),
                              child: Column(
                                children: [
                                    // Affichage de l'image provenant du dossier assets
                                  Image.asset('assets/images/maj.jpg', width: 900, height: 100,
                                    fit: BoxFit.cover,// Remplit entièrement l'espace disponible
                                  ),
                                ],
                              ),
                            ),
                            // Informations sur le produit (prix, etc.)
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text('la qualité'),
                                const Text('10 €'),
                                const SizedBox(width: 5,),// Espacement horizontal

                                Stack(
                                  children: [
                                    // Bouton "J'aime" flottant sur l'image
                                    Positioned(
                                        child: MaterialButton(
                                            shape: const CircleBorder(),
                                            onPressed: () {},// Fonction à implémenter pour le clic
                                            child: const Icon(
                                              Icons.favorite_outline_rounded,
                                              color: Colors.cyanAccent,
                                              size: 30,
                                            )
                                        )),
                                  ],
                                ),
                              ],
                            ),
                            // Bouton "Voir plus"
                            ElevatedButton(onPressed: () {}, // Fonction à implémenter pour le clic
                              child: const Text ('Voir plus'),
                            ),
                          ],
                        ),
                      )),

                      // Deuxième produit (mêmes propriétés que le premier)
                      Expanded(child: Container(
                        margin: const EdgeInsets.all(10),
                        height: 200,
                        decoration: const BoxDecoration(
                          color: Colors.white54,
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                            boxShadow: [
                              BoxShadow(
                                color: Color(0xffccc6c6),
                                spreadRadius: 4,
                                blurRadius: 6,
                                offset: Offset(0, 3),
                              )
                            ]
                        ),
                        child: Column(
                          children: [
                            Container(
                              //color: Colors.cyanAccent,
                              height: 100,
                              decoration: const BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.all(
                                    Radius.circular(10)
                                ),

                              ),
                              child: Column(
                                children: [

                                  Image.asset('assets/images/couch.png', width: 900, height: 100,
                                    fit: BoxFit.cover,),

                                ],
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text('la qualité'),
                                const Text('10 €'),

                                const SizedBox(width: 5,),
                                Stack(
                                  children: [
                                    Positioned(

                                        child: MaterialButton(
                                            shape: const CircleBorder(),
                                            onPressed: () {},
                                            child: const Icon(
                                              Icons.favorite_outline_rounded,
                                              color: Colors.cyanAccent,
                                              size: 30,

                                            )

                                        )),
                                  ],
                                ),
                              ],
                            ),
                            ElevatedButton(onPressed: () {

                            }, child: const Text ('Voir plus'),
                            ),
                          ],
                        ),
                      )),

                    ],
                  ),
                )
              ],
            ),
          ),

            //Meme propriétés que l'autre conteneur c'est seulemnt les images qui sont diffèrrents
            Container(
              height: 300,
              color: Colors.white54,
              child: Column(
                children: [
                  SingleChildScrollView(
                    child: Row(
                      children: [
                        Expanded(child: Container(
                          margin: const EdgeInsets.all(10),
                          //color: Colors.black,
                          height: 200,
                          decoration: const BoxDecoration(
                              color: Colors.white54,
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                              boxShadow: [
                                BoxShadow(
                                  color: Color(0xffccc6c6),
                                  spreadRadius: 4,
                                  blurRadius: 6,
                                  offset: Offset(0, 3),
                                )
                              ]
                          ),
                          child: Column(
                            children: [
                              Container(
                                //color: Colors.cyanAccent,
                                height: 100,
                                decoration: const BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.all(
                                   Radius.circular(10)
                                  ),

                                ),
                                child: Column(
                                  children: [

                                    Image.asset('assets/images/grid1.jpg', width: 900, height: 100,
                                    fit: BoxFit.cover,),

                                  ],
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text('la qualité'),
                                  const Text('10 €'),

                                  const SizedBox(width: 5,),
                                  Stack(
                                    children: [
                                      Positioned(

                                          child: MaterialButton(
                                              shape: const CircleBorder(),
                                              onPressed: () {},
                                              child: const Icon(
                                                Icons.favorite_outline_rounded,
                                                color: Colors.cyanAccent,
                                                size: 30,

                                              )

                                          )),
                                    ],
                                  ),
                                ],
                              ),
                              ElevatedButton(onPressed: () {

                              }, child: const Text ('Voir plus'),
                              ),
                            ],
                          ),
                        )),
                        Expanded(child: Container(
                          margin: const EdgeInsets.all(10),
                          height: 200,
                          decoration: const BoxDecoration(
                              color: Colors.white54,
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                              boxShadow: [
                                BoxShadow(
                                  color: Color(0xffccc6c6),
                                  spreadRadius: 4,
                                  blurRadius: 6,
                                  offset: Offset(0, 3),
                                )
                              ]
                          ),
                          child: Column(
                            children: [
                              Container(
                                //color: Colors.cyanAccent,
                                height: 100,
                                decoration: const BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.all(
                                      Radius.circular(10)
                                  ),

                                ),
                                child: Column(
                                  children: [

                                    Image.asset('assets/images/post-2.jpg', width: 900, height: 100,
                                      fit: BoxFit.cover,),

                                  ],
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text('la qualité'),
                                  const Text('10 €'),

                                  const SizedBox(width: 5,),
                                  Stack(
                                    children: [
                                      Positioned(

                                          child: MaterialButton(
                                              shape: const CircleBorder(),
                                              onPressed: () {},
                                              child: const Icon(
                                                Icons.favorite_outline_rounded,
                                                color: Colors.cyanAccent,
                                                size: 30,

                                              )

                                          )),
                                    ],
                                  ),
                                ],
                              ),
                              ElevatedButton(onPressed: () {

                              }, child: const Text ('Voir plus'),
                              ),
                            ],
                          ),
                        )),

                      ],
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(child: Newsletter(),),//widget de newsletter
            //widget de copyright
            SizedBox(child: Copyright(
              appName: 'Dosta',
              email: 'contact@monapplication.com',
              socialIcons: [
                IconButton( icon: const Icon(Icons.facebook_outlined),
                  onPressed: () {},),
                IconButton( icon: const Icon(Icons.telegram_outlined),
                  onPressed: () {},),
                IconButton( icon: const Icon(Icons.install_mobile),
                  onPressed: () {},)
              ],
            ),)

        ],
        ),


    )
    );

  }

}