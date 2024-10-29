import 'package:exo/models/home/widget/copyright.dart';
import 'package:flutter/material.dart';
import '../home/widget/newletter.dart';



class article1 extends StatelessWidget {
  const article1({super.key});

  // Construction de la page Article1
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
      ),
  body: SingleChildScrollView(
    // Colonne principale avec défilement vertical
     child: Column(
       children: [
        SingleChildScrollView(
          // Section présentant 3 produits défilant horizontalement
          child: Row(
            children: [
              // Premier produit (occupant un tiers de l'écran)
              Expanded(child: Container(
                padding: const EdgeInsets.all(10),// Marge autour du produit
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,// Alignement à gauche
                  children: [
                    Image.asset('assets/images/chaose.png', height: 100, width: 100,),
                    const Text('Produit 1'),
                    const Text('Description du produit 1'),
                    const Text('Prix: 10 €'),
                    //Bottom pour commander
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
              )),

              // Deuxième produit (mêmes propriétés que le premier)
              Expanded(child: Container(
                padding: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset('assets/images/c4.jpeg', height: 100, width: 100,),
                    const Text('Produit 1'),
                    const Text('Description du produit 1'),
                    const Text('Prix: 10 €'),
                    //Bottom pour commander
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
              )),

              // Troisième produit (mêmes propriétés que le premier)
              Expanded(child: Container(
                padding: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset('assets/images/c2.jpeg', height: 100, width: 100,),
                    const Text('Produit 1'),
                    const Text('Description du produit 1'),
                    const Text('Prix: 10 €'),
                    //Bottom pour commander
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
              )),
            ],
          ),
        ),

         // Conteneur contenant un bord entre la première section et la deuxième
         // avec un fond semi-opaque blanc
        Container(
          color: Colors.white54,
          child: const Column(
            children: [
              // Première rangée avec espacement entre les éléments
             Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                 Text('Nos produit favoris', style: TextStyle(color: Colors.black),),
                 // Rangée de droite avec espacement entre les éléments
                 Row(
                   children: [
                     Text('la qualité'),
                     IconButton(icon: Icon(
                       Icons.filter_list_outlined,
                       color: Color(0xff780aa5),
                       size: 25,
                     ),
                     onPressed: null, // Fonctionnalité non implémentée
                     )
                   ],
                 )
               ],
             )
            ],
          ),
        ),

         // Conteneur principal défilant verticalement (pour la deuxième section produit)
        SingleChildScrollView(
          child: Row(
            children: [
              // Conteneur principal du produit (fond gris clair)
              Container (
                color: const Color(0xffccc6c6),
                height: 830,
                width: 853.3,
                child: Padding(
                  padding: const EdgeInsets.all(10), // Marge autour du contenu
                  child: SizedBox(height: 10, width: 10,
                  child: Column(
                    children: [
                      // Section principale du produit (avec image, titre, prix et notation)
                        Container(
                          padding: const EdgeInsets.all(16),
                          height: 450,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,// Alignement à gauche
                            children: [
                              // Image du produit
                              Image.asset('assets/images/product-2.png', height: 100, width: 100,),
                              // Titre et prix du produit (sur fond blanc)
                              Container(height: 20,  color: Colors.white,child: Row(
                               children: [
                                 const Text(
                                   'Produit',
                                   style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
                                 ),
                                 const SizedBox(width: 5,),// Espacement horizontal
                                 const Text('Prix: 19.99 €',
                                   style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),),
                                 //SizedBox(width: 590,),
                                 Container(
                                   //color: Colors.cyanAccent,
                                   margin: const EdgeInsets.fromLTRB(10, 3, 10, 0),
                                   child: const Row(
                                     crossAxisAlignment: CrossAxisAlignment.start,
                                     children: [
                                       Icon(
                                         Icons.star_rate,
                                           color: Color(0xff780aa5),
                                         size: 15,
                                       ),
                                       Icon(
                                         Icons.star_rate,
                                         color: Color(0xff780aa5),
                                         size: 15,
                                       ),
                                       Icon(
                                         Icons.star_rate,
                                         color: Color(0xff780aa5),
                                         size: 15,
                                       ),Icon(
                                         Icons.star_rate,
                                         color: Color(0xff780aa5),
                                         size: 15,
                                       ),Icon(
                                         Icons.star_half,
                                         color: Color(0xff780aa5),
                                         size: 15,
                                       )
                                     ],
                                   ),
                                 ),
                                 const Spacer(flex: 1,),// Espace flexible pour aligner à droite
                                 // Notation du produit (étoiles)
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
                              const SizedBox(height: 8),// Espacement entre deux produits

                              // Deuxième produit (mêmes propriétés que le premier)
                              Image.asset('assets/images/product-1.png', height: 100, width: 100,),
                              Container(height: 20,  color: Colors.white,child: Row(
                                children: [
                                  const Text(
                                    'Produit',
                                    style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
                                  ),
                                  const SizedBox(width: 5,),
                                  const Text('Prix: 19.99 €',
                                    style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),),
                                  //SizedBox(width: 590,),
                                  Container(
                                    //color: Colors.cyanAccent,
                                    margin: const EdgeInsets.fromLTRB(10, 3, 10, 0),
                                    child: const Row(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Icon(
                                          Icons.star_rate,
                                          color: Color(0xff780aa5),
                                          size: 15,
                                        ),
                                        Icon(
                                          Icons.star_rate,
                                          color: Color(0xff780aa5),
                                          size: 15,
                                        ),
                                        Icon(
                                          Icons.star_rate,
                                          color: Color(0xff780aa5),
                                          size: 15,
                                        ),Icon(
                                          Icons.star_rate,
                                          color: Color(0xff780aa5),
                                          size: 15,
                                        ),Icon(
                                          Icons.star_border,
                                          color: Color(0xff780aa5),
                                          size: 15,
                                        )
                                      ],
                                    ),
                                  ),
                                  const Spacer(flex: 1,),
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
                              const SizedBox(height: 9,),// Espacement entre deux produits

                              // Troisième produit (mêmes propriétés que le premier)
                              Image.asset('assets/images/product-3.png',height: 100, width: 100,),
                              Container(height: 20,  color: Colors.white,
                                child: Row(
                                  children: [
                                    const Text(
                                      'Produit',
                                      style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
                                    ),
                                    const SizedBox(width: 5,),
                                    const Text('Prix: 19.99 €',
                                      style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),),
                                    //SizedBox(width: 590,),
                                    Container(
                                      //color: Colors.cyanAccent,
                                      margin: const EdgeInsets.fromLTRB(10, 3, 10, 0),
                                      child: const Row(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Icon(
                                            Icons.star_rate,
                                            color: Color(0xff780aa5),
                                            size: 15,
                                          ),
                                          Icon(
                                            Icons.star_rate,
                                            color: Color(0xff780aa5),
                                            size: 15,
                                          ),
                                          Icon(
                                            Icons.star_rate,
                                            color: Color(0xff780aa5),
                                            size: 15,
                                          ),Icon(
                                            Icons.star_half,
                                            color: Color(0xff780aa5),
                                            size: 15,
                                          ),Icon(
                                            Icons.star_border,
                                            color: Color(0xff780aa5),
                                            size: 15,
                                          )
                                        ],
                                      ),
                                    ),
                                    const Spacer(flex: 1,),
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

                            ],
                          ),
                        ),

                     const SizedBox(child: Newsletter(),),//widget newsletter

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
                      ),)

                    ],
                  ),


                  ),


                ),


                  
              ),

            ],
          ),


        )

      ]
    ),
),

    );
  }
}











