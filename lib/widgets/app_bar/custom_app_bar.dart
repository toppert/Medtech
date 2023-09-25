import 'package:flutter/material.dart';
import 'package:medtech/core/app_export.dart';

// ignore: must_be_immutable
class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  CustomAppBar({
    Key? key,
    this.height,
    this.styleType,
    this.leadingWidth,
    this.leading,
    this.title,
    this.centerTitle,
    this.actions,
  }) : super(
          key: key,
        );

  final double? height;

  final Style? styleType;

  final double? leadingWidth;

  final Widget? leading;

  final Widget? title;

  final bool? centerTitle;

  final List<Widget>? actions;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      toolbarHeight: height ?? 29.v,
      automaticallyImplyLeading: false,
      backgroundColor: Colors.transparent,
      flexibleSpace: _getStyle(),
      leadingWidth: leadingWidth ?? 0,
      leading: leading,
      title: title,
      titleSpacing: 0,
      centerTitle: centerTitle ?? false,
      actions: actions,
    );
  }

  @override
  Size get preferredSize => Size(
        mediaQueryData.size.width,
        height ?? 29.v,
      );
  _getStyle() {
    switch (styleType) {
      case Style.bgShadow:
        return Container(
          height: 104.v,
          width: double.maxFinite,
          decoration: BoxDecoration(
            color: theme.colorScheme.primaryContainer.withOpacity(1),
            boxShadow: [
              BoxShadow(
                color: appTheme.blueGray90014.withOpacity(0.05),
                spreadRadius: 2.h,
                blurRadius: 2.h,
                offset: Offset(
                  0,
                  2,
                ),
              ),
            ],
          ),
        );
      case Style.bgFill:
        return Container(
          height: 83.v,
          width: double.maxFinite,
          decoration: BoxDecoration(
            color: theme.colorScheme.primaryContainer.withOpacity(1),
          ),
        );
      default:
        return null;
    }
  }
}

enum Style {
  bgShadow,
  bgFill,
}
