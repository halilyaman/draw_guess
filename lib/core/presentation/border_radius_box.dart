import 'package:draw_guess/core/core.dart';

class BorderRadiusBox extends StatelessWidget {
  const BorderRadiusBox({
    Key? key,
    required this.child,
    this.force = false,
  }) : super(key: key);

  final Widget child;
  final bool force;

  @override
  Widget build(BuildContext context) {
    final borderRadius = BorderRadius.circular(10.0);
    final padding = const AppPadding.all() / 10;
    return DecoratedBox(
      decoration: BoxDecoration(
        border: Border.all(),
        borderRadius: borderRadius,
      ),
      child: Padding(
        padding: padding,
        child: force
            ? ClipRRect(
                borderRadius: borderRadius,
                child: child,
              )
            : child,
      ),
    );
  }
}
