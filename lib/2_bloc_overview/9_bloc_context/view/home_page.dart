import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubit/counter_cubit.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('BLoC Access')),
      body: Center(
        child: BlocProvider<CounterCubit>(
          create: (_) => CounterCubit(),
          child: Builder(
            builder: (context) => Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '${BlocProvider.of<CounterCubit>(context, listen: true).state.counter}',
                  style: const TextStyle(fontSize: 52.0),
                ),
                ElevatedButton(
                  child: const Text(
                    'Increment',
                    style: TextStyle(fontSize: 20.0),
                  ),
                  onPressed: () {
                    BlocProvider.of<CounterCubit>(context).increment();
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
