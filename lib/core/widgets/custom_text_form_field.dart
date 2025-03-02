import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:to_do_now/core/constants/constants.dart';

/// A customizable `TextFormField` widget for consistent styling and functionality.
///
/// This widget allows for a variety of configurations, such as autofocus,
/// obscuring text (e.g., for passwords), autocorrect, and custom error handling.
///
/// Example usage:
/// ```dart
/// const CustomTextFormField(
///   controller: myController,
///   hintText: 'Enter your name',
///   isObscureText: true,
///   validator: (value) => value!.isEmpty ? 'Field cannot be empty' : null,
///   )
/// ```
class CustomTextFormField extends StatelessWidget {
  final String name;

  /// Controls the text being edited.
  final TextEditingController controller;

  /// The focus node for the text field.
  final FocusNode? focusNode;

  /// The placeholder text displayed when the field is empty.
  final String? hintText;

  /// A widget displayed at the start of the text field.
  final Widget? prefixIcon;

  /// A widget displayed at the end of the text field.
  final Widget? suffixIcon;

  /// The type of input expected (e.g., text, number, email, etc.).
  final TextInputType? keyboardType;

  /// The action button to show on the keyboard (e.g., done, next, etc.).
  final TextInputAction? textInputAction;

  /// The style of the text inside the field.
  final TextStyle? textStyle;

  /// Whether the field should automatically gain focus.
  final bool isAutofocus;

  /// Whether the text should be obscured (e.g., for passwords).
  final bool isObscureText;

  /// Whether autocorrection is enabled.
  final bool isAutocorrect;

  final void Function(String?)? onChanged;

  /// Called when the user completes editing.
  final void Function()? onEditingComplete;

  /// A function to validate the input.
  final String? Function(String?)? validator;

  /// The width of the cursor.
  final double cursorWidth;

  /// The height of the cursor.
  final double cursorHeight;

  /// The color of the cursor.
  final Color cursorColor;

  /// The color of the error text.
  final Color errorColor;

  /// Whether text selection is enabled.
  final bool isEnabledSelection;

  /// A list of auto-fill hints to help the user.
  final Iterable<String>? autoFillHints;

  /// Controls the validation behavior (e.g., disabled, always, onUserInteraction)
  final AutovalidateMode autovalidateMode;

  final Color? fillColor;

  final TextCapitalization textCapitalization;

  const CustomTextFormField({
    required this.name,
    super.key,
    required this.controller,
    this.focusNode,
    this.hintText,
    this.prefixIcon,
    this.suffixIcon,
    this.keyboardType,
    this.textInputAction,
    this.textStyle,
    this.isAutofocus = false,
    this.isObscureText = false,
    this.isAutocorrect = false,
    this.onChanged,
    this.onEditingComplete,
    this.validator,
    this.cursorWidth = 2.0,
    this.cursorHeight = 20.0,
    this.cursorColor = AppColors.primary,
    this.errorColor = AppColors.error,
    this.isEnabledSelection = true,
    this.autoFillHints,
    this.autovalidateMode = AutovalidateMode.disabled,
    this.fillColor,
    this.textCapitalization = TextCapitalization.none,
  });

  factory CustomTextFormField.email({
    required TextEditingController controller,
    String? Function(String?)? validator,
    required String name,
  }) {
    return CustomTextFormField(
      name: name,
      controller: controller,
      keyboardType: TextInputType.emailAddress,
      hintText: "Enter your email",
      prefixIcon: const Icon(Icons.email),
      autoFillHints: const [AutofillHints.email],
      validator: validator,
      textInputAction: TextInputAction.next,
    );
  }

  factory CustomTextFormField.password({
    required TextEditingController controller,
    String? Function(String?)? validator,
    required bool isObscureText,
    Widget? suffixIcon,
    required String name,
  }) {
    return CustomTextFormField(
      name: name,
      controller: controller,
      hintText: "********",
      prefixIcon: const Icon(Icons.lock),
      autoFillHints: const [AutofillHints.password],
      validator: validator,
      isObscureText: isObscureText,
      suffixIcon: suffixIcon,
    );
  }

  @override
  Widget build(BuildContext context) {
    return FormBuilderTextField(
      name: name,
      validator: validator,
      decoration: InputDecoration(
        fillColor: fillColor,
        hintText: hintText,
        suffixIcon: suffixIcon,
        prefixIcon: prefixIcon,
      ),
      onChanged: onChanged,
      autovalidateMode: autovalidateMode,
      focusNode: focusNode,
      obscureText: isObscureText,
      enableInteractiveSelection: isEnabledSelection,
      autofocus: isAutofocus,
      autocorrect: isAutocorrect,
      cursorWidth: cursorWidth,
      cursorHeight: cursorHeight,
      keyboardType: keyboardType,
      style: textStyle,
      controller: controller,
      textInputAction: textInputAction,
      onEditingComplete: onEditingComplete,
      cursorColor: cursorColor,
      autofillHints: autoFillHints,
      cursorErrorColor: errorColor,
      selectionControls: MaterialTextSelectionControls(),
      onTapOutside: (event) => FocusScope.of(context).unfocus(),
      textCapitalization: textCapitalization,
    );
  }
}
