// ignore_for_file: public_member_api_docs, sort_constructors_first
class GoodManners {
  String question;
  bool isThisGoodManners = false;
  String botZin = 'botZin\n';

  GoodManners({
    required this.question,
  });

  bool isThisManners() {
    if (question.contains('oi') ||
        question.contains('obrigado') ||
        question.contains('bom dia') ||
        question.contains('boa tarde') ||
        question.contains('boa noite')) {
      isThisGoodManners = true;
    }
    return isThisGoodManners;
  }

  goodManners() {
    if (question.contains('bom dia')) {
      print(botZin + 'boa dia, o dia está lindo?');
    } else if (question.contains('boa tarde')) {
      print(botZin + 'boa tarde, vai um cafezinho da tarde?');
    } else if (question.contains('boa noite')) {
      print(botZin + 'boa noite meu senhor, bom descanço');
    } else if (question.contains('oi')) {
      print(botZin + 'olá tudo bem?');
    } else if (question.contains('obrigado')) {
      print(botZin + 'de nada');
    } else {
      print(botZin + 'não entendi');
    }
  }
}
