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
  StreamSubscription? _gameRoomSub;

  Future<void> createGameRoom(String id) async {
    state = const GameState.creating();
    final exists = await _gameRoomExists(id);
    if (exists == null) {
      Popup.instance.showErrorPopup('Error! Check your internet connection.');
      state = const GameState.initial();
      return;
    }
    if (exists == true) {
      Popup.instance.showErrorPopup('This Game ID is not available!');
      state = const GameState.initial();
      return;
    }
    final gameRoom = GameRoom(
      createdAt: DateTime.now(),
      id: id,
      adminId: _gameService.currentUserId,
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

  Future<void> joinGameRoom(String gameRoomId, String playerName) async {
    state = const GameState.joining();
    final exists = await _playerNameExists(gameRoomId, playerName);
    if (exists == null) {
      Popup.instance.showErrorPopup('Error! Check your internet connection.');
      state = const GameState.initial();
      return;
    }
    if (exists == true) {
      Popup.instance.showErrorPopup('This player name is not available!');
      state = const GameState.initial();
      return;
    }
    final gameRoomExists = await _gameRoomExists(gameRoomId);
    if (gameRoomExists == null) {
      Popup.instance.showErrorPopup('Error! Check your internet connection.');
      state = const GameState.initial();
      return;
    }
    if (gameRoomExists == false) {
      Popup.instance.showErrorPopup('No game room exists with this ID!');
      state = const GameState.initial();
      return;
    }
    final player = Player(
      id: _gameService.currentUserId,
      name: playerName,
    );
    final failureOrJoined = await _gameService.joinGameRoom(
      gameRoomId,
      player,
    );
    failureOrJoined.fold(
      (l) {
        Popup.instance.showErrorPopup('Could not join to the game room!');
        state = GameState.failure(l);
      },
      (r) async {
        final failureOrGameRoom = await _gameService.getGameRoom(gameRoomId);
        failureOrGameRoom.fold(
          (l) => state = const GameState.failure(Failure.server()),
          (gameRoom) {
            if (gameRoom != null) {
              _gameRoomSub = _gameService
                  .playerStream(gameRoomId, player.name)
                  .listen((player) async {
                if (player == null) {
                  Popup.instance.showInfoDialog('You are removed from the game room.');
                  await leaveGameRoom(gameRoomId, playerName);
                  await _gameRoomSub?.cancel();
                }
              });
              App.context.navigateTo(GameRoomRoute(gameRoomId: gameRoomId));
              state = GameState.joined(gameRoom);
            } else {
              state = const GameState.failure(Failure.server());
            }
          },
        );
      },
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
      App.context.router.navigate(const HomeRoute());
    } else {
      Popup.instance.showErrorPopup('Could not delete the game room!');
    }
    state = fos.fold(
      (l) => GameState.failure(l),
      (r) => const GameState.initial(),
    );
  }

  Future<bool?> _gameRoomExists(String gameRoomId) async {
    final failureOrExists = await _gameService.gameRoomExists(gameRoomId);
    final exists = failureOrExists.fold(
      (l) => null,
      (r) => r,
    );
    return exists;
  }

  Future<bool?> _playerNameExists(String gameRoomId, String playerName) async {
    final failureOrExists = await _gameService.playerNameExists(
      gameRoomId,
      playerName,
    );
    final exists = failureOrExists.fold(
      (l) => null,
      (r) => r,
    );
    return exists;
  }

  Future<void> leaveGameRoom(
    String gameRoomId,
    String playerName, {
    bool willNavigateToHome = true,
  }) async {
    state = const GameState.leaving();
    final failureOrLeft = await _gameService.leaveGameRoom(
      gameRoomId,
      playerName,
    );
    failureOrLeft.fold(
      (l) {
        Popup.instance.showErrorPopup('Could not leave the game room');
        state = GameState.failure(l);
      },
      (r) {
        if (willNavigateToHome) {
          App.context.navigateTo(const HomeRoute());
        }
        state = const GameState.initial();
      },
    );
  }
}

final playersStreamProvider =
    StreamProvider.autoDispose.family<List<Player>, String>((ref, gameRoomId) {
  final gameService = ref.watch(gameServiceProvider);
  return gameService.playersInGameRoomStream(gameRoomId);
});

final gameRoomProvider = FutureProvider.autoDispose
    .family<GameRoom?, String>((ref, gameRoomId) async {
  final gameService = ref.watch(gameServiceProvider);
  final failureOrGameRoom = await gameService.getGameRoom(gameRoomId);
  final gameRoom = failureOrGameRoom.fold((l) => null, (r) => r);
  return gameRoom;
});
