import 'package:draw_guess/core/core.dart';
import 'package:draw_guess/game/game.dart';

part 'game_notifier.freezed.dart';

@freezed
class GameState with _$GameState {
  const factory GameState.initial() = _Initial;
  const factory GameState.creating() = _Creating;
  const factory GameState.created(GameRoom gameRoom) = _Created;
  const factory GameState.joining() = _Joining;
  const factory GameState.joined(GameRoom gameRoom) = _Joined;
  const factory GameState.inGame(GameRoom gameRoom) = _InGame;
  const factory GameState.leaving() = _Leaving;
  const factory GameState.failure(Failure failure) = _Failure;
}

class GameNotifier extends StateNotifier<GameState> {
  GameNotifier(this._gameService) : super(const GameState.initial());

  final GameService _gameService;

  Future<void> createGameRoom(String id) async {
    state = const GameState.creating();
    final gameRoom = GameRoom(
      createdAt: DateTime.now(),
      id: id,
    );
    final failureOrCreated = await _gameService.createGameRoom(gameRoom);
    if (failureOrCreated.isLeft()) {
      Popup.instance.showErrorPopup('Could not create a game room!');
    }
    state = failureOrCreated.fold(
      (l) => GameState.failure(l),
      (r) => GameState.created(gameRoom),
    );
  }

  Future<void> joinGameRoom(GameRoom gameRoom, String name) async {
    state = const GameState.joining();
    final player = Player(
      id: _gameService.currentUserId,
      name: name,
    );
    final failureOrJoined = await _gameService.joinGameRoom(
      gameRoom.id,
      player,
    );
    if (failureOrJoined.isRight()) {
      App.context.navigateTo(const GameRoomRoute());
    } else {
      Popup.instance.showErrorPopup('Could not join to the game room!');
    }
    state = failureOrJoined.fold(
      (l) => GameState.failure(l),
      (r) => GameState.joined(gameRoom),
    );
  }

  bool validatePlayerName(String id) {
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

  bool validateGameId(String id) {
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
    state = const GameState.leaving();
    final fos = await _gameService.deleteGameRoom(gameRoomId);
    if (fos.isRight()) {
      App.context.navigateBack();
    } else {
      Popup.instance.showErrorPopup('Can not delete game room!');
    }
    state = fos.fold(
      (l) => GameState.failure(l),
      (r) => const GameState.initial(),
    );
  }
}
