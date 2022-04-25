import 'package:draw_guess/core/core.dart';

class ExpandHorizontal extends StatelessWidget {
  const ExpandHorizontal({
    Key? key,
    required this.height,
    required this.child,
  }) : super(key: key);

  final double height;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints.expand(height: height),
      child: child,
    );
  }
}
