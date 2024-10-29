import 'package:flutter/material.dart';

import '../home/widget/copyright.dart';
import '../home/widget/newletter.dart';

class Article3Detail extends StatelessWidget {
   const Article3Detail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
      ),

        // Conteneur principal permettant un défilement vertical
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Première section - Barre supérieure
            Container(
              height: 50,
              color: Colors.white,
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Nos produit favoris', style: TextStyle(color: Colors.black),),
                  Row(
                    // Rangée de droite avec icône et texte
                    children: [
                      Text('la qualité'),
                      IconButton(icon: Icon(
                        Icons.person_rounded,
                        color: Color(0xff780aa5),
                        size: 25,
                      ),
                        onPressed: null,// Fonctionnalité non implémentée
                      )
                    ],
                  )
                ],
              ),
            ),

            // Deuxième section - Image et description du premier produit
            Row(
              children: [
                Expanded(child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset('assets/images/img1.jpg', height: 150, width: 600,),
                  ],
                )),
              ],
            ),

            // Troisième section - Image en grand format
            Image.asset('assets/images/image1.jpg',
              fit: BoxFit.cover, width: 250, height: 100,),

            // Quatrième section - Image et description du deuxième produit
            Row(
              children: [
                Expanded(child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset('assets/images/img3.jpg', height: 100, width: 600,),
                  ],
                )),
                const Expanded(child: SizedBox(
                  height: 100, width: 500,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 20, width: 20,),
                      Text('Découvrire le produit cosmotique', style: TextStyle(color: Colors.black),),
                      Text('le produit de la socité DOSTA '
                          'est 100%100 qualité',
                       style: TextStyle(color: Colors.black),),
                    ],
                  ),
                )),
              ],
            ),
            const SizedBox(height: 5,),//Espacement verticale

            // Cinquième section - Contenu principal avec ombre et bordure arrondie
            Container(
              margin: const EdgeInsets.all(10),// Marge autour du conteneur (10 pixels de chaque côté)
              decoration: const BoxDecoration(
                  color: Colors.white54,
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),// Coins arrondis avec un rayon de 10 pixels
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0xffccc6c6),
                      spreadRadius: 4, // Étendue de l'ombre
                      blurRadius: 6, // Flou de l'ombre
                      offset: Offset(0, 3), // Décalage de l'ombre (légèrement vers le bas)
                    )
                  ]
              ),
              height: 200, // Hauteur du conteneur (200 pixels)
              child: Column(
                children: [
                  SingleChildScrollView(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Expanded(child: Container(
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
                              Image.asset('assets/images/img2.jpg', width: 800, height: 200,
                                fit: BoxFit.cover,),
                            ],
                          ),
                        ),),
                        Expanded(child: Container(
                          height: 130,
                          margin: const EdgeInsets.all(10), // Marge intérieure (10 pixels de chaque côté)
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
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              const Text('Découvrire le produit cosmotique', style: TextStyle(color: Colors.black),),
                              const Text('le produit de la socité DOSTA est ',
                                style: TextStyle(color: Colors.black),),
                              const Text('à 100%100 qualité et à bon prix', style: TextStyle(color: Colors.black),),
                              const Text('Prix: 10£', style: TextStyle(color: Colors.black),),
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

                        ),),
                      ],
                    ),
                  )
                ],
              ),
              //color: Color(0xffccc6c6)
            ),
            const SizedBox(height: 5,), //Espacement

            //Sixième section meme propriétés que la cinquième section
            Container(
              height: 200,
              margin: const EdgeInsets.all(10),
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
                  SingleChildScrollView(
                    child: Row(
                      children: [
                        //Image.asset('assets/images/image1.jpg', height: 100, width: 100,),
                        Expanded(child: Container(
                          height: 200,
                          //margin: EdgeInsets.all(10),
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
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Image.asset('assets/images/img3.jpg', width: 800, height: 200,
                                fit: BoxFit.cover,),
                            ],
                          ),
                        ),),
                        Expanded(child: Container(
                          height: 130,
                          margin: const EdgeInsets.all(10),
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
                              const Text('Découvrire le produit cosmotique', style: TextStyle(color: Colors.black),),
                              const Text('le produit de la socité DOSTA est ',
                                style: TextStyle(color: Colors.black),),
                              const Text('à 100%100 qualité et à bon prix', style: TextStyle(color: Colors.black),),
                              const Text('Prix: 10£', style: TextStyle(color: Colors.black),),
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

                        ),),
                      ],
                    ),
                  )
                ],
              ),

            ),
            const SizedBox(height: 5,), //Escapacement

            //Septième section meme propriétés que la cinquième section
            Container(
              margin: const EdgeInsets.all(10),
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

              height: 200,
              child: Column(
                children: [
                  SingleChildScrollView(
                    child: Row(

                      children: [
                        //Image.asset('assets/images/image1.jpg', height: 100, width: 100,),
                        Expanded(child: Container(
                          height: 200,
                          //margin: EdgeInsets.all(10),
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
                              Image.asset('assets/images/image1.jpg', width: 800, height: 200,
                                fit: BoxFit.cover,),
                            ],
                          ),
                        ),),
                        Expanded(child: Container(
                          height: 130,
                          margin: const EdgeInsets.all(10),
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
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              const Text('Découvrire le produit cosmotique', style: TextStyle(color: Colors.black),),
                              const Text('le produit de la socité DOSTA est ',
                                style: TextStyle(color: Colors.black),),
                              const Text('à 100%100 qualité et à bon prix', style: TextStyle(color: Colors.black),),
                              const Text('Prix: 10£', style: TextStyle(color: Colors.black),),
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

                        ),),
                      ],
                    ),
                  )
                ],
              ),
              //color: Color(0xffccc6c6),


            ),

            const SizedBox(child: Newsletter(),), //widget newsletter
            //widget de copyright
            SizedBox(child: Copyright(
              appName: 'Dosta',
              email: 'alaminemoutariharouna@gmail.com',
              socialIcons: [
                IconButton( icon: const Icon(Icons.facebook_outlined),
                  onPressed: () {},),
                IconButton( icon: const Icon(Icons.telegram_outlined),
                  onPressed: () {},),
                IconButton( icon: const Icon(Icons.install_mobile),
                  onPressed: () {},)
              ],
            ),
            )
          ],
        ),
      )
    );
  }
}