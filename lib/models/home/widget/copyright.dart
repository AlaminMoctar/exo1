import 'package:flutter/material.dart';

class Copyright extends StatelessWidget {
  final String appName;
  final String email;
  final List<Widget> socialIcons; // Liste des icônes des réseaux sociaux

  const Copyright({
    Key? key,
    required this.appName,
    required this.email,
    required this.socialIcons,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      //color: Colors.cyanAccent,
      padding: const EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            '© ${DateTime.now().year} $appName',
            style: const TextStyle(fontSize: 12),
          ),
          Row(
            children: socialIcons,
          ),
        ],
      ),
    );
  }
}