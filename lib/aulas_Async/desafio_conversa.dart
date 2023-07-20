import 'dart:async';

void main(List<String> args) async {
  
  simularConversa().then((value) => print(value));
}

Future simularConversa() async {
  print('João: Bom dia, grupo!');
  await Future.delayed(Duration(seconds: 2));
  print('Mariana: Bom dia! Tudo bem?');
  await Future.delayed(Duration(seconds: 3));
  print('João: Suave, e vc?');
  await Future.delayed(Duration(seconds: 3));
  print('Mariana: Certinho.');

  return 'conversa finalizada';
}
