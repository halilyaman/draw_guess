import 'package:draw_guess/core/core.dart';

class AppPadding extends EdgeInsets {
  const AppPadding.zero() : super.all(0.0);
  const AppPadding.all() : super.all(10.0);
  const AppPadding.vertical() : super.symmetric(vertical: 10.0);
  const AppPadding.horizontal() : super.symmetric(horizontal: 10.0);
  const AppPadding.bottom() : super.only(bottom: 10.0);
  const AppPadding.top() : super.only(top: 10.0);
  const AppPadding.left() : super.only(left: 10.0);
  const AppPadding.right() : super.only(right: 10.0);
}
