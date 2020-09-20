class Renderer {
  static void drawInit(int maxNum) {
    print("\x1B[2J\x1B[0;0H");
    print("ADIVINA EL NÚMERO");
    print("");
    print("Número positivo menor a $maxNum");
  }

  /*
   * #4. Indicar si el número es mayor o menor.
   */
  static void drawGame(int pendingAttempts, int inputNumber, int keyNumber) {
    print("El número es MAYOR/MENOR que $inputNumber.");
    print("Te quedan $pendingAttempts intentos.");
  }

  static void drawSuccess() {
    print("\x1B[2J\x1B[0;0H");
    print("FELICIDADES!\nHAS GANADO!");
  }

  static void drawFailure(int keyNumber) {
    print("\x1B[2J\x1B[0;0H");
    print("El número era $keyNumber.");
    print("HAS PERDIDO!");
  }
}
