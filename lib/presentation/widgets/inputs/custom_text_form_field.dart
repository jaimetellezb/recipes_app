// ignore_for_file: public_member_api_docs

import 'package:flutter/material.dart';

///
class CustomTextFormField extends StatelessWidget {
  ///
  const CustomTextFormField({
    super.key,
    this.label,
    this.hint,
    this.errorMessage,
    this.onChanged,
    this.validator,
    this.maxLines,
    this.maxLength,
  });

  final String? label;
  final String? hint;
  final String? errorMessage;
  final int? maxLines;
  final int? maxLength;
  // ignore: inference_failure_on_function_return_type
  final Function(String)? onChanged;
  final String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    final border = OutlineInputBorder(
      borderRadius: BorderRadius.circular(30),
    );

    return TextFormField(
      maxLines: maxLines,
      maxLength: maxLength,
      keyboardType: maxLines != null ? TextInputType.multiline : null,
      onChanged: onChanged,
      validator: validator,
      decoration: InputDecoration(
        // cuando el input está habilitado
        enabledBorder: border,
        focusedBorder:
            border.copyWith(borderSide: BorderSide(color: colors.primary)),
        errorBorder:
            border.copyWith(borderSide: BorderSide(color: Colors.red.shade800)),
        focusedErrorBorder:
            border.copyWith(borderSide: BorderSide(color: Colors.red.shade800)),

        isDense: false,
        label: label != null ? Text(label!) : null,
        hintText: hint,
        focusColor: colors.primary,
        errorText: errorMessage,
      ),
    );
  }
}
