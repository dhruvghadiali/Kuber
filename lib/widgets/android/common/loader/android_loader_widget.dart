import 'package:flutter/material.dart';

class AndroidLoaderWidget extends StatelessWidget {
  const AndroidLoaderWidget({
    super.key,
    this.loaderColor,
  });

  final Color? loaderColor;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CircularProgressIndicator(
        color: loaderColor ?? Theme.of(context).colorScheme.secondary,
      ),
    );
  }
}
