import 'package:flutter/material.dart';
import 'package:kuber/widgets/android/common/error_messages/form_error_message/android_form_error_message.dart';

class AndroidFloatingTextFieldWidget extends StatelessWidget {
  const AndroidFloatingTextFieldWidget({
    super.key,
    required this.controller,
    required this.labelText,
    required this.showError,
    required this.onChange,
    required this.onSubmitted,
    this.hintText,
    this.errorMessage,
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
  final String? errorMessage;
  final Color? textFieldColor;
  final TextInputType? textInputType;
  final TextCapitalization? textCapitalization;

  final Function onChange;
  final Function onSubmitted;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: textInputType == TextInputType.multiline ? 150 : null,
          child: TextField(
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
          ),
        ),
        showError
            ? AndroidFormErrorMessage(errorMessage: errorMessage ?? '')
            : Container(),
      ],
    );
  }
}
