import 'package:flutter/material.dart';
import 'package:design_system_ponto/design_system.dart';

void main() => runApp(const PontoExampleApp());

class PontoExampleApp extends StatelessWidget {
  const PontoExampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ponto',
      debugShowCheckedModeBanner: false,
      theme: DsTheme.light(),
      darkTheme: DsTheme.dark(),
      themeMode: ThemeMode.system,
      home: const DsSampleScreen(),
    );
  }
}
