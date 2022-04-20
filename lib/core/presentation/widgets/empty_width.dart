import 'package:draw_guess/core/core.dart';

class EmptyWidth extends StatelessWidget {
  const EmptyWidth._internal({
    Key? key,
    required this.width,
  }) : super(key: key);

  const EmptyWidth({Key? key})
      : width = 10,
        super(key: key);

  final double width;

  @override
  Widget build(BuildContext context) {
    return SizedBox(width: width);
  }

  EmptyWidth operator *(double value) {
    return EmptyWidth._internal(
      width: width * value,
    );
  }

  EmptyWidth operator /(double value) {
    return EmptyWidth._internal(
      width: width / value,
    );
  }
}
