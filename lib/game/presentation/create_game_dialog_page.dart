import 'package:draw_guess/core/core.dart';

class CreateGameDialogPage extends HookWidget {
  const CreateGameDialogPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final gameIdController = useTextEditingController();
    return RouterDialogWrapper(
      child: Padding(
        padding: const AppPadding.all(),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              CustomTextField(
                controller: gameIdController,
                hintText: 'Enter Game ID...',
              ),
              const EmptyHeight(),
              ExpandHorizontally(
                height: 40.0,
                child: ElevatedButton(
                  onPressed: () {
                    AutoRouter.of(context).replace(const DrawingBoardRoute());
                  },
                  child: const Text('Create Game Room'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
