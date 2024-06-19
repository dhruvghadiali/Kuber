import 'package:flutter/material.dart';

class AndroidIconButtonWidget extends StatelessWidget {
  const AndroidIconButtonWidget({
    super.key,
    required this.tooltip,
    required this.icon,
    required this.onPressed,
    this.iconColor,
    this.backgroundColor,
    this.iconSize,
  });

  final String tooltip;
  final IconData icon;
  final Color? iconColor;
  final Color? backgroundColor;
  final double? iconSize;

  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return Material(
      color:  backgroundColor ?? Theme.of(context).colorScheme.primary,
      child: IconButton(
        onPressed: () => onPressed(),
        splashColor: iconColor ?? Theme.of(context).colorScheme.secondary,
        tooltip: tooltip,
        icon: Icon(
          icon,
          color: iconColor ?? Theme.of(context).colorScheme.secondary,
          size: iconSize,
        ),
      ),
    );
  }
}
