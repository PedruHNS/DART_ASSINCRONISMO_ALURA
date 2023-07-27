class BotClock {
  Future futureClock(int seconds) {
    return Future.delayed(Duration(seconds: seconds));
  }

  Stream streamClock({required int interval, int? maxCount}) async* {
    int i = 1;
    while (i != maxCount) {
      await Future.delayed(Duration(seconds: interval));
      yield i++;
    }
    print('stream terminada');
  }
}
