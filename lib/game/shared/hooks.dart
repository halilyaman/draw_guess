import 'package:draw_guess/core/core.dart';
import 'package:draw_guess/game/game.dart';

GameRoom? useGameRoom(String gameRoomId, WidgetRef ref) {
  final gameRoom = useState<GameRoom?>(null);
  ref
      .watch(gameRoomStreamProvider(gameRoomId))
      .whenData((value) => gameRoom.value = value);
  return gameRoom.value;
}

void usePeriodicLineSynchronizer(ObjectRef<VoidCallback?> f, List keys) {
  final tickerProvider = useSingleTickerProvider(keys: keys);
  final lastMillis = useRef(0);
  useEffect(() {
    final ticker = tickerProvider.createTicker((elapsed) {
      final millis = elapsed.inMilliseconds;
      if (millis - lastMillis.value > 50) {
        lastMillis.value = millis;
        f.value?.call();
      }
    });
    ticker.start();
    return () => ticker.dispose();
  }, keys);
}
