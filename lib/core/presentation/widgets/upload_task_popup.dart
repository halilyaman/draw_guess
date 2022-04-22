import 'package:draw_guess/core/core.dart';

class UploadTaskPopup extends HookWidget {
  const UploadTaskPopup({
    Key? key,
    required this.uploadTask,
    required this.onDone,
  }) : super(key: key);

  final UploadTask uploadTask;
  final VoidCallback onDone;

  @override
  Widget build(BuildContext context) {
    final percentage = useState(0.0);
    useEffect(() {
      Future.microtask(() {
        var isDone = false;
        uploadTask.snapshotEvents.listen((taskSnapshot) {
          percentage.value = taskSnapshot.bytesTransferred / taskSnapshot.totalBytes;
          if (percentage.value == 1 && !isDone) {
            onDone();
            isDone = true;
          }
        });
      });
      return () {};
    });
    return FlashBar(
      icon: const Icon(
        MdiIcons.upload,
        size: 36.0,
      ),
      title: Text(
        'File uploading...',
        style: Theme.of(context).textTheme.bodyText1?.copyWith(
          fontSize: 18,
        ),
      ),
      content: LinearProgressIndicator(
        value: percentage.value,
      ),
    );
  }
}
