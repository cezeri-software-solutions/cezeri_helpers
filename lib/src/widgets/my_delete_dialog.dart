import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import 'my_outlined_button.dart';

class MyDeleteDialog extends StatelessWidget {
  final String? title;
  final String? content;
  final VoidCallback onConfirm;

  const MyDeleteDialog({super.key, this.title, this.content, required this.onConfirm});

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
              Text(title ?? 'Löschen', style: const TextStyle(fontSize: 32)),
              const SizedBox(height: 16),
              Text(content ?? 'Bist du sicher, dass es unwiederruflich löschen willst?',
                  style: const TextStyle(fontSize: 16), textAlign: TextAlign.center),
              const SizedBox(height: 32),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  OutlinedButton(child: const Text('Abbrechen'), onPressed: () => context.router.pop()),
                  MyOutlinedButton(buttonText: 'Löschen', onPressed: onConfirm, buttonBackgroundColor: Colors.red),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
