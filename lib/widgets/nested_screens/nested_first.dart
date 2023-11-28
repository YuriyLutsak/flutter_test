import 'package:flutter/material.dart';

class NestedFirstScreen extends StatefulWidget {
  const NestedFirstScreen({super.key});

  @override
  State<NestedFirstScreen> createState() => _NestedFirstScreenState();
}

class _NestedFirstScreenState extends State<NestedFirstScreen> {
  String? nestedName;
  @override
  void didChangeDependencies() {
    final args = ModalRoute.of(context)?.settings.arguments;
    assert(args != null && args is String, 'You must provide String');
    nestedName = args as String;
    setState(() {});
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(nestedName ?? '...'),
      ),
    );
  }
}
