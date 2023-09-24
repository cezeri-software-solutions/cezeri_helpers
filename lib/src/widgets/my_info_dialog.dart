import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import 'my_outlined_button.dart';

class MyInfoDialog extends StatelessWidget {
  final String title;
  final String content;

  const MyInfoDialog({super.key, required this.title, required this.content});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: SizedBox(
        width: 400,
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(title, style: const TextStyle(fontSize: 32)),
              const SizedBox(height: 16),
              Text(content, style: const TextStyle(fontSize: 16), textAlign: TextAlign.center),
              const SizedBox(height: 32),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  MyOutlinedButton(buttonText: 'OK', onPressed: () => context.router.pop()),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
