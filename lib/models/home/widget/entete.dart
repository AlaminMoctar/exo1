import 'package:flutter/material.dart';

class Entete extends SingleChildScrollView{
  const Entete({super.key});

  @override
  Widget build(BuildContext){
    return Container(
      padding: const EdgeInsets.only(
        left: 25,
        right: 25,
      ),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Welcome,',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
            ),
            SizedBox(height: 10),

            Text(
              'Bienvenue dans mon application dosta',
              style: TextStyle(
                fontSize: 15,
                color: Colors.white,
              ),
            ),

          ],
        ),

        CircleAvatar(
          child: Icon(
            Icons.person_remove_alt_1_sharp,
            color: Color(0xff780aa5),
          ),
          //child: Image.asset('assets/images/img6.jpg',
          //fit: BoxFit.cover,
          ),
        ],
      ),
      );

  }
}
