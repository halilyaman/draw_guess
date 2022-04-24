import 'package:draw_guess/core/core.dart';
import 'package:draw_guess/game/game.dart';

part 'game_notifier.freezed.dart';

@freezed
class GameState with _$GameState {
  const factory GameState.initial() = _Initial;
  const factory GameState.creating() = _Creating;
  const factory GameState.inGame(GameRoom gameRoom) = _InGame;
  const factory GameState.deleting() = _Deleting;
  const factory GameState.failure(Failure failure) = _Failure;
}

class GameNotifier extends StateNotifier<GameState> {
  GameNotifier(this._gameService) : super(const GameState.initial());

  final GameService _gameService;

  Future<void> createGameRoom(String id) async {
    final validated = _validateGameId(id);
    if (!validated) return;
    state = const GameState.creating();
    final gameRoom = GameRoom(
      createdAt: DateTime.now(),
      id: id,
    );
    final fos = await _gameService.createGameRoom(gameRoom);
    if (fos.isRight()) {
      App.context.replaceRoute(const DrawingBoardRoute());
    }
    state = fos.fold(
      (l) => GameState.failure(l),
      (r) => GameState.inGame(gameRoom),
    );
  }

  bool _validateGameId(String id) {
    const validator = Validator([ValidatorType.notEmpty()]);
    final validateResult =
        validator.validate(id).leftMap((l) => l as ValidatorFailure);
    validateResult.fold(
      (l) {
        for (final errorValidator in l.failedValidators) {
          errorValidator.whenOrNull(
            notEmpty: () {
              Popup.instance.showErrorPopup('You must enter a game ID!');
            },
          );
        }
      },
      (r) => null,
    );
    return validateResult.isRight();
  }

  Future<void> deleteGameRoom(String gameRoomId) async {
    state = const GameState.deleting();
    final fos = await _gameService.deleteGameRoom(gameRoomId);
    if (fos.isRight()) {
      App.context.router.navigateBack();
    } else {
      Popup.instance.showErrorPopup('Can not delete game room!');
    }
    state = fos.fold(
      (l) => GameState.failure(l),
      (r) => const GameState.initial(),
    );
  }
}
