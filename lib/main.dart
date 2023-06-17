import 'package:flutter/material.dart';

import 'home_screen.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'State Notifier Provider',
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: Colors.cyan,
      ),
      home: const HomeScreen(),
    ));
