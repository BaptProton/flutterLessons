import 'package:flutter/material.dart';

import 'Widgets/personal_text.dart';
import 'Widgets/personal_info_tile.dart';

// <<<<<<<<<<<<<<<<<<<<<<<< 1.0 >>>>>>>>>>>>>>>>>>>>>>>>>>>>

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return const Center(
//       child: Text(
//         'modified version',
//         style: TextStyle(fontSize: 15),
//       ),
//     );
//   }
// }
//
// void main() {
//   debugPrint("debug asdfasd");
//   runApp(
//     MaterialApp(
//       home: Scaffold(
//         body: MyApp()
//       ),
//     ),
//   );
// }

// class MyCard extends StatelessWidget {
//   const MyCard({super.key, required this.text, required this.fontSize});
//
//   final String  text;
//   final double  fontSize;
//
//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       shadowColor: Color(0xff000000),
//       color: Color(0x88818381),
//       child: Text(
//         text,
//         style: TextStyle(fontSize: fontSize)
//       ),
//     );
//   }
// }

// <<<<<<<<<<<<<<<<<<<<<<<< 1.1 >>>>>>>>>>>>>>>>>>>>>>>>>>>>

// void main() {
//   runApp(
//     const MaterialApp(
//       home: Scaffold(
//         body: Center(
//           child: PresentationCard(),
//         ),
//       ),
//     ),
//   );
// }
//
// class PresentationCard extends StatelessWidget {
//   const PresentationCard({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 300,
//       width: 300,
//       padding: EdgeInsets.all(15),
//       decoration: BoxDecoration(
//         borderRadius: .circular(20),
//         gradient: LinearGradient(
//             begin: Alignment.bottomCenter,
//             end: Alignment(0, 0),
//             colors: <Color>[
//               Color(0xFF494848),
//               Color(0xFF636363),
//               Color(0xFF909090),
//               Color(0xFFB4B4B4),
//               Color(0xFFD4D4D4),
//             ]
//         ),
//       ),
//       child: Column(
//         children: [
//           const SizedBox(height: 15),
//           const Icon(
//             size: 80,
//             Icons.person,
//             color: Color(0xFF000000),
//           ),
//           const SizedBox(height: 18),
//           PersonalText(
//               text: "Alex Martin",
//               fontSize: 38
//           ),
//           PersonalText(
//               text: "Developer Flutter",
//               fontSize: 24
//           ),
//           const SizedBox(height: 10),
//           PersonalText(
//               text: "Passioned by mobile app development",
//               fontSize: 18
//           ),
//         ],
//       ),
//     );
//   }
// }

// <<<<<<<<<<<<<<<<<<<<<<<< 1.2 >>>>>>>>>>>>>>>>>>>>>>>>>>>>

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueAccent,
          leading: Icon(Icons.arrow_back, color: Colors.white, size: 25),
          title: Text('My Account', style: TextStyle(color: Colors.white)),
        ),
        body: Center(child: const AccountInfos()),
        bottomSheet: Padding(
          padding: EdgeInsets.all(16),
          child: Text(
            "Account information",
            style: TextStyle(color: Colors.black, fontSize: 16),
          ),
        ),
      ),
    );
  }
}

class AccountInfos extends StatelessWidget {
  const AccountInfos({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.grey,
      elevation: 10,
      child: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisSize: .min,
          children: [
            PersonalInfoTile(
              icon: Icons.person,
              title: "Alex Martin",
              subtitle: "Personal Account",
            ),
            const Divider(),
            PersonalInfoTile(
              icon: Icons.mail,
              title: "Email address",
              subtitle: "alex@example.com",
            ),
            const Divider(),
            PersonalInfoTile(
              icon: Icons.location_on_outlined,
              title: "Country",
              subtitle: "Switzerland",
            ),
          ],
        ),
      ),
    );
  }
}
