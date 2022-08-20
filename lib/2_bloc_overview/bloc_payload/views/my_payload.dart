import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/theme_bloc.dart';

class MyPayload extends StatelessWidget {
  const MyPayload({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Theme')),
      body: Center(
        child: ElevatedButton(
          child: const Text(
            'Change Theme',
            style: TextStyle(fontSize: 24.0),
          ),
          onPressed: () {
            final int randInt = Random().nextInt(10);
            print('randInt: $randInt');

            context.read<ThemeBloc>().add(ChangeThemeEvent(randInt: randInt));
          },
        ),
      ),
    );
  }
}
