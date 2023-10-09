import 'package:character_viewer/theme/colors.dart';
import 'package:flutter/material.dart';

const _strokeWidth = 2.0;

class LoadingSpinner extends StatelessWidget {
  final double? progressValue;

  const LoadingSpinner({
    Key? key,
    this.progressValue,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircularProgressIndicator(
      value: progressValue,
      strokeWidth: _strokeWidth,
      valueColor: const AlwaysStoppedAnimation<Color>(AppColors.primarySurface),
    );
  }
}
