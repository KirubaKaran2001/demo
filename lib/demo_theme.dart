// import 'package:demo/constants.dart';
// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';

// class HomePage extends StatefulWidget {
//   const HomePage({Key? key}) : super(key: key);

//   @override
//   MyHomePageState createState() => MyHomePageState();
// }

// class MyHomePageState extends State<HomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return Consumer<ModelTheme>(
//       builder: (context, ModelTheme themeNotifier, child) {
//         return Scaffold(
//           appBar: AppBar(
//             title: Text(themeNotifier.isDark ? "Dark Mode" : "Light Mode"),
//             actions: [
//               IconButton(
//                 icon: Icon(themeNotifier.isDark
//                     ? Icons.nightlight_round
//                     : Icons.wb_sunny),
//                 onPressed: () {
//                   themeNotifier.isDark
//                       ? themeNotifier.isDark = false
//                       : themeNotifier.isDark = true;
//                 },
//               ),
//             ],
//           ),
//           body: Center(
//             child: ElevatedButton(
//               onPressed: () {
//                 Navigator.pushNamed(context, '/second');
//               },
//               child: const Text('Navigate'),
//             ),
//           ),
//         );
//       },
//     );
//   }
// }
