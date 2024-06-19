import 'package:flutter/material.dart';
import 'package:kuber/models/dropdown/dropdown_model.dart';
import 'package:kuber/widgets/android/common/error_messages/form_error_message/android_form_error_message.dart';

class AndroidDropdowWidget extends StatelessWidget {
  const AndroidDropdowWidget({
    super.key,
    required this.items,
    required this.labelText,
    required this.selectedItem,
    required this.showError,
    required this.onChanged,
    this.isEnable = true,
    this.errorMessage = '',
    this.labelColor,
    this.background,
    this.foreground,
  });

  final List<DropdownModel> items;
  final String labelText;
  final String selectedItem;
  final bool showError;
  final bool? isEnable;
  final Color? labelColor;
  final Color? background;
  final Color? foreground;
  final String? errorMessage;

  final Function onChanged;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        DropdownButtonFormField(
          onChanged: (String? selectedItem) => onChanged(
            selectedItem ?? (items.isEmpty ? '' : items[0].value),
          ),
          value: items.indexWhere((item) => item.value == selectedItem) == -1
              ? items.isEmpty
                  ? ''
                  : items[0].value
              : selectedItem,
          items: items.toSet().toList().map(
            (DropdownModel item) {
              return DropdownMenuItem(
                value: item.value,
                enabled: isEnable ?? true,
                child: Text(
                  item.label.toUpperCase(),
                  style: Theme.of(context).textTheme.titleMedium!.copyWith(
                        fontWeight: selectedItem == item.value
                            ? FontWeight.bold
                            : FontWeight.normal,
                        color: (selectedItem == item.value && showError)
                            ? Theme.of(context).colorScheme.error
                            : background ??
                                Theme.of(context).colorScheme.primary,
                      ),
                ),
              );
            },
          ).toList(),
          selectedItemBuilder: (BuildContext selectedItemContext) {
            return items.map(
              (item) {
                return DropdownMenuItem(
                  value: item.value,
                  child: Text(
                    item.label,
                    style: Theme.of(context).textTheme.titleMedium!.copyWith(
                          fontWeight: selectedItem == item.value
                              ? FontWeight.bold
                              : FontWeight.normal,
                          color: showError
                              ? Theme.of(context).colorScheme.error
                              : foreground ??
                                  Theme.of(context).colorScheme.secondary,
                        ),
                  ),
                );
              },
            ).toList();
          },
          isDense: true,
          isExpanded: true,
          dropdownColor: foreground ?? Theme.of(context).colorScheme.secondary,
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: showError
                    ? Theme.of(context).colorScheme.error
                    : foreground ?? Theme.of(context).colorScheme.secondary,
                width: 1,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: showError
                    ? Theme.of(context).colorScheme.error
                    : foreground ?? Theme.of(context).colorScheme.secondary,
                width: 1,
              ),
            ),
            labelText: labelText,
            labelStyle: TextStyle(
              color: showError
                  ? Theme.of(context).colorScheme.error
                  : labelColor ?? Theme.of(context).colorScheme.secondary,
            ),
            filled: true,
            fillColor: background ?? Theme.of(context).colorScheme.primary,
          ),
          icon: Icon(
            Icons.arrow_drop_down_rounded,
            color: showError
                ? Theme.of(context).colorScheme.error
                : foreground ?? Theme.of(context).colorScheme.secondary,
          ),
        ),
        showError
            ? AndroidFormErrorMessage(errorMessage: errorMessage ?? '')
            : Container(),
      ],
    );
  }
}
