import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:medtech/core/app_export.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class CustomPinCodeTextField extends StatelessWidget {
  CustomPinCodeTextField({
    Key? key,
    required this.context,
    required this.onChanged,
    this.alignment,
    this.margin,
    this.controller,
    this.textStyle,
    this.hintStyle,
    this.validator,
  }) : super(
          key: key,
        );

  final Alignment? alignment;

  final EdgeInsetsGeometry? margin;

  final BuildContext context;

  final TextEditingController? controller;

  final TextStyle? textStyle;

  final TextStyle? hintStyle;

  Function(String) onChanged;

  final FormFieldValidator<String>? validator;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: pinCodeTextFieldWidget,
          )
        : pinCodeTextFieldWidget;
  }

  Widget get pinCodeTextFieldWidget => Padding(
        padding: margin ?? EdgeInsets.zero,
        child: PinCodeTextField(
          appContext: context,
          controller: controller,
          length: 4,
          keyboardType: TextInputType.number,
          textStyle: textStyle ?? CustomTextStyles.titleMediumSemiBold_3,
          hintStyle: hintStyle ?? CustomTextStyles.titleMediumSemiBold_3,
          inputFormatters: [
            FilteringTextInputFormatter.digitsOnly,
          ],
          enableActiveFill: true,
          pinTheme: PinTheme(
            fieldHeight: 45.h,
            fieldWidth: 45.h,
            shape: PinCodeFieldShape.box,
            borderRadius: BorderRadius.circular(8.h),
            inactiveColor: appTheme.indigo100,
            activeColor: appTheme.indigo100,
            inactiveFillColor:
                theme.colorScheme.primaryContainer.withOpacity(1),
            activeFillColor: theme.colorScheme.primaryContainer.withOpacity(1),
            selectedColor: Colors.transparent,
          ),
          onChanged: (value) => onChanged(value),
          validator: validator,
        ),
      );
}
