import 'package:flutter/material.dart';

import './screens/searchScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Shared Food_AI',
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: SearchScreen(),
    );
  }
}

