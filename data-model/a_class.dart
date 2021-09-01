import 'package:flutter/material.dart';

class AClass extends StatelessWidget {
  const AClass({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'branch',
      home: AnotherClass(),
    );
  }
}

class AnotherClass extends StatelessWidget {
  const AnotherClass({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('xxx'),
      ),
      body: const Center(
        child: Text('xxxx'),
      ),
    );
  }
}
