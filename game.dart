import 'randomizer.dart';
import 'status.dart';
import 'input.dart';
import 'renderer.dart';

class Game {
  static final MAX_MISTAKES = 10;
  static const MAX_KEYNUMBER = 1000;

  static int mistakeCounter = 0;
  static var gameStatus = Status.playing;
  static int inputNumber;
  static int keyNumber;

  static void run() {
    init();
    while (gameStatus == Status.playing) {
      process_input();
      update_game();
      render_game();
    }
    clean_up();
  }

  static void init() {
    keyNumber = Randomizer.makeRandomNumber(MAX_KEYNUMBER); // #1
    Renderer.drawInit(MAX_KEYNUMBER);
  }

  static void process_input() {
    inputNumber = Input.readNumber(); // #2
  }

  /*
   * #3. Hay que comprobar si se ha ganado o perdido y
   * en ese caso actualizar el estado para que salga del game loop.
   */
  static void update_game() {
    if (inputNumber != keyNumber) {
      mistakeCounter++;
    }
  }

  static void render_game() {
    Renderer.drawGame(
        MAX_MISTAKES - mistakeCounter, inputNumber, keyNumber); // #4
  }

  /*
   * #5. Dependiendo del estado (lost/won)
   * renderizar el exito o el fracaso.
   */
  static void clean_up() {
    print("FIN"); // stub. No utilizar print. Usar Renderer.
  }
}
