import 'package:flutter/material.dart';
import 'package:tmail_ui_user/features/composer/presentation/styles/mobile/mobile_container_view_style.dart';

class MobileContainerView extends StatelessWidget {

  final Widget Function(BuildContext context, BoxConstraints constraints) childBuilder;
  final VoidCallback onCloseViewAction;
  final VoidCallback? onClearFocusAction;
  final Color? backgroundColor;

  const MobileContainerView({
    super.key,
    required this.childBuilder,
    required this.onCloseViewAction,
    this.onClearFocusAction,
    this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return PopScope(
      onPopInvoked: (didPop) => !didPop ? onCloseViewAction.call() : null,
      canPop: false,
      child: GestureDetector(
        onTap: onClearFocusAction,
        child: Scaffold(
          backgroundColor: backgroundColor ?? MobileContainerViewStyle.outSideBackgroundColor,
          resizeToAvoidBottomInset: false,
          body: LayoutBuilder(builder: (context, constraints) {
            return childBuilder(context, constraints);
          })
        ),
      )
    );
  }
}