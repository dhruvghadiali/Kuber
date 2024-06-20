import 'package:flutter/material.dart';

class AndroidFormErrorMessageWidget extends StatelessWidget {
  const AndroidFormErrorMessageWidget({
    super.key,
    required this.errorMessage,
  });

  final String errorMessage;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: Text(
        errorMessage,
        style: Theme.of(context).textTheme.labelSmall!.copyWith(
              color: Theme.of(context).colorScheme.error,
            ),
      ),
    );
  }
}
