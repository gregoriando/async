void main() {
  Map<String, int> idadePessoas = {
    'Lewis': 60,
    'Marnie': 50,
    'Gus': 45,
    'Pam': 45,
    'Emily': 30,
    'Sebastian': 27,
    'Abigail': 22,
    'Penny': 26,
    'Shane': 28,
    'Robin': 48,
    'Demetrius': 44,
    'Jas': 10,
    'Vincent': 7,
    'Evelyn': 75,
    'George': 75,
    'Caroline': 38,
    'Pierre': 40,
    'Alex': 21,
    'Harvey': 36,
    'Elliott': 34,
    'Leah': 31,
    'Sam': 20,
    'Maru': 24,
    'Willy': 45,
    'Linus': 55,
  };

  List<String> listaCinquenta =
      idadePessoas.entries
          .where((entry) => entry.value >= 50)
          .map((entry) => entry.key)
          .toList();
  int idadeMedia =
      idadePessoas.values.reduce((a, b) => a + b) ~/ idadePessoas.length;

  print(listaCinquenta);

  print(idadeMedia);
}
