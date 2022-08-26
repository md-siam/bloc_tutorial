import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'cubit/counter_cubit.dart';
import 'views/home_page.dart';
import 'views/show_me_counter.dart';

void main() {
  return runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final CounterCubit _counterCubit = CounterCubit();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BLoC Generated Routing',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.teal),
      onGenerateRoute: (RouteSettings settings) {
        switch (settings.name) {
          case '/':
            return MaterialPageRoute(
              builder: (context) => BlocProvider.value(
                value: _counterCubit,
                child: const HomePage(),
              ),
            );

          case '/counter':
            return MaterialPageRoute(
              builder: (context) => BlocProvider.value(
                value: _counterCubit,
                child: const ShowMeCounter(),
              ),
            );

          default:
        }
        return null;
      },
    );
  }

  @override
  void dispose() {
    _counterCubit.close();
    super.dispose();
  }
}
