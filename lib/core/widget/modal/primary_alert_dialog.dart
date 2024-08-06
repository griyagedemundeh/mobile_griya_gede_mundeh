import 'package:flutter/material.dart';

class PrimaryAlertDialog {
  final Widget? title;
  final Widget? content;

  const PrimaryAlertDialog({
    this.title,
    this.content,
  });

  showAnimatedDialog(BuildContext context) {
    return showGeneralDialog(
      context: context,
      pageBuilder: (context, animation, secondaryAnimation) => const SizedBox(),
      barrierDismissible: true,
      barrierLabel: 'primary-dialog',
      transitionDuration: const Duration(milliseconds: 300),
      transitionBuilder: (context, animation, secondaryAnimation, child) {
        return SlideTransition(
          position: Tween<Offset>(
            begin: const Offset(0, 1),
            end: Offset.zero,
          ).animate(
            CurvedAnimation(
              parent: animation,
              curve: Curves.easeInOutCubicEmphasized,
            ),
          ),
          child: AlertDialog(
            title: title,
            content: content,
          ),
        );
      },
    );
  }
}
