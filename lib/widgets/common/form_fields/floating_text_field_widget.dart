import 'package:flutter/material.dart';

class FloatingTextFieldWidget extends StatelessWidget {
  const FloatingTextFieldWidget({
    super.key,
    required this.controller,
    required this.labelText,
    required this.showError,
    required this.onChange,
    required this.onSubmitted,
    this.hintText,
    this.textFieldColor,
    this.obscureText = false,
    this.textCapitalization = TextCapitalization.none,
    this.textInputType = TextInputType.text,

    /// When we are using TextInputType as multiline that time must have to provide height to parent widget.
  });

  final TextEditingController controller;
  final String labelText;
  final bool obscureText;
  final bool showError;
  final String? hintText;
  final Color? textFieldColor;
  final TextInputType? textInputType;
  final TextCapitalization? textCapitalization;

  final Function onChange;
  final Function onSubmitted;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      obscureText: obscureText,
      textCapitalization: textCapitalization ?? TextCapitalization.none,
      keyboardType: textInputType,
      maxLines: null,
      expands: textInputType == TextInputType.multiline,
      textAlignVertical: TextAlignVertical.top,
      cursorColor: showError
          ? Theme.of(context).colorScheme.error
          : textFieldColor ?? Theme.of(context).colorScheme.secondary,
      style: TextStyle(
        color: showError
            ? Theme.of(context).colorScheme.error
            : textFieldColor ?? Theme.of(context).colorScheme.secondary,
      ),
      decoration: InputDecoration(
        labelText: labelText,
        hintText: hintText ?? labelText,
        alignLabelWithHint: true,
        labelStyle: TextStyle(
          color: showError
              ? Theme.of(context).colorScheme.error
              : textFieldColor ?? Theme.of(context).colorScheme.secondary,
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: showError
                ? Theme.of(context).colorScheme.error
                : textFieldColor ?? Theme.of(context).colorScheme.secondary,
            width: 2.0,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: showError
                ? Theme.of(context).colorScheme.error
                : textFieldColor ?? Theme.of(context).colorScheme.secondary,
            width: 1.0,
          ),
        ),
      ),
      onChanged: (String value) => onChange(value),
      onSubmitted: (String value) => onSubmitted(value),
    );
  }
}
