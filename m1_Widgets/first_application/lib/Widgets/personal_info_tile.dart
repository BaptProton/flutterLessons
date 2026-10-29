import 'package:flutter/material.dart';

class PersonalInfoTile extends StatelessWidget {
  const PersonalInfoTile({
    super.key,
    required this.icon,
    required this.title,
    required this.subtitle
  });

  final IconData icon;
  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
         icon,
         size: 36,
      ),
      title: Text(
        title,
        style: TextStyle(
          color: Colors.white,
          fontSize: 16,
        ),
      ),
      subtitle: Text(
        subtitle,
        style: TextStyle(
            color: Colors.white,
            fontSize: 12
        ),
      ),
      trailing: Icon(
        Icons.menu,
        size: 36,
      ),
    );
  }
}