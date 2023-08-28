// ignore_for_file: public_member_api_docs

import 'package:app_ui/app_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

/// {@template app_progress_loading}
/// A default progress loading
/// {@endtemplate}
class AppProgressLoading extends StatelessWidget {
  const AppProgressLoading({
    required this.color,
    this.size = 50,
    super.key,
  });

  AppProgressLoading.light({Key? key, double? size})
      : this(
          key: key,
          size: size ?? 50,
          color: AppColors.primary.shade900,
        );

  const AppProgressLoading.dark({Key? key, double? size})
      : this(
          key: key,
          size: size ?? 50,
          color: AppColors.primary,
        );

  final Color color;
  final double size;

  @override
  Widget build(BuildContext context) {
    return SpinKitCircle(
      color: color,
      duration: const Duration(seconds: 2),
      size: size,
    );
  }
}
