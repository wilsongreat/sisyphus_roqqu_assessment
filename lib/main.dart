import 'dart:async';

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:sisyphus_roqqu_app/core/core.dart';
import 'package:sisyphus_roqqu_app/features/home/presentation/screens/homescreen.dart';



void main() async {
  await runZonedGuarded(
        () async {
      WidgetsFlutterBinding.ensureInitialized();

      runApp(const ProviderScope(child: MyApp()));
    },
        (error, stackTrace) => print(error.toString()),
  );
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: 'Sisyphus',
      theme: CustomTheme.darkTheme,
      darkTheme: CustomTheme.darkTheme,
      debugShowCheckedModeBanner: false,
      home: const HomeScreen(),
    );
  }
}

