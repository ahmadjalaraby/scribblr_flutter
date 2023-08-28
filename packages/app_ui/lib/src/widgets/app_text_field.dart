import 'package:app_ui/app_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

/// {@template app_text_field}
/// A text field component based on material [TextFormField] widget with a
/// left-aligned label text displayed above the text field.
/// {@endtemplate}
class AppTextField extends StatelessWidget {
  /// {@macro app_text_field}
  AppTextField({
    super.key,
    this.initialValue,
    this.autoFillHints,
    this.controller,
    this.inputFormatters,
    this.autoCorrect = true,
    this.readOnly = false,
    this.labelText,
    this.hintText,
    this.errorText,
    this.prefix,
    this.suffix,
    this.keyboardType,
    this.onChanged,
    this.onSubmitted,
    this.onTap,
    this.enabledBorder,
    this.focusedBorder,
    this.obscureText = false,
    TextStyle? style,
  }) : _style = style ?? _defaultTextStyle;

  /// A constructor to make a text field for the login page that
  AppTextField.loginTextField({
    Key? key,
    TextEditingController? controller,
    Widget? suffix,
    bool isDarkTheme = false,
    bool obscureText = false,
  }) : this(
          key: key,
          controller: controller,
          obscureText: obscureText,
          suffix: suffix,
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: isDarkTheme ? AppColors.primary.shade900 : AppColors.black,
            ),
          ),
        );

  /// The default text style of the input of the text field
  static final TextStyle _defaultTextStyle = LTRTextStyle.headline5;

  /// A value to initialize the field to.
  final String? initialValue;

  /// A list of auto fill hints
  final Iterable<String>? autoFillHints;

  /// Controls the text being edited.
  ///
  /// If null, this widget will create it's own [TextEditingController] and
  /// initialize it's text [TextEditingController.text] with [initialValue].
  final TextEditingController? controller;

  /// Optional input validation and formatting overrides.
  final List<TextInputFormatter>? inputFormatters;

  /// Wether to enable autocorrect.
  ///
  /// Default to true.
  final bool autoCorrect;

  /// Wether the text field should be read-only.
  ///
  /// Default to false.
  final bool readOnly;

  /// The label for the text field
  final String? labelText;

  /// Text that suggests what sort of text field accepts.
  final String? hintText;

  /// Text that appears below the field when error is encountered
  final String? errorText;

  /// A widget that appears before the editable part of the text field.
  final Widget? prefix;

  /// A widget that appears after the editable part of the text field
  final Widget? suffix;

  /// The type of the keyboard to use for the editing the text field.
  /// Defaults to [TextInputType.text] if maxlines is one and
  /// [TextInputType.multiline] otherwise.
  final TextInputType? keyboardType;

  /// Called when the user inserts or deletes texts in the text field.
  final ValueChanged<String>? onChanged;

  /// {@macro flutter.widgets.editableText.onSubmitted}
  final ValueChanged<String>? onSubmitted;

  /// Called when the text field has been tapped.
  final VoidCallback? onTap;

  /// The border to display when the [InputDecorator] is enabled and is not
  ///  showing an error.
  final InputBorder? enabledBorder;

  /// The border to display when the [InputDecorator] has the focus and is not
  ///  showing an error.
  final InputBorder? focusedBorder;

  /// The text style of the input in the text field, default to
  /// [_defaultTextStyle]
  final TextStyle? _style;

  /// if the text field is an obscure text field that hide the input, default
  /// to false
  final bool obscureText;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ConstrainedBox(
          constraints: const BoxConstraints(
            minHeight: 61,
          ),
          child: TextFormField(
            key: key,
            initialValue: initialValue,
            controller: controller,
            inputFormatters: inputFormatters,
            keyboardType: keyboardType,
            obscureText: obscureText,
            autocorrect: autoCorrect,
            readOnly: readOnly,
            autofillHints: autoFillHints,
            cursorColor: AppColors.primary.shade900,
            style: _style,
            decoration: InputDecoration(
              enabledBorder: enabledBorder,
              focusedBorder: focusedBorder,
              labelText: labelText,
              hintText: hintText,
              errorText: errorText,
              prefixIcon: prefix,
              suffixIcon: suffix,
              prefixIconConstraints: const BoxConstraints.tightFor(
                width: 20,
                height: 20,
              ),
              suffixIconConstraints: const BoxConstraints.tightFor(
                width: 20,
                height: 20,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
