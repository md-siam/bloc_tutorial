import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'cubit/theme_cubit.dart';
import 'views/my_payload.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ThemeCubit>(
      create: (context) => ThemeCubit(),
      child: BlocBuilder<ThemeCubit, ThemeState>(
        builder: (context, state) {
          return MaterialApp(
            title: 'Event Payload',
            debugShowCheckedModeBanner: false,
            theme: state.appTheme == AppTheme.light
                ? ThemeData.light()
                : ThemeData.dark(),
            home: const MyPayload(),
          );
        },
      ),
    );
  }
}
