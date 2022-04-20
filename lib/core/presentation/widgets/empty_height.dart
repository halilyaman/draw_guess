import 'package:draw_guess/core/core.dart';

class EmptyHeight extends StatelessWidget {
  const EmptyHeight._internal({
    Key? key,
    required this.height,
  }) : super(key: key);

  const EmptyHeight({Key? key})
      : height = 10,
        super(key: key);

  final double height;

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: height);
  }

  EmptyHeight operator *(double value) {
    return EmptyHeight._internal(
      height: height * value,
    );
  }

  EmptyHeight operator /(double value) {
    return EmptyHeight._internal(
      height: height / value,
    );
  }
}
