import 'dart:io';

class Input {
  /*
   * #2. Controlar errores de input
   * Mientras el número sea menor que cero
   * o no parseable a entero solicitar el número
   */
  static int readNumber() {
    stdout.write("Número: ");
    String numStr = stdin.readLineSync();
    int n = int.parse(numStr);
    print("\x1B[2J\x1B[0;0H");
    return n;
  }
}
