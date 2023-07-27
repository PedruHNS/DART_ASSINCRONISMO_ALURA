import 'dart:io';

import 'package:curso_5_dart_assincronismo/questions/good_manners.dart';
import 'package:curso_5_dart_assincronismo/questions/time_questions.dart';
import 'package:curso_5_dart_assincronismo/timing/waiting_time.dart';

void main() async {
  String kakoBot = 'BOTzin:\n';
  var a = true;
  String usuario = '';

  var stream = BotClock().streamClock(interval: 1, maxCount: 10);
  stream.listen((event) {
    print('                    bot ativo por $event s');
  }, onDone: () {
    print('bot será finalizado');
    a = false;
  });

  print('-- Iniciando BOTzin, aguarde..--');

  await BotClock().futureClock(2);

  print('BOTzin:\n Oi :) \n Como posso ajudar?');
  do {
    usuario = stdin.readLineSync().toString();
    print('-- Processando pergunta, aguarde..--');
    await BotClock().futureClock(3);
    if (usuario.contains('xau') ||
        usuario.contains('Xau') ||
        usuario.contains('Adeus') ||
        usuario.contains('adeus')) {
      a = false;
      print(kakoBot + ' Até a proxima!!');
    } else if (TimeQuestions(usuario).isThisTime()) {
      // verificar antes, assim não fazemos toda a função sem precisar.
      await BotClock().futureClock(2);
      TimeQuestions(usuario).timeQuestion();
    } else if (GoodManners(question: usuario).isThisManners()) {
      GoodManners(question: usuario).goodManners();
    } else {
      await BotClock().futureClock(3);
      print(kakoBot +
          ' Não fui treinado para responder a essa pergunta \n Desculpe :( ');
      print(kakoBot + ' Você pode fazer outra pergunta ou dizer Adeus');
    }
  } while (a);

  print('--Encerrando BOTzin--');
}
