import 'package:flutter/material.dart';

class NeedHelpPage extends StatelessWidget {
  const NeedHelpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
          child: Column(
            children: [Text('Need Help?')],
          ),
        ),
      ),
    );
  }
}
