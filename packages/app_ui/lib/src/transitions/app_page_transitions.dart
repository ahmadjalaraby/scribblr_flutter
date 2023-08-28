import 'package:flutter/material.dart';

/// {@template app_page_transition}
/// An abstract custom route transition for app_ui
/// {@endtemplate}
sealed class AppPageTransition {
  /// {@macro app_page_transition}
  AppPageTransition({
    required this.page,
  });

  /// The page which the transition will work on.
  final Widget page;

  /// The method to call when to transition to a page
  Route<dynamic> to();
}

/// An enum which contains the transition moves directions
/// for [AppSlideTransition]
enum AppSlideTransitionValue {
  /// A transition from bottom to bottom slide transition
  bottomToTop,

  /// A transition from right to left slide transition
  rightToLeft;

  /// This will return the transition in record of two
  /// offsets [(start: Offset1, end: Offset2)]
  ({Offset begin, Offset end}) getOffset() {
    switch (this) {
      case AppSlideTransitionValue.bottomToTop:
        return (begin: const Offset(0, 1), end: Offset.zero);
      case AppSlideTransitionValue.rightToLeft:
        return (begin: const Offset(1, 0), end: Offset.zero);
    }
  }
}

/// {@template app_slide_transition}
/// A slide transition that extends the main [AppPageTransition]
/// {@endtemplate}
class AppSlideTransition extends AppPageTransition {
  /// {@macro app_slide_transition}
  AppSlideTransition({
    required super.page,
    AppSlideTransitionValue? transition,
    Cubic? curve,
  })  : transition = transition ?? _defaultTransition,
        curve = curve ?? _defaultCurve;

  /// The default slide transition
  static const AppSlideTransitionValue _defaultTransition =
      AppSlideTransitionValue.rightToLeft;

  /// The default curve of the animation
  static const Cubic _defaultCurve = Curves.easeInOut;

  /// The transition of the slide transition, if null then
  /// default [_defaultTransition]
  final AppSlideTransitionValue transition;

  /// The curve of the animation, if null then default
  /// [_defaultCurve]
  final Cubic curve;

  @override
  Route<dynamic> to() {
    return PageRouteBuilder<dynamic>(
      pageBuilder: (context, animation, secondaryAnimation) => page,
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        final begin = transition.getOffset().begin;
        final end = transition.getOffset().end;

        final tween =
            Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
        final offsetAnimation = animation.drive(tween);

        return SlideTransition(position: offsetAnimation, child: child);
      },
    );
  }
}
