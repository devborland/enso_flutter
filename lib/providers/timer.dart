import 'package:flutter/foundation.dart';
import 'package:circular_countdown_timer/circular_countdown_timer.dart';

class Timer with ChangeNotifier {
  final controller = CountDownController();
  int minuts = 0;
  int seconds = 10;

  bool isStarted = false;
  bool isComplete = true;
  bool isPaused = true;

  int get duraion {
    return minuts * 60 + seconds;
  }

  void onStart() {
    isStarted = true;
    isPaused = false;
    isComplete = false;
    print('Timer Started');
  }

  void onComplete() {
    isStarted = false;
    isPaused = false;
    isComplete = true;
    minuts = 0;
    seconds = 10;
    print('Timer Complete');
  }

  void toggleStartButton() {
    if (isStarted) {
      isStarted = false;
      controller.pause();
    } else {
      isStarted = true;
      controller.start();
    }
    print('Timer is Start:' + '$isStarted');
    notifyListeners();
  }
}
