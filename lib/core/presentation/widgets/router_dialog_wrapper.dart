import 'package:draw_guess/core/core.dart';
import 'package:draw_guess/core/core2.dart';

class RouterDialogWrapper extends StatelessWidget {
  const RouterDialogWrapper({
    Key? key,
    required this.child,
    this.alignment,
    this.padding,
    this.backgroundColor,
    this.borderRadius,
    this.blur,
  }) : super(key: key);

  final Widget child;
  final Alignment? alignment;
  final AppPadding? padding;
  final Color? backgroundColor;
  final BorderRadius? borderRadius;
  final double? blur;

  @override
  Widget build(BuildContext context) {
    final bottomInset = MediaQuery.of(context).viewInsets.bottom;
    return BackdropFilter(
      filter: ImageFilter.blur(
        sigmaX: blur ?? 3.0,
        sigmaY: blur ?? 3.0,
      ),
      child: Material(
        type: MaterialType.transparency,
        child: Ink(
          color: AppColors.black.withOpacity(0.3),
          child: Align(
            alignment: alignment ?? Alignment.center,
            child: AnimatedPadding(
              padding: (padding ?? const AppPadding.all()) +
                  EdgeInsets.only(bottom: bottomInset),
              duration: const Duration(milliseconds: 300),
              child: DecoratedBox(
                decoration: BoxDecoration(
                  color: backgroundColor ?? AppColors.white,
                  borderRadius: borderRadius ?? BorderRadius.circular(10.0),
                ),
                child: child,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
