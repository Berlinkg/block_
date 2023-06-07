import 'package:flutter/material.dart';

class Wishlest extends StatefulWidget {
  const Wishlest({super.key});

  @override
  State<Wishlest> createState() => _WishlestState();
}

class _WishlestState extends State<Wishlest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Wishlest'),
      ),
    );
  }
}
