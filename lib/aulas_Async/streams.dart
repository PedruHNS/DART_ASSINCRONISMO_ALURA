import 'dart:async';

void main(List<String> args) async {
  myStream(1, 10);

  StreamSubscription ouvirStream = myStream(1, 30).listen((event) {
    if (event.isEven) {
      print('numero par');
    } else {
      print('numero impar');
    }
  },
      onError: (e) => print('erro aconteceu'),
      onDone: () => print('saiu da stream'));

  //? controles da Stream

  //! || pausa a stream
  await Future.delayed(Duration(seconds: 4));
  ouvirStream.pause();
  print('pausa');


  //! |> stream retorna
  await Future.delayed(Duration(seconds: 4));
  ouvirStream.resume();
  print('play');

  //! X cancela a stream
  await Future.delayed(Duration(seconds: 4));
  ouvirStream.cancel();
  print('cancela');

  print('main terminou');
}




Stream myStream(int interval, [int? maxCount]) async* {
  int i = 1;
  while (i != maxCount) {
    print('counting: $i');
    await Future.delayed(Duration(seconds: interval));
    yield i++;
  }
  print('stream terminada');
}
