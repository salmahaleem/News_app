import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/news/ui/home_page.dart';

import 'news/logic/news/news_cubit.dart';

void main() {
  runApp(
    MultiBlocProvider(providers: [
      BlocProvider(create: (_) => NewsCubit()..funcLoaded())
    ],
    child: const MyApp(),),
        );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.amberAccent),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}


