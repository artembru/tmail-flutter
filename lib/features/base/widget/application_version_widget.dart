import 'package:core/presentation/extensions/color_extension.dart';
import 'package:core/utils/application_manager.dart';
import 'package:flutter/material.dart';

class ApplicationVersionWidget extends StatefulWidget {

  final ApplicationManager applicationManager;
  final EdgeInsetsGeometry? padding;
  final String? title;
  final TextStyle? textStyle;

  const ApplicationVersionWidget({
    super.key,
    required this.applicationManager,
    this.title,
    this.textStyle,
    this.padding,
  });

  @override
  State<ApplicationVersionWidget> createState() => _ApplicationVersionWidgetState();
}

class _ApplicationVersionWidgetState extends State<ApplicationVersionWidget> {

  Future<String>? _versionStream;

  @override
  void initState() {
    super.initState();
    _versionStream = widget.applicationManager.getVersion();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _versionStream,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return Padding(
            padding: widget.padding ?? const EdgeInsetsDirectional.only(start: 2, top: 12),
            child: Text(
              '${widget.title ?? 'v.'}${snapshot.data}',
              style: widget.textStyle ?? Theme.of(context).textTheme.labelMedium?.copyWith(
                fontSize: 12,
                color: AppColor.colorContentEmail,
                fontWeight: FontWeight.w500
              ),
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
            ),
          );
        } else {
          return const SizedBox.shrink();
        }
      }
    );
  }

  @override
  void dispose() {
    _versionStream = null;
    super.dispose();
  }
}