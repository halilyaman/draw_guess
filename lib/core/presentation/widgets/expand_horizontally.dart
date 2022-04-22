import 'package:draw_guess/core/core.dart';

class ExpandHorizontally extends StatelessWidget {
  const ExpandHorizontally({
    Key? key,
    required this.height,
    required this.child,
  }) : super(key: key);

  final double height;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints.expand(height: 40.0),
      child: child,
    );
  }
}
