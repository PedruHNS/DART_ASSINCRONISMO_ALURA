import 'dart:async';

void main() {
  //usamos o Future para buscar informações que demoram
  print('aqui não está na função async');
  print('~~~~~~~~~~~~~~~~~\n');

  //!abaixo temos uma maneira verbosa de escrever as exceções
//   myfutureFunc()
//       .then((value) => print(value))
//       .onError((e, s) => print('${e.runtimeType}\n erro no futuro'))
//       .whenComplete(() => print('aqui vai rodar independente do erro ou não'));

  minhaFuncaoFuturaErro(1, 2).then((value) => print(value));
}

Future<int> myfutureFunc() async {
  print('aqui esta no função async aguarde 5segundos');
  await Future.delayed(Duration(seconds: 5));
  print('função que demora pra retornar valor');
  //a linha abaixo serve para testar o o onError que serve para tratar erros futuros
  //throw Exception();
  return 12;
}

Future<int> minhaFuncaoFuturaErro(int a, int b) async {
  try {
    if (a > b) {
      throw Exception();
    }
    print('aqui esta no função async aguarde 5segundos');
    await Future.delayed(Duration(seconds: 5));
    print('função que demora pra retornar valor');

    return 50;
  } catch (e) {
    print(e);
  }
  return 42;
}
