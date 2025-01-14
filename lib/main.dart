import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test_project_14012025/hive/favorite.dart';
import 'package:flutter_test_project_14012025/pages/bloc/my_home_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:flutter_test_project_14012025/pages/my_home_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  Hive.registerAdapter(FavoriteAdapter());
  await Hive.openBox<int>('favorites');

  //printHiveData();

  runApp(
    BlocProvider(
      create: (context) => ProductBloc(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

void printHiveData() {
  final box = Hive.box<int>('favorites');
  print("Hive favorites: ${box.toMap()}");
}