import 'package:flutter/material.dart';
import 'package:medtech/core/app_export.dart';

class CustomTextFormField extends StatelessWidget {
  CustomTextFormField({
    Key? key,
    this.alignment,
    this.width,
    this.margin,
    this.controller,
    this.focusNode,
    this.autofocus = true,
    this.textStyle,
    this.obscureText = false,
    this.textInputAction = TextInputAction.next,
    this.textInputType = TextInputType.text,
    this.maxLines,
    this.hintText,
    this.hintStyle,
    this.prefix,
    this.prefixConstraints,
    this.suffix,
    this.suffixConstraints,
    this.contentPadding,
    this.borderDecoration,
    this.fillColor,
    this.filled = true,
    this.validator,
  }) : super(
          key: key,
        );

  final Alignment? alignment;

  final double? width;

  final EdgeInsetsGeometry? margin;

  final TextEditingController? controller;

  final FocusNode? focusNode;

  final bool? autofocus;

  final TextStyle? textStyle;

  final bool? obscureText;

  final TextInputAction? textInputAction;

  final TextInputType? textInputType;

  final int? maxLines;

  final String? hintText;

  final TextStyle? hintStyle;

  final Widget? prefix;

  final BoxConstraints? prefixConstraints;

  final Widget? suffix;

  final BoxConstraints? suffixConstraints;

  final EdgeInsets? contentPadding;

  final InputBorder? borderDecoration;

  final Color? fillColor;

  final bool? filled;

  final FormFieldValidator<String>? validator;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: textFormFieldWidget,
          )
        : textFormFieldWidget;
  }

  Widget get textFormFieldWidget => Container(
        width: width ?? double.maxFinite,
        margin: margin,
        child: TextFormField(
          controller: controller,
          focusNode: focusNode ?? FocusNode(),
          autofocus: autofocus!,
          style: textStyle ?? theme.textTheme.bodyMedium,
          obscureText: obscureText!,
          textInputAction: textInputAction,
          keyboardType: textInputType,
          maxLines: maxLines ?? 1,
          decoration: decoration,
          validator: validator,
        ),
      );
  InputDecoration get decoration => InputDecoration(
        hintText: hintText ?? "",
        hintStyle: hintStyle ?? CustomTextStyles.titleMediumPrimaryContainer_1,
        prefixIcon: prefix,
        prefixIconConstraints: prefixConstraints,
        suffixIcon: suffix,
        suffixIconConstraints: suffixConstraints,
        isDense: true,
        contentPadding: contentPadding ?? EdgeInsets.all(14.h),
        fillColor:
            fillColor ?? theme.colorScheme.primaryContainer.withOpacity(1),
        filled: filled,
        border: borderDecoration ??
            OutlineInputBorder(
              borderRadius: BorderRadius.circular(7.h),
              borderSide: BorderSide(
                color: appTheme.indigo100,
                width: 1,
              ),
            ),
        enabledBorder: borderDecoration ??
            OutlineInputBorder(
              borderRadius: BorderRadius.circular(7.h),
              borderSide: BorderSide(
                color: appTheme.indigo100,
                width: 1,
              ),
            ),
        focusedBorder: borderDecoration ??
            OutlineInputBorder(
              borderRadius: BorderRadius.circular(7.h),
              borderSide: BorderSide(
                color: appTheme.indigo100,
                width: 1,
              ),
            ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.h),
          borderSide: BorderSide(
            color: theme.colorScheme.primary,
            width: 1,
          ),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.h),
          borderSide: BorderSide(
            color: theme.colorScheme.primary,
            width: 1,
          ),
        ),
      );
}

/// Extension on [CustomTextFormField] to facilitate inclusion of all types of border style etc
extension TextFormFieldStyleHelper on CustomTextFormField {
  static OutlineInputBorder get fillPrimary => OutlineInputBorder(
        borderRadius: BorderRadius.circular(4.h),
        borderSide: BorderSide.none,
      );
  static UnderlineInputBorder get underLineGray => UnderlineInputBorder(
        borderSide: BorderSide(
          color: appTheme.gray30001,
        ),
      );
  static OutlineInputBorder get outlineBlueGray => OutlineInputBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(
            10.h,
          ),
          bottomLeft: Radius.circular(
            10.h,
          ),
          bottomRight: Radius.circular(
            10.h,
          ),
        ),
        borderSide: BorderSide.none,
      );
  static OutlineInputBorder get outlineBlueGrayBL101 => OutlineInputBorder(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(
            10.h,
          ),
          bottomLeft: Radius.circular(
            10.h,
          ),
          bottomRight: Radius.circular(
            10.h,
          ),
        ),
        borderSide: BorderSide.none,
      );
}
