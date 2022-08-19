import 'package:flutter/material.dart';

class OtherPage extends StatelessWidget {
  const OtherPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Other Page')),
      body: const Center(
        child: Text(
          'Other Page',
          style: TextStyle(fontSize: 52.0),
        ),
      ),
    );
  }
}
