import 'package:bloc_app/counter_bloc/counter_bloc.dart';
import 'package:bloc_app/counter_bloc/counter_state.dart';
import 'package:bloc_app/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(
    // MultiBlocProvider(
    //   providers: [
    //     BlocProvider(
    //       create: (context) => CounterController(),
    //     ),
    //   ],
    //   child:
    const MyApp(),
    // ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<CounterBloc>(
      create: (context) => CounterBloc(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          useMaterial3: true,
        ),
        home: HomePage(),
      ),
    );
  }
}
