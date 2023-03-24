// ignore_for_file: library_private_types_in_public_api

import 'package:demo/constants.dart';
import 'package:demo/demo.dart';
import 'package:demo/demo_theme.dart';
import 'package:demo/pop_up_menu/pop_up_menu.dart';
import 'package:demo/secondescreen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => ModelTheme(),
      child: Consumer<ModelTheme>(
        builder: (context, ModelTheme themeNotifier, child) {
          return MaterialApp(
            title: 'Flutter Demo',
            theme: themeNotifier.isDark
                ? ThemeData(
                    brightness: Brightness.dark,
                  )
                : ThemeData(
                    brightness: Brightness.light,
                    primaryColor: Colors.green,
                    primarySwatch: Colors.green),
            home: const MyWidget(),
            debugShowCheckedModeBanner: false,
            onGenerateRoute: (RouteSettings settings) {
              debugPrint('build route for ${settings.name}');
              var routes = <String, WidgetBuilder>{
                // '/home': (BuildContext context) => HomePage(),
                '/second': (BuildContext context) =>  Home(),
              };
              WidgetBuilder builder = routes[settings.name]!;
              return MaterialPageRoute(
                builder: (ctx) => builder(ctx),
              );
            },
          );
        },
      ),
    );
  }
}
