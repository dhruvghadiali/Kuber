import 'package:flutter/material.dart';
import 'package:kuber/theme/extensions_theme_data.dart';
import 'package:kuber/widgets/android/common/form_fields/button/android_text_button_widget.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

class AndroidCalenderWidget extends StatelessWidget {
  const AndroidCalenderWidget({
    super.key,
    required this.buttonText,
    required this.maxDate,
    required this.minDate,
    required this.initialSelectedDate,
    required this.onSubmit,
    this.onSelectionChanged,
    this.headerStyle,
    this.selectionColor,
    this.backgroundColor,
    this.todayHighlightColor,
  });

  final String buttonText;
  final DateTime maxDate;
  final DateTime minDate;
  final DateTime initialSelectedDate;
  final Color? headerStyle;
  final Color? selectionColor;
  final Color? backgroundColor;
  final Color? todayHighlightColor;

  final Function? onSelectionChanged;
  final Function onSubmit;

  Future modalBottomSheet(BuildContext context) {
    return showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return SfDateRangePicker(
          onSelectionChanged: (DateRangePickerSelectionChangedArgs args) =>
              onSelectionChanged != null ? onSelectionChanged!(args.value) : null,
          onCancel: () => Navigator.pop(context),
          onSubmit: (args) {
            onSubmit(args);
            Navigator.pop(context);
          },
          view: DateRangePickerView.month,
          headerStyle: DateRangePickerHeaderStyle(
            backgroundColor: headerStyle ?? Theme.of(context).extension<ExtensionsThemeData>()!.accent,
          ),
          selectionColor: selectionColor ?? Theme.of(context).extension<ExtensionsThemeData>()!.accent,
          backgroundColor: backgroundColor ?? Theme.of(context).colorScheme.secondary,
          todayHighlightColor: todayHighlightColor ?? Theme.of(context).extension<ExtensionsThemeData>()!.error,
          initialSelectedDate: initialSelectedDate,
          maxDate: maxDate,
          minDate: minDate,
          showActionButtons: true,
          showNavigationArrow: true,
          toggleDaySelection: true,
          // showTodayButton: true,
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return AndroidTextButtonWidget(
      buttonText: buttonText,
      onPressed: () => modalBottomSheet(context),
    );
  }
}
